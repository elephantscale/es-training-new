
## Document Term Matrix (DTM)


 * DTM is a matrix - describes how terms appear in documents

 * Rows correspond to documents

 * Columns correspond to terms

 * It will be a  **sparse**  matrix (not all terms occur on all documents)

     - Libraries need to represent sparse matrix in memory-efficient manner

| Terms -><br/><- documents | brown | dog | black | cat |
|---------------------------|-------|-----|-------|-----|
| doc1 | x | x |  |  |
| doc2 |  |  | x | x |

<!-- {"left" : 0.25, "top" : 4.63, "height" : 1.69, "width" : 9.75} -->

Notes:



---

## Term Document Matrix (TDM)


 * TDM is transposed DTM

 * Rows correspond to terms

 * Columns correspond to documents

| Documents -><br/><- Terms | doc1 | doc2 | doc3 |
|---------------------------|------|------|------|
| brown | x |  |  |
| dog | x |  |  |
| black |  | x |  |
| cat |  | x |  |

<!-- {"left" : 0.25, "top" : 3.52, "height" : 2.69, "width" : 9.75} -->

Notes:



---
## Word2vec History

* "Linguistic Regularities in Continuous Space Word Representations", MS, 2013
  - Tomas Mikolov
  - Wen-tau Yih
  - Geoffrey Zweig
* Using RNN

* This model famously figured out the equation  
**King - Man + Woman = Queen**

---