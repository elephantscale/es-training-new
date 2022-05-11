# Autocomplete

---

## Autocoomplete types:

  * **Single Term Selection**

    - This method looks for the first letter, then the first word in a phrase, a search for "men's shirts" must begin with "m," then "men's," to bring up "men's shirts" as a response.

  * **Multiterm unordered suggestions**
    - This autocomplete method recognizes "shirts" as part of the phrase, like "men's shirts," and suggests it to the customer along with "women's shirts," "work shirts," and other phrases that contain "men's."

  * **Multiterm ordered suggestions**
    - The third method matches everything that contains a subphrase of the complete phrase as long as it's in the correct order, i.e. "men's shir," but not "shirts me."

---

## Type-ahead search 

 * Solr supports all three of these approaches via field type, which defines how data in a given field is interpreted and queried. 


 * Match as a suggest everything that starts exactly with the phrase 

 * If we have the "my little pony" phrase in our index, it should show when the user types:

   - "my"
   - my litt
   - my little po

 * However, prediction will not occur when the user types: 

   - little
   - little po

## Implementation
 * In this case, we need the search to take into account every phrase in our index, as well as every partial phrase the user types in as a single term, and use KeywordTokenizer for the suggestion field:

```xml
 <fieldType name="suggestion_text" class="solr.TextField" positionIncrementGap="100">
    <analyzer>
       <tokenizer class="solr.KeywordTokenizerFactory" />
    </analyzer>
 </fieldType> 
```

## Continued
 * We can use wildcards: 

   - `my little po*`

 * edge n-gram approach. 
    - It requires storing every prefix for a given phrase in the index. Let's take "my little pony," with this configuration as an example:

```xml
 <fieldType name="suggestion_text" class="solr.TextField" positionIncrementGap="100">
    <analyzer type="index">
       <tokenizer class="solr.KeywordTokenizerFactory"/>
       <filter class="solr.EdgeNGramFilterFactory" maxGramSize="100"/>
    </analyzer>
    <analyzer type="query">
       <tokenizer class="solr.KeywordTokenizerFactory" />
    </analyzer>
 </fieldType> 
```

## Acceptable Partial Search Phrases
  * Acceptable partial search phrases would be:
    - m
    - my
    - my l
    - my li
    - ....
    - my little po
    - ...

 * This approach has an obvious benefit in that a query that is powered with a larger index is not only simpler; but also performs faster, in general.

---

## Implementing multiterm unordered suggestions with Solr

 * In this case, assume that our requirement changed to:

 * Match as a suggestion everything that contains the user's phrase as a subphrase.

 The phrase, "my little pony" should now appear when the user types:
   - little
   - little pony
   - little my p
 * Whereas, prediction should not occur when the user types:

   -  my funny littl
   - funny littl

--- 

## Implementation

 * Setting up the query to behave in this way isn't hard:  it requires every phrase to be split in the index. The user's phrase also needs to be parsed into a set of words:

```xml
 <fieldType name="prefix_text" class="solr.TextField" positionIncrementGap="100">
    <analyzer type="index">
       <tokenizer class="solr.StandardTokenizerFactory" />
    </analyzer>
 ...
 </fieldType> 
```

...and search for: 

`my AND little AND po*`

 * The same edge n-gram technique mentioned above can be applied on a single-word basis, with prefixes for each individual word stored as well.

## Implementing multiterm ordered suggestions with Solr
 * In this this last case, our requirement now is:

 * Match as a suggestion everything that contains the user's phrase as a subphrase.

 * This means "my little pony" would appear when the user types:

   - little
   - little po
 * Whereas, prediction wouldn't occur in these cases:

   - little my p
   - my pony littl

 * One solution is to amend our first use case by adding a leading wildcard to the query:

   - `*my little po*`

The problem with applying this solution is that Solr will have to execute a full term scan to check for every term that is a possible match, rendering the query very slow. Additionally, the reverse wildcard technique shouldn't be applied to this use case because we have wildcards on both ends, making the query even slower.

## Another Way
 * Luckily, But we can go a different way by expanding Solr's functionality a bit.
 * First, we need to create word-based suffixes for phrases in the index. For "my little pony" they would be:

  - my little pony
  - little pony
  - pony

 * Solr doesn't have built-in features to generate this, but we can implement our own token filter:

```java
public final class SuffixShingleTokenFilter extends TokenFilter {
   private final CharTermAttribute termAtt = addAttribute(CharTermAttribute.class);
   private String[] tokens;
   private int index = 0;

   public SuffixShingleTokenFilter(TokenStream input) {
      super(input);
   }
```

---

## Code Continued

```java
   @Override
   public boolean incrementToken() throws IOException {
      while (true) {
         if (tokens == null) {
            if (!input.incrementToken()) {
               return false;
            } else {
               final CharTermAttribute attribute = input.getAttribute(CharTermAttribute.class);
               tokens = attribute.toString().split(" ");
            }
         }
         if (tokens.length - index > 0) {
            final String suffix = IntStream.range(index, tokens.length)
               .mapToObj(i -> tokens[i])
               .collect(Collectors.joining(" "));
            termAtt.copyBuffer(suffix.toCharArray(), 0, suffix.length());
            index += 1;
            return true;
         }
         tokens = null;
      }
   }
} 
```

---

## Result

 * Every element from the generated collection of prefixes will now be matched as a suggestion if and only if  "it starts identically to the user's phrase."  
 * By implementing our own token filter we can now apply both:
    - single term suggestions (prefix query) 
    - multiterm ordered suggestions (n-gram search) to achieve the desired functionality.
