# Loss function

## defination of loss function

loss function is a function that maps an event or values of one or more variables onto a real number intuitively representing some "cost" associated with the event.

The loss function can include items from multiple levels of the hierarchy. In a short,The loss function or cost function is a function that maps the values of a 
random event or its related random variables to non negative real numbers to represent the "risk" or "loss" of the random event. In application, the loss function 
is usually associated with optimization problems as a learning criterion, that is, the model is solved and evaluated by minimizing the loss function.

## some loss function

The 0-1 loss function directly corresponds to the number of classification errors, but it is a non convex function and is not applicable.
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/3a14b94f-ecb5-4ac3-8302-510e790ba570)

The absolute value loss function is the absolute value of the difference between the predicted value and the target value
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/a76fd303-b9b0-4019-940c-6796ba678a40)

The standard form of log logarithmic loss function is as follows:
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/0fe20fbf-362c-4fd7-a5e7-7f7c6fca4173)
(1) The log logarithmic loss function can represent the probability distribution very well. In many scenarios, 
especially multi classification, it is very suitable if you need to know the confidence level of the results in each category.
(2) Not strong in robustness, and more sensitive to noise than hint loss.
(3) The loss function of logical regression is the log logarithm loss function.

The standard form of the square loss function is as follows:
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/ecee6035-1d29-4dee-bd5e-ee93b2a79c67)

The standard form of the exponential loss function is as follows:
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/9cab14ff-11a9-411b-ac57-3c18fb9a10d8)
Very sensitive to outliers and noise

The standard form of Hinge loss function is as follows:
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/f6f747a2-fe2f-496c-b030-3a3bdd3793a1)
Relatively high robustness, insensitive to outliers and noise
SVM uses this loss function.

## Multiple loss function

In multi-task learning, multiple tasks are solved jointly, sharing inductive bias between them. Multi-task learning is inherently a multi-objective problem 
because different tasks may conflict, necessitating a trade-off. A common compromise is to optimize a proxy objective that minimizes a weighted linear
combination of per-task losses. However, this workaround is only valid when the tasks do not compete, which is rarely the case.

Generally, there is a balance between multiple losses, and even for single tasks, there will be weight penalty items. A relatively simple combination is
usually achieved by adjusting hyperparameters.

![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/c0b5d2bd-671a-4b4c-a9b8-d25ed1d4e1ba)
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/7106135b-7407-4931-b044-84230a7671dc)


## Multi task learning focuses on how to optimize a model containing multiple objective loss function. Usually, the most direct method is to combine these 
loss function through a linear function:
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/3a76357e-643f-47a6-8d1b-85243e621213)

## Loss functions in fast ai

### Base Loss
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/ed03e0bc-3205-4d56-b13b-4c43876d4066)
It does not perform specific calculations on its own, but rather provides some common methods and properties for subclasses.
BaseLoss is used to provide a unified interface and shared functions for specific loss function. It defines the basic flow and parameters of loss calculation, so that different loss function can be easily expanded and implemented.

### CrossEntropyLossFlat
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/fc4fbc97-8db0-45b4-b3b6-9f22e9589115)
CrossEntropyLossFlat is commonly used in multi category classification tasks, especially when the target label is in the form of one hot encoding. It provides a convenient and efficient way to calculate the cross entropy loss, and can be seamlessly integrated with other fastai functions (such as model training and verification).

What is CrossEntrypy function?
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/ce171666-dfe6-4d1c-a6b4-c36a2e90e386)

Note:
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/84332ad0-ba80-4760-b72e-832a5f6333b9)

In summary, Cross-entropy is a measure of the difference between two probability distributions for a given random variable or set of events.
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/8ccd2ab0-b0dc-47d9-b49a-9a0770161e82)
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/db221faa-9812-4c54-a00d-a421b53af7bf)

The reason why we choose the Crossentrypy is that this loss functions is the best to predict the possibility of the real machine to do this.


## CNN
Convolutional neural networks (CNN or ConvNet) are a deep learning network architecture that learns directly from data. CNN is particularly suitable for finding patterns in images to recognize objects, classes, and categories. They can also effectively classify audio, time series, and signal data.

Before the emergence of CNN, images were a challenge for artificial intelligence for two reasons:

The amount of data required for image processing is too large, resulting in high costs and low efficiency

It is difficult to preserve the original features of images during the digitization process, resulting in low accuracy in image processing
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/30857918-dd5b-4dc8-b857-77eb9c640d0b)
Now, any random image is 1000 × Above 1000 pixels, each pixel has three RGB parameters to represent color information.



If we handle a 1000 × We need to process 3 million parameters for a 1000 pixel image!
one thousand × one thousand × 3=3,000,000
Processing such a large amount of data is very resource intensive, and this is only a relatively small image!
The first problem solved by convolutional neural networks - CNN is to "simplify complex problems", reduce a large number of parameters into a small number of parameters, and then perform processing.
More importantly, in most scenarios, dimensionality reduction does not affect the results. For example, reducing a 1000 pixel image to 200 pixels does not affect the visual recognition of whether the image is a cat or a dog, and the same applies to machines.

The convolutional layer is responsible for extracting local features in the image; The pooling layer is used to significantly reduce the magnitude of parameters (dimensionality reduction); The fully connected layer is similar to the part of a traditional neural network, used to output the desired results.

Convolution - Extracting Features

![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/db66a594-172e-4d37-95d1-86706fc99c02)
Pooling layer (down sampling) - data dimensionality reduction to avoid overfitting
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/5d5481aa-472e-4e6d-8615-6d14bd52acbd)
In the above image, we can see that the original image is 20 × 20, we downsample it with a sampling window of 10 × 10, ultimately downsampling it into a 2 × A feature map of size 2. The reason for doing this is because even after completing the convolution, the image is still large (because the convolution kernel is relatively small), so in order to reduce the data dimension, downsampling is performed.
Conclusion: Pooling layer can reduce the data dimension more effectively than convolution layer, which can not only greatly reduce the amount of calculation, but also effectively avoid overfitting.

Fully connected layer - output results
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/5bca134e-bee9-4c0c-9503-b883ec69581c)

Convolutional layer - Pooled layer - Convolutional layer - Pooled layer - Convolutional layer - Fully connected layer
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/63915c5a-0ede-4c03-9841-52ae7ff6dfa2)

###What are the practical applications of CNN?
Convolutional Neural Networks - CNN is good at processing images. And video is an overlay of images, so it is also good at handling video content. Here are some mature applications for everyone:

Image classification and retrieval
Image classification is a relatively basic application that can save a lot of labor costs and effectively classify images. For some specific fields of images, the accuracy of classification can reach over 95%, which is already considered a highly available application.

Target localization detection
Able to locate targets in the image and determine their position and size

Target segmentation
Simply understood, it is a pixel level classification.
He can distinguish foreground and background at the pixel level, and at a higher level, he can also identify and classify targets

In summary,
The value of CNN:



Being able to effectively reduce the dimensionality of images with large amounts of data into small amounts of data (without affecting the results)

Ability to preserve the features of images, similar to human visual principles

The basic principle of CNN:



Convolutional layer - The main function is to preserve the features of the image

Pooling layer - mainly used to reduce the dimension of data, which can effectively avoid overfitting

Fully connected layer - output the desired results based on different tasks








Reference:
https://zhuanlan.zhihu.com/p/58883095
https://www.youtube.com/watch?v=6ArSys5qHAU&t=171s
https://easyai.tech/ai-definition/cnn/



















