# PyTorch API

<img src="../../assets/images/logos/pytorch-logo-1.png" style="width:35%;"/>  <!-- {"left" : 5.88, "top" : 6.56, "height" : 1.23, "width" : 1.45} -->    &nbsp; &nbsp;

---

## Objectives

* Getting started with PyTorch API

---

# Tensors

---

## Tensors Intro

* Tensor is **multi dimensional array**

* Tensors are core to PyTorch

* [Numpy](https://numpy.org/) also implements efficient multi-dimensional arrays

* PyTorch tensor has some extra functionalities compared to Numpy
  - They can be operated on GPU
  - Also PyTorch keeps track of transformations done to tensors

<img src="../../assets/images/pytorch/tensors-2.png" style="width:65%;"/>  <!-- {"left" : 5.88, "top" : 6.56, "height" : 1.23, "width" : 1.45} -->    &nbsp; &nbsp;


Notes:

---

## Tensors vs Python List

* Python list is a collection of individual objects that are allocated in memory
  - Python will allocate an object for each number (called boxing)
  - Allocating millions will get very inefficient

* Tensors on the other hand are stored as contiguous blocks in memory
  -  This makes tensors very efficient to store and process

<img src="../../assets/images/pytorch/python-list-vs-tensor-1.png" style="width:50%;"/>  <!-- {"left" : 5.88, "top" : 6.56, "height" : 1.23, "width" : 1.45} -->    &nbsp; &nbsp;

Notes:

---

## PyTorch Tensors

* Creating tensors

```python
import torch

t1 = torch.tensor([1,2,3,4,5])
print (t1)
# tensor([1, 2, 3, 4, 5])

print (t1.shape))  # find overall shape
# torch.Size([5])

print (t1[3])  # accessing elements
# tensor(4)
```

* Zeros / Ones / Random tensors

```python
import torch

zeros = torch.zeros(5)
print(zeros)
#  tensor([0., 0., 0., 0., 0.])

ones = torch.ones(5)
print (ones)
# tensor([1., 1., 1., 1., 1.])

rand = torch.rand(5)
print (rand)
# tensor([0.8583, 0.9562, 0.9140, 0.5607, 0.8529])
```

---

## PyTorch Tensors

```python
## multi dimensional

import torch
t1 = torch.tensor([[1,2,3], [4,5,6]])
print (t1)
# tensor([[1, 2, 3],
#         [4, 5, 6]])

# ~~~~~~~

print (t1.shape)
# torch.Size([2, 3])

t2 = torch.tensor(range(0,10)).reshape([2,5])
print(t2)
# tensor([[0, 1, 2, 3, 4],
#         [5, 6, 7, 8, 9]])

print(t2.shape)
# torch.Size([2, 5])

print (t2[1,2])  # accessing elements
# tensor(7)

```

---

## Indexing Tensors

```python
import torch

t1 = torch.tensor(range(0,10))
print (t1)
# tensor([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])

print (t1 [0:4])
# tensor([0, 1, 2, 3])

print (t1[5:])
# tensor([5, 6, 7, 8, 9]))

print (t1[:3])
# tensor([0, 1, 2])

print (t1[:-1]) # index from last
# ensor([0, 1, 2, 3, 4, 5, 6, 7, 8]))
```

---

## Tensor Types

* Default type for integers is **int64** or **long**
* Default type for floating numbers is **float32**
  - Typically using a higher precision floating point like **double** will not produce significantly more accurate results
* We can also specify tensor types, see below

```python
import torch

## integers
a = torch.tensor([1,2,3,4,5])
print (a.dtype)
# torch.int64

## short ints
b = torch.tensor([1,2,3,4,5], dtype=torch.short)
print (b.dtype)
# torch.int16

## floats
c = torch.tensor( [1.1, 2.2, 3.3])
print (c.dtype)
# torch.float32

## conversion
d = torch.zeros(10).to(torch.double)
print(d)
# tensor([0., 0., 0., 0., 0., 0., 0., 0., 0., 0.], dtype=torch.float64)
```

---

## PyTorch Tensor Types

| Type          | Alias        | Description                             |
|---------------|--------------|-----------------------------------------|
| torch.float32 | torch.float  | 32-bit floating-point                   |
| torch.float64 | torch.double | 64-bit, double-precision floating-point |
| torch.float16 | torch.half   | 16-bit, half-precision floating-point   |
| torch.int8    |              | signed 8-bit integers                   |
| torch.uint8   |              | unsigned 8-bit integers                 |
| torch.int16   | torch.short  | signed 16-bit integers                  |
| torch.int32   | torch.int    | signed 32-bit integers                  |
| torch.int64   | torch.long   | signed 64-bit integers                  |
| torch.bool    |              | Boolean                                 |

---

## Tensor Storage and Views

<img src="../../assets/images/pytorch/pytorch-storage-views-1.png" style="width:50%;float:right;"/>  <!-- {"left" : 5.88, "top" : 6.56, "height" : 1.23, "width" : 1.45} -->    &nbsp; &nbsp;

* Tensor values are stored in memory pool as contiguous chunk of memory
  - This is done by **`torch.storage`** class
  - This is one-dimensional array of numbers of any type (int or float)

* The storage can be shared by tensors
  - These are called **views**
  - They can index the data differently


---

## Tensor Storage and Views

<img src="../../assets/images/pytorch/pytorch-storage-views-1.png" style="width:50%;float:right;"/>  <!-- {"left" : 5.88, "top" : 6.56, "height" : 1.23, "width" : 1.45} -->    &nbsp; &nbsp;

```python
import torch

a = torch.tensor(range(0,10))
print(a)
# tensor([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])

## Another tensor
b = a.reshape(2,5)
print (b)
# tensor([[0, 1, 2, 3, 4],
#         [5, 6, 7, 8, 9]])

## modify a, it affects both
a[3] = -3
print (a)
# tensor([ 0,  1,  2, -3,  4,  5,  6,  7,  8,  9])

print (b)
# tensor([[ 0,  1,  2, -3,  4],
#         [ 5,  6,  7,  8,  9]])

## zero out a
a.zero_() # underscore means, in place modifier
print (a)
# tensor([0, 0, 0, 0, 0, 0, 0, 0, 0, 0])

print (b)
# tensor([[0, 0, 0, 0, 0],
#         [0, 0, 0, 0, 0]])
```

---

## PyTorch and GPU

```python
# setting device on GPU if available, else CPU
device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
print('Using device:', device)
print()

#Additional Info when using cuda
if device.type == 'cuda':
    print(torch.cuda.get_device_name(0))
    print('  Memory Usage:')
    print('  Allocated:', round(torch.cuda.memory_allocated(0)/1024**3,1), 'GB')
    print('Cached:   ', round(torch.cuda.memory_reserved(0)/1024**3,1), 'GB')
```

```text
Using device: cuda

GeForce RTX 2070
Memory Usage:
  Allocated: 0.0 GB
  Cached:    0.0 GB
```

---

## Tensor Operations on GPU


```python
import torch
print ('GPU available? : ', torch.cuda.is_available())
# GPU available? :  True

## CPU Tensor
t_cpu = torch.tensor(range(0,10))
print ('device :', t_cpu.device)
print ('is_cuda? :', t_cpu.is_cuda)
# device : cpu
# is_cuda? : False

## GPU tensor
## Creating a tensor on GPU
print ('GPU memory allocated before : ', torch.cuda.memory_allocated(0))
t_gpu = torch.tensor(range(0,10), device='cuda')
print ('device :', t_gpu.device)
print ('is_cuda? :', t_gpu.is_cuda)
print ('GPU memory allocated after : ', torch.cuda.memory_allocated(0))
# GPU memory allocated before :  0
# device : cuda:0
# is_cuda? : True
# GPU memory allocated after :  512


## copying a tensor from CPU --> GPU
print ('GPU memory allocated before : ', torch.cuda.memory_allocated(0))
t_gpu2 = t_cpu.cuda()
print ('device :', t_gpu2.device)
print ('is_cuda? :', t_gpu.is_cuda)
print ('GPU memory allocated after : ', torch.cuda.memory_allocated(0)))
# GPU memory allocated before :  512
# device : cuda:0
# is_cuda? : True
# GPU memory allocated after :  1024
```

---

## Lab: Tensor Operations in PyTorch

<img src="../../assets/images/icons/individual-labs.png" style="width:25%;float:right;"/><!-- {"left" : 6.76, "top" : 0.88, "height" : 4.37, "width" : 3.28} -->

* **Overview:**
  - Work with tensors

* **Approximate run time:**
  - 20-30 mins

* **Instructions:**
  - **PYTORCH-2** : Tensor operations

Notes:

---

## Review and Q&A

<img src="../../assets/images/icons/q-and-a-1.png" style="width:20%;float:right;" /><!-- {"left" : 8.56, "top" : 1.21, "height" : 1.15, "width" : 1.55} -->
<img src="../../assets/images/icons/quiz-icon.png" style="width:40%;float:right;clear:both;" /><!-- {"left" : 6.53, "top" : 2.66, "height" : 2.52, "width" : 3.79} -->

* Let's go over what we have covered so far

* Any questions?
