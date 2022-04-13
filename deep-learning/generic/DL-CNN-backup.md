## Feedforward Network Limitations

<img src="../../assets/images/deep-learning/3rd-party/Introduction-to-Neural-Networks--Feedforward-Network-Limitations-0.png"  style="width:30%;float:right;" /> <!-- {"left" : 12.61, "top" : 1.89, "height" : 4.38, "width" : 4.36} -->

 * Let's imagine that we want to find a pattern in an image.

 * For example, say we want to locate a number in an image.

 * How would we do that in a NN?

     - We could take each pixel as a feature,

     - Apply those as input.

     - 640 x 480 image = 307,200 features

     - A LOT of features!

 * But let's think... is this going to work for us? 

     - What are some problems?




Notes: 



---
## Problems with MLP (Multilayer Perceptron) 

<img src="../../assets/images/deep-learning/3rd-party/Multilayer-Perceptron.png"  style="width:15%;float:right;clear:both;" /> <!-- {"left" : 14.44, "top" : 2.18, "height" : 3.1, "width" : 2.58} -->
<img src="../../assets/images/deep-learning/3rd-party/Multilayer-Perceptron.png"  style="width:15%;float:right;clear:both;"  /> <!-- {"left" : 14.44, "top" : 5.7, "height" : 3.1, "width" : 2.58} -->

 * An image is 2-D, while our input is just a vector
     - Limited ways to learn patterns between vectors vertically
     - Feedforward Net COULD represent this
     - But how do we learn patterns?
     - Huge numbers of features 300k+

 * Finding pattern in image?

     - What if the "2" is in a different place?
     - Perhaps the right corner
     - Or the left corner?

 * Feedforward net may not realize
     - We are looking for a pattern WITHIN image






Notes:

---

## Too Many Features

 * Too many features

     - There's just too many features here to learn.

<img src="../../assets/images/deep-learning/3rd-party/Introduction-to-Neural-Networks--Feedforward-Network-Limitations-0.png"  style="width:30%;float:right;" /> <!-- {"left" : 12.61, "top" : 1.89, "height" : 4.38, "width" : 4.36} -->


Notes: 

