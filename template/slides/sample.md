# Title : Template Slide

---

## Bullets compact

- bullet 1
- bullet 2
   - sub bullet

md

```md
- bullet 1
- bullet 2
   - sub bullet
```

---

## Bullets spaced

- bullet 1

- bullet 2
   - sub bullet

md
```md
- bullet 1

- bullet 2
   - sub bullet
```
---

## Headings

### 3 hash heading

#### 4 hash heading

md
```md
### 3 hash heading

#### 4 hash heading
```

---

## Quotes


> "One small step for man, One giant leap for mankind"  
>  Neal Armstrong


md
```md
> "One small step for man, One giant leap for mankind"  
>     - Neal Armstrong

```

---

## Bold / Italic

- **bold** text
- *italic* text
- _italic_ text
- **_bold and italic_** text

md
```md
- **bold** text
- *italic* text
- _italic_ text
- **_bold and italic_** text

```
---

## Code

```python
print("hello world")
```

```
some random code snippet
```

---
## Links

[ElephantScale.com](https://elephantscale.com)

md
```md
[ElephantScale.com](https://elephantscale.com)
```

---
## Tables

Use [Markdown table generator](https://www.tablesgenerator.com/markdown_tables)

|               | Sujee        | Mark        |
|---------------|--------------|-------------|
| Lives         | Milpitas, CA | Houston, TX |
| Favorite Food | Thai         | Pizza       |
---

## Images - Simple Layout

- Here is a sunflower

<img src="../../assets/images/template/sunflowers-1.jpg" style="width:50%;" />

md
```md
<img src="../../assets/images/template/sunflowers-1.jpg" style="width:50%;" />
```

---

## Images - Align to right

<img src="../../assets/images/template/sunflowers-1.jpg" style="width:30%;float:right;" />

- Here is a sunflower
- aligned right using `float:right`

<br clear="all"/>
md
```md
<img src="../../assets/images/template/sunflowers-1.jpg" style="width:50%;float:right;" />

- Here is a sunflower
- isn't this pretty?
```
---

## Images - side by side

<img src="../../assets/images/template/flower-2.jpeg" style="width:20%;" />
<img src="../../assets/images/template/flower-rose-1.jpg" style="width:20%;" />

md
```md
<img src="../../assets/images/template/flower-2.jpeg" style="width:20%;" />
<img src="../../assets/images/template/flower-rose-1.jpg" style="width:20%;" />
```
---

## Images - Right aligned and stacked

<img src="../../assets/images/template/flower-2.jpeg" style="width:10%;float:right;" />
<img src="../../assets/images/template/flower-rose-1.jpg" style="width:10%;float:right;clear:both;" />

- here we have two flower images
- they are right alighned
- also stacked
- we used `float:right` and `clear:both` tags

<br clear="all"/>

md
```md
<img src="../../assets/images/template/flower-2.jpeg" style="width:10%;float:right;" />
<img src="../../assets/images/template/flower-rose-1.jpg" style="width:10%;float:right;clear:both;" />
```

---

## Include Other md
[sample-include.md](sample-include.md)
