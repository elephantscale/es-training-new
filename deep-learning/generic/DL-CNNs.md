# Convolutional Neural Networks (CNN)

---

# Image Recognition

---

## Image Recognition is a Challenging Problem

<img src="../../assets/images/deep-learning/3rd-party/Image-Classification.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;" width="30%"/> <!-- {"left" : 5.67, "top" : 1.72, "height" : 3.26, "width" : 4.2} -->


 * [IBM's Deep Blue supercomputer](https://en.wikipedia.org/wiki/Deep_Blue_(chess_computer)) beat the chess world champion Garry Kasparov back in 1996
 
 * But not until recently (2010) or so, computers were unable to recognize a cat or a dog from an image
 
 * Human brains can do image recognition quite 'effortlessly'
 
 * How ever for computers this is hard
    - Large number of features
    - Features can vary considerably
    - Large Images especially difficult

Notes: 
- https://en.wikipedia.org/wiki/Deep_Blue_(chess_computer)
- https://www.ibm.com/ibm/history/ibm100/us/en/icons/deepblue/
   
---

# Dealing With Images

---
## Representing Images 

- Images can be represented as a 2D array

- Here is a 5x5 (5 pixels wide, 5 pixels high) image

- for black and white images:
    - black = 0
    - white = 1

<img src="../../assets/images/deep-learning/pixel-representation-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="40%" /><!-- {"left" : 1.63, "top" : 4.18, "height" : 3.21, "width" : 6.99} -->


---

## Greyscale Images

- Pixels are represented as numbers ranging from 0 - 255
    - 0: black
    - 255: white
    - in between: grey

<img src="../../assets/images/deep-learning/pixel-representation-02.png" alt="XXX image missing" style="background:white;max-width:100%;" width="70%" /><!-- {"left" : 0.9, "top" : 3.56, "height" : 4.3, "width" : 8.44} -->


---

## Color Images

- In color images, each pixel has colors
    - These are represented as RGB (Red, Green, Blue) colors
    
- Each RGB values are represented as numbers ranging 0-255


<img src="../../assets/images/deep-learning/pixel-representation-4.png" alt="XXX image missing" style="background:white;max-width:100%;" width="80%" /><!-- {"left" : 0.75, "top" : 4.24, "height" : 2.39, "width" : 8.75} -->


---

## Color Images

- Each pixel has 3 'channels' (RGB)

- Color images can be represented as 3D array

<img src="../../assets/images/deep-learning/pixel-representation-5.png" alt="XXX image missing" style="background:white;max-width:100%;" width="70%" /><!-- {"left" : 1.55, "top" : 3.06, "height" : 4.9, "width" : 7.16} -->


---

## Channels in Images

- Images could contain more channels than usual RGB
    - For example, satellite images might have infrared spectrum
    
- Here is an example of Hubble image taken using multiple cameras in multiple wave lengths, combined together

<img src="../../assets/images/deep-learning/3rd-party/hubble-image-1.jpg" alt="XXX image missing" style="background:white;max-width:100%;" width="40%" /><!-- {"left" : 2.69, "top" : 3.73, "height" : 3.66, "width" : 4.88} -->


Notes:  
source : https://photographingspace.com/ap-color/

---

# Image Analysis Using Neural Networks

---
## Fully Connected Network's Limitations

- Assume we are analyzing a 200px by 200px image 
    - Image has 40,000 (200x200) pixels

- If we connect each neuron on second layer to a neuron in the first layer, each neuron will have 40,000 connections

<img src="../../assets/images/deep-learning/fully-connected-2b.png" alt="XXX image missing" style="background:white;max-width:100%;" width="30%"/><!-- {"left" : 3.22, "top" : 3.87, "height" : 3.65, "width" : 3.81} -->


---

## Fully Connected Network's Limitations

<img src="../../assets/images/deep-learning/fully-connected-2c.png" alt="XXX image missing" style="background:white;max-width:100%;" width="30%"/><!-- {"left" : 1.88, "top" : 4.92, "height" : 2.59, "width" : 2.93} --> &nbsp; &nbsp; <img src="../../assets/images/deep-learning/fully-connected-2d.png" alt="XXX image missing" style="background:white;max-width:100%;" width="30%"/><!-- {"left" : 5.44, "top" : 4.92, "height" : 2.59, "width" : 2.93} --> 


- The second layer will have  
    - 40,000 connections per pixels x (200 px x 200 px) = 1.6 billion connections
    - 10 layers ==>  16 billion connections

- That is way too many connections


---

## Famous 'Cat Experiment'

* David H. Hubel and Torsten Wiesel performed experiments on cats (1958/1959) that gave us crucial understanding of brain's visual cortex.  ([paper](https://physoc.onlinelibrary.wiley.com/doi/pdf/10.1113/jphysiol.1959.sp006308))

* They hooked up electrodes to a cat's brain (cat is sedated of course!)

* Showed different shapes (dots / lines ..etc) and looked for 'neurons firing'

* But they couldn't get neurons to fire!

* Until they accidentally dragged the shape  across the screen,  then neurons fired!
 
* Authors won the Nobel Prize in Physiology or Medicine in 1981 for their work!

<img src="../../assets/images/deep-learning/3rd-party/cat-visaul-cortex-1.jpeg" alt="XXX image missing" style="background:white;max-width:100%;" width="30%"/><!-- {"left" : 3.81, "top" : 6.33, "height" : 2.25, "width" : 3.41} --> 



Notes:  
- https://www.princeton.edu/~cggross/Hubel.pdf
- https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2718241/

---

## Visual Cortex is Hierarchical

* First level neurons detect simple shapes

* Next level neurons detect more complex shapes, and so on

<img src="../../assets/images/deep-learning/3rd-party/cat-visaul-cortex-2.jpeg" alt="XXX image missing" style="background:white;max-width:100%;" /><!-- {"left" : 2.69, "top" : 2.57, "height" : 1.61, "width" : 4.87} --> 

<img src="../../assets/images/deep-learning/3rd-party/hubel-experiment-video.png" alt="XXX image missing" style="background:white;max-width:100%;" width="50%"/><!-- {"left" : 2.5, "top" : 4.76, "height" : 2.71, "width" : 5.25} --> 


[Link to video](https://www.youtube.com/watch?v=IOHayh06LJ4)

---

## Hierarchical Visual Cortex

- Our brain's visual system works hierarchically to perceive images 

- Some neurons only recognize horizontal lines, some only slanted lines

- Higher level neurons can 'build on' the work done by other neurons

<img src="../../assets/images/deep-learning/visual-cortex-hiearchical-1.png" alt="XXX image missing" style="background:white;max-width:100%;" /><!-- {"left" : 0.41, "top" : 4.98, "height" : 2.25, "width" : 9.43} --> 



---

# Convolutions

---
## A Little History: Yann LeCun

  * Yann LeCun was working on the problem of recognizing digits: MNIST
    - Recognize zip codes in letters for US Postal Service
    - Recognize digits in bank checks
  
  * Classical MLP networks were unable to get very high accuracy on the problem.
    - 96,97% was the best such networks could do.
    - LeCun proposed a new architecture that could be over 99% better.
    - The difference between 96% and 99+% is a big deal!
    
---
## A Little History: Yann LeCun

  * LeCun's new architecture is called LeNet ([1998 paper](http://yann.lecun.com/exdb/publis/pdf/lecun-01a.pdf))
    - Named after himself!
    - LeNet became the basis of a transfer learning architecture (we will discuss later)
    
  * Lecun's architecture had 2 new elements 
    - Convolutional layer
    - Pooling layer

Notes:  
[1998 paper by Yann LeCun](http://yann.lecun.com/exdb/publis/pdf/lecun-01a.pdf)


---


## Convolution


 * Imagine a small patch being slid across the input image. This sliding is called  **convolving** .

 * It is similar to a flashlight moving from the top left end progressively scanning the entire image. This patch is called the  **filter/kernel** . The area under the filter is the receptive field.

<img src="../../assets/images/deep-learning/3rd-party/CNN-Process-of-Convolution-1.png" alt="XXX image missing" style="background:white;max-width:40%;" /><!-- {"left" : 3.27, "top" : 4.11, "height" : 3.71, "width" : 3.71} --> 
 

---

##  Convolution

 * The idea is to detect local features in a smaller section of the input space, section by section to eventually cover the entire image.

 * In other words, the CNN layer neurons depends only on nearby neurons from the previous layer. This has the impact of discovering the features in a certain limited area of the input feature map.

Notes: 
---
## Fully Connected vs Convolutional

<img src="../../assets/images/deep-learning/fully-connected-1a.png" alt="XXX image missing" style="background:white;width:30%;"/><!-- {"left" : 3.53, "top" : 1.61, "height" : 3.15, "width" : 3.18} --> 

<img src="../../assets/images/deep-learning/Convolutional-1.png" alt="XXX image missing" style="background:white;max-width:20%;" /> <!-- {"left" : 0.48, "top" : 5.45, "height" : 1.85, "width" : 1.91} --> &nbsp; &nbsp; <img src="../../assets/images/deep-learning/Convolutional-2.png" alt="XXX image missing" style="background:white;max-width:20%;" /> <!-- {"left" : 2.98, "top" : 5.45, "height" : 1.85, "width" : 1.8} --> &nbsp; &nbsp; <img src="../../assets/images/deep-learning/Convolutional-3.png" alt="XXX image missing" style="background:white;max-width:20%;" /> <!-- {"left" : 5.49, "top" : 5.45, "height" : 1.85, "width" : 1.79} --> &nbsp; &nbsp; <img src="../../assets/images/deep-learning/Convolutional-4.png" alt="XXX image missing" style="background:white;max-width:20%;" /><!-- {"left" : 7.98, "top" : 5.45, "height" : 1.85, "width" : 1.79} -->


Notes: 

---
## Convolutions

 * Images have too many features for a network to learn.

 * Convolutions are a standard way that we do image processing
 
 * Convolutional Layers help to extract higher-level features
  
 * Convolution is the process of adding each element of the image to its local neighbors, weighted by the kernel
  
    - It means we take a nxn *filter* and apply that to the image
    
 * Different filters do different things:
    - Edge Detection filters
    - Sharpening Filters
    - Gaussian blur

Notes:
https://en.wikipedia.org/wiki/Kernel_(image_processing)

---

## Process of Convolution


 * Assume the filter/kernel is a weight matrix "wk". For example, let's assume a 3X3 weighted matrix.

|   |   |   |
|---|---|---|
| 0 | 1 | 1 |
| 1 | 0 | 0 |
| 1 | 0 | 1 |

<!-- {"left" : 3.62, "top" : 2.75, "height" : 1.59, "width" : 3, "columnwidth" : [1, 1, 1]} -->


---

## Process of Convolution

 * The weight matrix is a filter to extract some particular features from the original image. It could be for  extracting curves, identifying a specific color, or recognizing a particular voice.
 * Assume the input to be 6X6

|    |    |     |    |    |     |
|----|----|-----|----|----|-----|
| 81 | 2  | 209 | 44 | 71 | 58  |
| 24 | 56 | 108 | 98 | 12 | 112 |
| 91 | 0  | 189 | 65 | 79 | 232 |
| 12 | 0  | 0   | 5  | 1  | 71  |
| 2  | 32 | 23  | 58 | 8  | 208 |
| 4  | 23 | 2   | 1  | 3  | 9   |

<!-- {"left" : 2.28, "top" : 3.93, "height" : 2.78, "width" : 6, "columnwidth" : [1, 1, 1, 1, 1, 1]} -->


Notes: 




---

## Process of Convolution (Contd.)


 * As the filter/kernel is slided across the input layer, the convolved layer is obtained by adding the values obtained by element wise multiplication of the weight matrix.
 *  **Input layer**          /            **Filter** 

|        |        | Input   | Layer |    |     |
|--------|--------|---------|-------|----|-----|
| **81** | **2**  | **209** | 44    | 71 | 58  |
| **24** | **56** | **108** | 98    | 12 | 112 |
| **91** | **0**  | **189** | 65    | 79 | 232 |
|   12   |   0    |   0     | 5     | 1  | 71  |
|   2    |   32   |   23    | 58    | 8  | 208 |
|   4    |   23   |   2     | 1     | 3  | 9   |

<!-- {"left" : 0.73, "top" : 3.85, "height" : 2.8, "width" : 5.46} -->


|   | Filter |   |
|---|--------|---|
| 0 | 1      | 1 |
| 1 | 0      | 0 |
| 1 | 0      | 1 |

<!-- {"left" : 6.67, "top" : 3.85, "height" : 1.6, "width" : 2.28} -->

---

## Weighted Matrix


 *  **(Weighted matrix)** 

|     |   |   |   |
|-----|---|---|---|
| 515 | 0 | 0 | 0 |
| 0   | 0 | 0 | 0 |
| 0   | 0 | 0 | 0 |

<!-- {"left" : 0.25, "top" : 1.77, "height" : 2, "width" : 9.75} -->

 * For example, when the weighted matrix starts from the top left corner of the input layer, the output value is calculated as:

 * (81x0+2x1+209x1)+(24x1+56x0+108X0)+(91x1+0x0+189x1) = 515

Notes: 




---

## Process of Convolution (Contd.)


 * The filter then moves by 1 pixel to the next receptive field and the process is repeated. The output layer obtained after the filter slides over the entire image would be a 4X4 matrix.
 * This is called an  **activation map/ feature map** .
 *  **Input layer**           /              **Filter**

|    |        | Input   | Layer  |    |     |
|----|--------|---------|--------|----|-----|
| 81 | **2**  | **209** | **44** | 71 | 58  |
| 24 | **56** | **108** | **98** | 12 | 112 |
| 91 | **0**  | **189** | **65** | 79 | 232 |
| 12 |   0    |   0     |   5    | 1  | 71  |
| 2  |   32   |   23    |   58   | 8  | 208 |
| 4  |   23   |   2     |   1    | 3  | 9   |

<!-- {"left" : 1.02, "top" : 4.17, "height" : 2.8, "width" : 5.46} -->



|   | Filter |   |
|---|--------|---|
| 0 | 1      | 1 |
| 1 | 0      | 0 |
| 1 | 0      | 1 |

<!-- {"left" : 6.96, "top" : 4.17, "height" : 1.6, "width" : 2.28} -->

---

## Output


 *  **Output** 

|     |     |   |   |
|-----|-----|---|---|
| 515 | 374 | 0 | 0 |
| 0   | 0   | 0 | 0 |
| 0   | 0   | 0 | 0 |

<!-- {"left" : 2.39, "top" : 1.81, "height" : 1.62, "width" : 5.47} -->

 *  **(Activation/Feature Map)** 

 * The distance between two consecutive receptive fields is called the  **stride** .

 * In this example stride is 1 since the receptive field was moved by 1 pixel at a time.

Notes: 



---

## Convolutional Layer

- Here we represent our neurons in a 2D grid format (instead of linear before), this makes visualizing connections easier 

- Neurons in the convolutional layer are NOT connected to every single neuron in the layer before 

- Instead each neuron is connected to a few pixels/neurons in their **receptive field**

- This allows the first convolutional layer to concentrate on low level features

- Next layers assemble inputs from previous layers into higher level features

- See next slides for examples

---
## Convolutional Layer : Local Receptive Field

- Here each neuron connects to neurons in its input / perceptive field

<img src="../../assets/images/deep-learning/convolutional-layers-1.png" alt="XXX image missing" style="background:white;max-width:100%;width:70%;" /><!-- {"left" : 1.48, "top" : 2.86, "height" : 3.92, "width" : 7.29} -->
   

---
## Example of Convolutions 

<img src="../../assets/images/deep-learning/CNN-elephant.png" alt="XXX image missing" style="background:white;max-width:100%;" /> <!-- {"left" : 0.49, "top" : 2.38, "height" : 4.3, "width" : 9.27} -->


---

## Convolution Example


 * The image shows two kernels - vertical and horizontal filters. Each is a 5x5 matrix with all 0s, except 1 in vertical line for vertical filter and 1 in horizontal line in horizontal filter.

<img src="../../assets/images/deep-learning/3rd-party/CNN-Convolutional-Layer-Contd--1.png" alt="XXX image missing" style="background:white;max-width:100%;" /> <!-- {"left" : 1.48, "top" : 3.14, "height" : 4.61, "width" : 7.29} -->




Notes: 




---

## Convolution Example (Contd.)


 * The effect of multiplying with vertical kernel filter is that all pixels except the vertical lines get subdued. Similarly with horizontal kernel filter, it accentuates the horizontal lines. 

 * The output image has a feature map, which highlights the areas in the image that are most similar to the filter.

<img src="../../assets/images/deep-learning/3rd-party/CNN-Convolutional-Layer-Contd--1.png" alt="CNN-Convolutional-Layer-Contd--1.png" style="width:40%;" /> <!-- {"left" : 2.32, "top" : 4.06, "height" : 3.55, "width" : 5.61} -->


Notes: 

---
## Example of Convolutions 

<img src="../../assets/images/machine-learning/3rd-party/Face-Recognition.png" alt="XXX image missing" style="background:white;max-width:100%;float:right;width:35%;" /> <!-- {"left" : 5.86, "top" : 1.61, "height" : 5.41, "width" : 4.09} -->

- Each layer builds on previous layer's work 

- First layer detects simple shapes - horizontal lines, slanted lines ..etc 

- Second layer recognizes more complex features: eyes / nose ..etc 

- Third layer recognizes faces

---

# Filters 

---

## Pre-Processing Images 

 <img src="../../assets/images/generic/3rd-party/fox-1.jpg" alt="XXX image missing" style="background:white;max-width:100%;float:right;width:40%;" /> <!-- {"left" : 5.99, "top" : 1.25, "height" : 2.63, "width" : 3.96} -->
 
  * Image processing is a standard task for machine learning
  
  * Before we load the images, we can use Photoshop, OpenCV to "clean up" the image
    - remove noise
    - find edges
    - etc
    
  * Even now, this is a common task to help get better results.
  
  * This is  *feature engineering*
  
  (Example image, with background blurred)
  

---
## Image Filter Examples 

- Some sample filters 
    - Blur filter 
    - Sharpen filter 
    - Edge detection filter
    
<img src="../../assets/images/deep-learning/filters-all2.png" alt="XXX image missing" style="max-width:100%;width:60%;" /><!-- {"left" : 2.28, "top" : 3.55, "height" : 3.84, "width" : 5.69} -->


---


## Problems with Image Pre-Processing 

  * How do we *know* that one filter will help us
    - Takes a lot of experience!
    - In some cases it might **hurt** rather than help.
    
  * Lots of trial and error!
  
  * What if...
    - Maybe there was a way we could find a filter that gives us better results for sure.
    - Could we automate finding the perfect filter?
    - Maybe if we used more than one filter?


---

## Filters  / Kernels

- CNNs use filters to detect patterns in images

- Imagine the filter like a flashlight shining on the image

- As 'the flashlight'  'moves' along the image, it 'convolves' the image
    - Output from a filter is called 'feature map'

- CNN learns filters during training phase

<img src="../../assets/images/deep-learning/CNN-filter-1.png" alt="XXX image missing" style="background:white;max-width:100%;width:30%;" /><!-- {"left" : 2.95, "top" : 4.04, "height" : 4.02, "width" : 4.35} -->
   


Notes:  
- https://www.saama.com/blog/different-kinds-convolutional-filters/

---


## Local Connectivity

  * Only neurons within the nxn square are connected!
  * Reduces need for fully connected neurons.
  * Depth (in this case 5) is the number of filters used.

<img src="../../assets/images/deep-learning/depthcol.png" alt="XXX image missing" style="background:white;max-width:100%;width:30%;" />
Notes: 


---

## Convolution Parameters

  * Three Hyperparameters control the convolution:

    - **Depth:** The number of filters, and the number of neurons per convolution

    - **Stride:** Usually 1 or 2: the number of pixels we "jump" when applying the filter.

    - **Zero Padding:** Creates a "frame" of zero (black) pixels around the border of image.

  * Stride > 1 will reduce dimensions

    - Allows us to both do convolution and reduce dimensions in one step

    - Usually, we use pooling layers for reducing dimensions.


---



## Zero Padding 

- It is common to add zeros around the image 

- Called 'zero padding'

<img src="../../assets/images/deep-learning/CNN-Zero-Padding-1.png" alt="XXX image missing" style="background:white;max-width:100%;width:60%;" /> <!-- {"left" : 2.38, "top" : 2.78, "height" : 4.09, "width" : 5.49} -->
  

---


## Zero Padding

 * Assumptions
   - Output image is `32 x 32 x 3`
   - Filter size is `5 x 5 x 3`
 * To achieve the **same** size:
   - You need padding of ` (K - 1) / 2`
   - In this case `(5 - 1) / 2 = 2`
 * We pad a "frame" around the image
   - black pixels
   - size 2
   - Image is then `36 x 36 x 3`
 * Output Size:
   - `O = ((W - K - 2P) / S) + 1`

Notes: 

---

## Stacking Feature Maps

* Convolutions are a series of filters
* In convolution layer, feature maps are 'stacked' forming a 3D structure
* Each filter creates a new volume slice
* Typically have more than one slice

<img src="../../assets/images/deep-learning/CNN.png" alt="XXX image missing" style="background:white;max-width:100%;width:100%;" /> <!-- {"left" : 0.71, "top" : 4.36, "height" : 2.99, "width" : 8.83} -->




---

## Stacking Feature Maps 


<img src="../../assets/images/deep-learning/CNN-feature-maps-1.png" alt="XXX image missing" style="background:white;max-width:80%;" />  <!-- {"left" : 1.02, "top" : 1.85, "height" : 5.36, "width" : 8.21} -->


---

## Stacking Multiple Feature Maps

<img src="../../assets/images/deep-learning/CNN-feature-maps-1.png" alt="XXX image missing" style="background:white;max-width:40%;float:right;" />  <!-- {"left" : 6.03, "top" : 1.72, "height" : 2.64, "width" : 4.02} -->

 * A single feature map has same parameters as a single kernel has the same weights/parameters as it moves across the image; however, different feature maps can have different parameters (weights + biases).

 * The receptive field of previous layer extends across all of its feature maps.

 * In summary, a convolutional layer applies multiple filters to the input image, making it capable of detecting multiple features in the input.


Notes: 




---

## Stacking Multiple Feature Maps (Contd.)


<img src="../../assets/images/deep-learning/CNN-feature-maps-1.png" alt="XXX image missing" style="background:white;max-width:30%;float:right;" /> <!-- {"left" : 5.24, "top" : 2.13, "height" : 3.15, "width" : 4.81} -->

 * Images that are greyscale have just one channel. So it needs just 1 sublayer. Colored images have three channels - Red, Green and Blue. So it needs 3 sublayers.

 * Satellite imagery that capture extra light frequencies (e.g. infrared) can have more channels.



Notes: 



---

## Stacking Multiple Feature Maps (Contd.)


<img src="../../assets/images/deep-learning/CNN-feature-maps-1.png" alt="XXX image missing" style="background:white;max-width:30%;float:right;" /> <!-- {"left" : 5.24, "top" : 2.13, "height" : 3.15, "width" : 4.81} -->

 * The fact that all neurons in a feature map has just one set of parameters dramatically reduces the no of parameters needed.

 * This also means that once a CNN has learned to recognize a pattern in one location, it can recognize it in any other location. This is known as location invariance. 

 * In contrast, if a regular DNN has learned to recognize a pattern in one location, it can recognize it only in that location.

Notes: 

---




## Convolutional Layer Hyperparameters

 * The hyperparameters of CNN are:

 *  **Padding type** 

 *  **Filter height and width** 

 *  **Strides** 

 *  **Number of filters** 

Notes: 


---
# Pooling
---

## Pooling Layer

- Pooling layer is used to subsample (i.e., shrink) the input image
    - reduces the computational load, reduce memory usage, and reduce the number of parameters (limits overfitting).
    
- Pooling types 
    - MAX pooling 
    - Average pooling 
    - L2-Norm pooling 
    - Stochastic pooling


---

## Max Pooling

* MAX pooling is most common.

* Notice in this case we take the max of each receptive field

* 2x2 window with stride 2

* Here input is shrunk by factor of 4 --> 1  
so the resulting image is 25% of original image

<img src="../../assets/images/deep-learning/CNN-Max-Pooling.png" alt="XXX image missing" style="background:white;max-width:100%;width:70%;" /> <!-- {"left" : 1.63, "top" : 4.49, "height" : 3.39, "width" : 7} --> 


Notes: 


---

## Max Pooling Example

* With 2x2 window, stride=2,  and max pooling, the image is reduced to 25% of original size


<img src="../../assets/images/deep-learning/3rd-party/lighthouse-1.jpg" alt="XXX image missing" style="background:white;max-width:100%;width:40%;" /><!-- {"left" : 0.4, "top" : 3.67, "height" : 2.3, "width" : 3.45} --> &nbsp; &nbsp; <img src="../../assets/images/deep-learning/3rd-party/arrow-right-1.png" alt="XXX image missing" style="background:white;max-width:100%;width:10%;" /><!-- {"left" : 4.67, "top" : 4.09, "height" : 1.67, "width" : 1.67} --> &nbsp; &nbsp; <img src="../../assets/images/deep-learning/3rd-party/lighthouse-1-small.jpg" alt="XXX image missing" style="background:white;max-width:100%;width:20%;" /><!-- {"left" : 6.97, "top" : 4.15, "height" : 1.54, "width" : 2.32} --> 

---

## Pooling Hyperparameters


- Filter / Spatial Extent F: (for example, F = 2 is 2x2 filter)

- Stride S, how many pixels we "move" (Commonly 2)

- We do not use Zero Padding (black pixel padding) with pooling layers.

- Common Parameters:
    - F = 3, S = 2: 3x3 filters, stride 2 : Overlapping pooling
    - F = 2, S = 2: 2x2 filters, stride 2: No overlaps
    
<img src="../../assets/images/deep-learning/pooling-1.png" alt="XXX image missing" style="background:white;max-width:100%;width:30%;" /> <!-- {"left" : 2.1, "top" : 4.88, "height" : 2.59, "width" : 2.8} --> &nbsp; &nbsp; <img src="../../assets/images/deep-learning/pooling-2.png" alt="XXX image missing" style="background:white;max-width:100%;width:30%;" /><!-- {"left" : 5.19, "top" : 4.88, "height" : 2.59, "width" : 2.8} --> 



---

## Do We Need Pooling?

 * We need to reduce dimensionality somehow!
 
 * Possible to use CONV Layer with Stride=2 instead of a pool.
 
 * We can provide the stride to the convolutional layers to reduce features
 
 * So why do we need pooling layers?
 
 * Pooling layers have *traditionally* seemed to help make a network more efficient.
   - particularly with max pooling
   
 * Recent trends have led to all convolutional networks
   - Use a convolution layer with stride greater than 1
---



## Introduction to Convolutional Neural Networks (ConvNets)

* CNNs are a sequence of layers:
   - Input layer
   - Convolutional Layer
   - ReLU (Rectified Linear Unit) Activation
   - Pooling Layer
   - Fully Connected Layer(s)

  * Many times we have more than one sequence of layers

<img src="../../assets/images/deep-learning/Input_FC.png" alt="XXX image missing" style="background:white;max-width:100%;width:100%;" /> <!-- {"left" : 0.66, "top" : 5.47, "height" : 1.11, "width" : 8.93} -->


Notes: 


---



## Pooling Layer


 - Apply some function (commonly MAX) to each nxn  

 - Reduce features!

 - Notice the reduced features.

 - We can also reduce features simply by resizing the image.

 <img src="../../assets/images/deep-learning/pool.png" alt="XXX image missing" style="background:white;max-width:100%;width:45%;" />  <!-- {"left" : 2.84, "top" : 3.65, "height" : 4.07, "width" : 4.57} -->



---


## Fully Connected Layers
 
 * Fully Connected Layer

     - Finally, have one or more fully connected layers at the end

 * Why Fully Connected?

     - Need to take the convolutional layers and apply to our problem

 * Softmax Layer At end (for classification problems.)

<img src="../../assets/images/deep-learning/Input_FC.png" alt="XXX image missing" style="background:white;max-width:100%;width:45%;" />  

Notes: 


---


## Example Convolutional Network

<img src="../../assets/images/deep-learning/3rd-party/Introduction-to-Neural-Networks--CNN.png" alt="XXX image missing" style="background:white;max-width:100%;width:45%;" />  

Notes: 



---

## CNN Training Workflow

- Make predictions on training data images (forward pass).

- Determine which predictions were incorrect and propagate back the difference between the prediction and the true value (backpropagation).

- Rinse and repeat till the predictions become sufficiently accurate.

- It's quite likely that the initial iteration would have close to 0% accuracy. Repeating the process several times, however, can yield a highly accurate model (> 90%).

---

## CNN Training Workflow

- The batch size defines how many images are seen by the CNN at a time

- Each batch should have a good variety of images from different classes in order to prevent large fluctuations in the accuracy metric between iterations. 
    - A sufficiently large batch size would be necessary for that. 
    
- However, don't let the batch size too large 
    - It could consume too much memory
    - The training process would be slower. 
    
- Usually, batch sizes are set as powers of 2.  
64 is a good number to start, then tweak it from there.


---

## Data Augmentation

- State of the art image classifiers are trained with millions of images 

- What if we only have a small sample (say a few hundred) ?

- NNs could 'memorize' the small dataset.
    - great accuracy on training set
    - but bad accuracy on test set (or new/unseen images)
    - this is classic 'overfitting'
    
- If available images are limited, then we can use a technique called 'augmentation' to create more data samples
    
    
- Only augment training set
    - Do not augment validation/test set because the resulting accuracy metric would be inconsistent and hard to compare across other iterations.

Notes:  
From : https://learning.oreilly.com/library/view/practical-deep-learning/9781492034858/ch02.html
    
---

## Data Augmentation

- Augmentation techniques
    - Rotation (rotate image 10-20' clockwise or counter-clockwise)
    - Shift images to left/right of center
    - Zoom in/out
    - combine the above
    
- Augmentation tools 
    - Keras ImageDataGenerator
    - [imaging library](https://github.com/aleju/imgaug)


Notes:  


---

## Image Augmentation Example

- Use techniques like : rotate slightly to left and right,  flip the image ...etc.

<img src="../../assets/images/deep-learning/image-augmentation-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="100%" /> <!-- {"left" : 1.27, "top" : 2.79, "height" : 3.15, "width" : 7.72} -->




---

# Image Datasets 

---

## Popular Image Datasets

- [MNIST](http://yann.lecun.com/exdb/mnist/)

- [ImageNet](http://image-net.org) 

- [Street View House numbers](http://ufldl.stanford.edu/housenumbers/)

- Cats & Dogs


---

## MNIST Example


 * MNIST Dataset is the "hello world" of deep learning
 
 * 28x28 greyscale scanned digits

 * How to classify them?

Notes: 



---

## ImageNet

- [ImageNet](http://www.image-net.org/) is an image database

- 15 millions+ labeled high-resolution images with around 22,000 categories. 

- It is organized hierarchically

```
imagenet/
└── animals
    └── domestic
        ├── cat
        │   ├── cat1.jpg
        │   └── cat2.jpg
        └── dog
            ├── dog1.jpg
            └── dog2.jpg
```
<!-- {"left" : 0, "top" : 3.57, "height" : 2.65, "width" : 4.78} -->



---

## Imagenet 

<img src="../../assets/images/deep-learning/3rd-party/imagenet-1.png" alt="XXX image missing" style="background:white;max-width:100%;" /><!-- {"left" : 1.8, "top" : 1.88, "height" : 5.3, "width" : 6.66} -->


---

## Imagenet

- The ImageNet dataset was the basis for the famous ImageNet Large Scale Visual Recognition Challenge (ILSVRC)

- ILSVRC uses a subset of ImageNet of around 1000 images in each of 1000 categories.   
~1.2 million training images, 50,000 validation images and 150,000 testing images.

- ILSVRC competition started in 2010

- Since then it is considered the 'Olympics' of image recognition.  
 Researchers compete to win this prestigious competition

- The accuracy has gone up from 70% to 97%

- Also researchers are sharing models trained with ImageNet, making rapid progress in image recognition

---

## Street View Numbers

- http://ufldl.stanford.edu/housenumbers/

- Comes from Google Street View data

- over 600,000 images

<img src="../../assets/images/deep-learning/3rd-party/street-numbers-1.png" alt="XXX image missing" style="background:white;max-width:100%;" width="60%" /><!-- {"left" : 1.07, "top" : 3.09, "height" : 3.15, "width" : 4.72} --> &nbsp; &nbsp; <img src="../../assets/images/deep-learning/3rd-party/google-streetview-car.jpg" alt="XXX image missing" style="background:white;max-width:100%;" width="30%" /><!-- {"left" : 6.26, "top" : 3.41, "height" : 1.99, "width" : 2.93} -->


---

## Cats & Dogs

- In 2014 Microsoft Research was working on a CAPTCHA system
- For that they were using ASIRRA (Animal Species Image Recognition for Restricting Access)
- 3 million images  (800 MB in size)
- Labeled by animal shelters throughout US and also [PetFinder.com](https://petfinder.com)
- When the dataset came out the accuracy was around 80%.  Within a few weeks the top algorithms were scoring 98% accuracy!
- This image set has become a 'classic' test for image recognition algorithms!  
(The cuteness doesn't hurt either!)


<img src="../../assets/images/deep-learning/3rd-party/dog-1.jpg" alt="XXX image missing" style="background:white;width:16%;" /><!-- {"left" : 0.83, "top" : 6.63, "height" : 1.95, "width" : 1.95} --> &nbsp; &nbsp; <img src="../../assets/images/deep-learning/3rd-party/dog-3.jpg" alt="XXX image missing" style="background:white;width:20.1%" /><!-- {"left" : 3.07, "top" : 6.63, "height" : 1.95, "width" : 2.46} --> &nbsp; &nbsp; <img src="../../assets/images/deep-learning/3rd-party/cat-1.jpg" alt="XXX image missing" style="background:white;width:14.5%" /><!-- {"left" : 5.81, "top" : 6.63, "height" : 1.94, "width" : 1.85} --> &nbsp; &nbsp; <img src="../../assets/images/deep-learning/3rd-party/cat-2.jpg" alt="XXX image missing" style="background:white;width:10.3%;" /><!-- {"left" : 8.09, "top" : 6.63, "height" : 1.95, "width" : 1.33} -->


Notes:

- [Link to Paper](https://www.microsoft.com/en-us/research/publication/asirra-a-captcha-that-exploits-interest-aligned-manual-image-categorization/) ,   
- [Link to download](https://www.microsoft.com/en-us/download/details.aspx?id=54765)


