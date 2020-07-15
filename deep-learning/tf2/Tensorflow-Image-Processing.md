# Advanced Image Processing With Tensorflow

<img src="../../assets/images/logos/tensorflow-logo-1.png" style="width:25%;"/>  <!-- {"left" : 5.88, "top" : 6.56, "height" : 1.23, "width" : 1.45} -->

---

## Objectives
* Learn image processing capabilities in Tensorflow

---

# Handling Image Datasets

---

## MNIST / Fashion-MNIST

* So far we have seen MNIST/FASHION-MNIST datasets

* They are very popular as 'hello world' examples

* And using them is very easy, as they are basically included with the frameworks

* See below how we can load MNIST data very easily

<!-- TODO shiva -->
```python
import tensorflow as tf

(train_images, train_labels), (test_images, test_labels) =
                tf.keras.datasets.mnist.load_data()  # <-- one liner
```

Notes:

---

## Handling Image Datasets

* Usually we will be working with image datasets that are
    - custom
    - and quite possibly large (100s of MB or Gigs)

* There are several modestly large datasets that are  publicly available; we will start with these
    - Cat-dog dataset : about 2500 images, 58 M size
    - Flowers dataset : 3,600 files, 230 M size
    - Horse or Human : 1,200 files, 150 M size


Notes:

---

## Image Folder Structure

* Here we see flowers dataset
* The data is split into **training** and **validation** sets
* The directory names are automatically inferred as **labels**  (e.g. : **`daisy, dandelion, roses, sunflowers, tulips`**)

```text

flowers/
├── training
│   ├── daisy
│   │   ├── daisy-1.jpg
│   │   ├── daisy-2.jpg
│   │   ├── daisy-3.jpg
│   ├── dandelion
│   │   ├── dandelion-1.jpg
│   │   ├── dandelion-2.jpg
│   ├── roses
│   ├── sunflowers
│   └── tulips
└── validation
    ├── daisy
    │   ├── daisy-11.jpg
    │   ├── daisy-12.jpg
    ├── dandelion
    │   ├── dandelion-11.jpg
    │   ├── dandelion-12.jpg
    ├── roses
    ├── sunflowers
    └── tulips

```

---

## Image Folder Structure

* Flowers dataset has total of 3,671 files, size of 230 M

* Training set has 3087 files,size of 201M

* Validation set has 583 files,size of 29 M


```text
./flowers : files= 3671 , size= 230M
./flowers/training : files= 3087 , size= 201M
./flowers/training/dandelion : files= 776 , size= 43M
./flowers/training/daisy : files= 533 , size= 30M
./flowers/training/tulips : files= 677 , size= 49M
./flowers/training/sunflowers : files= 588 , size= 48M
./flowers/training/roses : files= 513 , size= 33M
./flowers/validation : files= 583 , size= 29M
./flowers/validation/dandelion : files= 122 , size= 5.6M
./flowers/validation/daisy : files= 100 , size= 4.3M
./flowers/validation/tulips : files= 122 , size= 5.8M
./flowers/validation/sunflowers : files= 111 , size= 6.4M
./flowers/validation/roses : files= 128 , size= 6.5M
```

---

## Calculating Image Folder Sizes

* Here is a very handy shell script to calculate image directory sizes

```bash
#!/bin/bash
find . -type d -exec bash -c 'echo "{} : files=" `find "{}" -type f | wc -l`  ", \
    size=" `du -skh "{}" | cut -f 1`' \;


## Run this script ('dir-stats.sh') as follows
$   bash dir-stats.sh .

```



---

## Downloading Images

* Images are stored as compressed zip/tar archives
    - Easier to download than thousands of individual images

* Luckily `tf.keras.utils` has a handy method to download the files

* This utility will only download the files once, and will cache it locally

---
## Downloading Images

```python
import os
import tensorflow as tf

data_location = 'https://elephantscale-public.s3.amazonaws.com/data/images/cat-dog-redux.zip'

## This will only download the file once
## The zip file is saved as `~/.keras/datasets/cat-dog-redux.zip`
## And the zip archive is extracted
data_location_local = tf.keras.utils.get_file(fname=os.path.basename(data_location),
                                           origin=data_location, extract=True)

data_dir = os.path.join(os.path.dirname(data_location_local), 'cat-dog-redux')
# /home/ubuntu/.keras/datasets/cat-dog-redux

train_dir = os.path.join(data_dir, 'train')
# /home/ubuntu/.keras/datasets/cat-dog-redux/train

validation_dir = os.path.join(data_dir, 'val')
# /home/ubuntu/.keras/datasets/cat-dog-redux/val
```
---
## Lab: Working With Images

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->


* **Overview:**
    - Download and explore image datasets

* **Approximate run time:**
    - 20-30 mins

* **Instructions:**
    - Lab : **IMG-1:** Working with images


Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->


* Let's go over what we have covered so far

* Any questions?
