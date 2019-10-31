
# Formulas
A common place to keep formulas

## Basic Stats

### Mean

$$ mean / average = \bar X =  \frac{(x_1 + x_2 + x_3 + .... + x_n)}{n} $$

$$ mean / average = \bar X =  \frac{1}{n} \sum_{i=1}^{n} x_i   $$

### Weighted Mean

$$ weighted \ mean = \bar X _w = \frac{\sum_{i=1}^{n} x_i  w_i}{\sum_{i=1}^{n} w_i}  $$

### Variance
$$  var = s^2 = \sigma^2 = \frac{1}{N} \sum_{i=1}^N (x_i - \mu)^2  $$

### Standard Deviation
$$  sd = \sigma = \sqrt{variance} =  \sqrt{\frac{1}{N} \sum_{i=1}^N (x_i - \mu)^2}  $$


### Co-variance

$$ mean(x) = \bar x = \frac{\sum_{i=1}^{n} x_i}{n} $$
$$ mean(y) = \bar y = \frac{\sum_{i=1}^{n} y_i}{n} $$
$$ cov(x,y) = \frac{\sum_{i=1}^{n} (x_i - \bar x) (y_i - \bar y)}{n}$$

### Scaling : Z-score

$$ z = {\frac{x - \mu}{\sigma}} $$

$$ \mu - mean    $$
$$ \sigma - std\ deviation $$

### Scaling : Min-Max

$$ z = {\frac{ x - min(x)}{max(x) - min(x)}}  $$

---

## Error / Loss Functions

### Sum of Squared Errors (SSE)
$$ SSE = \sum_{i=1}^{n}(y_i - \hat y_i)^2$$


### Mean Squared Error (MSE)
$$  MSE = \frac{1}{n} \sum_{i=1}^{n}(y_i - \hat y_i)^2  $$

### R2
$$   R^2 = 1- \frac{ \sum_{i=1}^{n}(y_i - \hat y_i)^2 }{\sum_{i=1}^{n}(y_i - \bar  y)^2 } $$

### Binary Class Entrophy
$$ E =-\frac{1}{n}\sum_{i=1}^{n}\big[y^{(i)}\log(\hat{y}^{(i)})+(1-y^{(i)})\log(1-\hat{y}^{(i)})\big]  $$

### Negative Logarithmic Likelihood

$$ E = -\frac{1}{n}\sum_{i=1}^{n}\log(\hat{y}^{(i)})  $$

### Poisson Loss Function

$$ E =\frac{1}{n}\sum_{i=1}^{n}\big(\hat{y}^{(i)}-y^{(i)}\cdot\log(\hat{y}^{(i)})\big) $$


### Cosine Similarity

$$ \mathbf{y} (actual) =\{y^{(1)},y^{(2)},\dots,y^{(n)}\}\in\mathbb{R}^{n} $$

$$ \mathbf{\hat{y}} (predicted)=\{\hat{y}^{(1)},\hat{y}^{(2)},\dots,\hat{y}^{(n)}\}\in\mathbb{R}^{n} $$

$$ E =-\frac{\mathbf{y}\cdot\mathbf{\hat{y}}}{||\mathbf{y}||_{2}\cdot||\mathbf{\hat{y}}||_{2}}=-\frac{\sum_{i=1}^{n}y^{(i)}\cdot\hat{y}^{(i)}}{\sqrt{\sum_{i=1}^{n}\big(y^{(i)}\big)^{2}}\centerdot\sqrt{\sum_{i=1}^{n}\big(\hat{y}^{(i)}\big)^{2}}} $$


### Hinge Loss / Max Margin Loss
for binary output

$$ E=\frac{1}{n}\sum_{i=1}^{n}\max(0,1-y^{(i)}\cdot\hat{y}^{(i)}) $$

For multi-class classifier

$$ E=\frac{1}{n}\sum_{i=1}^{n}\max(0,m-y^{(i)}\cdot\hat{y}^{(i)}) $$



---

## Machine Learning

### Logistic Regression / Sigmoid Equation


$$  \sigma(x) = \frac{1}{1 + e^{-x}}  $$

$$ log(odds) = ln (\frac{p}{1-p})  $$

$$ log(odds) = ln (\frac{p}{1-p}) = \beta_0 + \beta_1 * X_1 + \beta_2 * X_2 + ... + \beta_n * X_n  $$

### SVM

Linear SVM hyper plane

$$ \beta_0 + \beta_1 * X_1 +  \beta_2 * X_2 = 0   $$

$$ \beta_0 + \beta_1 * X_1 +  \beta_2 * X_2 ... + \beta_n * X_n = 0   $$

### Decision Trees


### KMeans Compute Expense

$$ O (n^{dk+1})  $$

$$ O (ndki) $$


# Deep Learning

### ???
$$
S\leftarrow S+\triangledown_{\theta}J\left(\theta\right)\otimes\triangledown_{\theta}J\left(\theta\right)

\theta\leftarrow \theta - \eta\triangledown_{\theta}J\left(\theta\right)\oslash\sqrt{s+\epsilon} $$

$$ S\leftarrow S+\triangledown_{\theta}J\left(\theta\right)\otimes\triangledown_{\theta}J\left(\theta\right) $$

$$ \theta\leftarrow \theta - \eta\triangledown_{\theta}J\left(\theta\right)\oslash\sqrt{s+\epsilon} $$

$$ w\leftarrow w\frac{r}{\parallel w \parallel_{2}}  $$



## XE Initialization

$$ \sigma=\sqrt{\frac{2}{n_{inputs}+n_{outputs}}} $$

$$ \sigma=\sqrt{\frac{2}{n_{inputs}+n_{outputs}}} $$

$$ r=\sqrt{3}/\sqrt{n_{inputs}} $$

$$ \sigma=1/\sqrt{n_{inputs}} $$
