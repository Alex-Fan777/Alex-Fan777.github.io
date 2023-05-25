# Loss function

## defination of loss function

A loss function is a mathematical function that assigns a real number to an event or the values of one or more variables. This number typically represents a measure of "cost" or "risk" associated with the event.

The purpose of a loss function is to quantify the discrepancy between the predicted outcome and the actual
outcome, providing a basis for optimization in various applications. In practice, the loss function is commonly utilized as a learning criterion, guiding the model's optimization process by minimizing the assigned loss. The loss function may incorporate components from different levels of a hierarchical system, allowing for a comprehensive evaluation of the event or variables involved.

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

In the context of multi-task learning, multiple tasks are tackled simultaneously, leveraging shared knowledge between them. Multi-task learning inherently involves addressing multiple objectives, as different tasks may have conflicting requirements, requiring a trade-off. To handle this, a common approach is to optimize a proxy objective that combines per-task losses through a weighted linear combination. However, this approach is only effective when the tasks are not 
in direct competition, which is often not the case.

In general, there exists a delicate balance among multiple losses, and even for individual tasks, there may be penalties associated with adjusting weights. Achieving an appropriate combination typically involves fine-tuning hyperparameters to strike a suitable compromise.

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
CrossEntropyLossFlat is a widely used loss function in multi-category classification tasks, particularly when the target labels are represented using one-hot encoding. It offers a convenient and efficient approach to compute the cross-entropy loss. Moreover, it seamlessly integrates with other fastai functions, such as model training and validation, facilitating a streamlined workflow.

What is CrossEntrypy function?
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/ce171666-dfe6-4d1c-a6b4-c36a2e90e386)

Note:
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/84332ad0-ba80-4760-b72e-832a5f6333b9)

In summary, Cross-entropy is a measure of the difference between two probability distributions for a given random variable or set of events.
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/8ccd2ab0-b0dc-47d9-b49a-9a0770161e82)
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/db221faa-9812-4c54-a00d-a421b53af7bf)

The reason why we choose the Crossentrypy is that this loss functions is the best to predict the possibility of the real machine to do this.


## CNN
Convolutional neural networks (CNN or ConvNet) are a type of deep learning network architecture designed to learn directly from data. CNNs are especially well-suited for detecting and identifying patterns in images, enabling object recognition, class prediction, and categorization tasks. However, CNNs are not limited to image processing alone; they can also effectively classify other types of data such as audio, time series, and signal data.

Before the emergence of CNN, images were a challenge for artificial intelligence for two reasons:

The amount of data required for image processing is too large, resulting in high costs and low efficiency

It is difficult to preserve the original features of images during the digitization process, resulting in low accuracy in image processing
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/30857918-dd5b-4dc8-b857-77eb9c640d0b)
Now, any random image is 1000 × Above 1000 pixels, each pixel has three RGB parameters to represent color information.



When processing a 1000 × 1000 pixel image, we encounter the challenge of dealing with a massive number of parameters, specifically 3 million parameters. This poses a significant resource burden, even for a relatively small image.

Convolutional neural networks (CNNs) address this issue by simplifying complex problems and reducing the number of parameters to be processed. This reduction allows for more efficient computation. Importantly, in most scenarios, dimensionality reduction does not compromise the results. For example, reducing a 1000 pixel image to 200 pixels does not hinder visual recognition tasks like distinguishing between a cat and a dog, and the same applies to machine learning algorithms.

The convolutional layer in a CNN is responsible for extracting local features from the image. The pooling layer plays a crucial role in dimensionality reduction by significantly reducing the number of parameters. Finally, the fully connected layer resembles the traditional neural network structure and is employed to produce the desired output results.

Convolution - Extracting Features

![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/db66a594-172e-4d37-95d1-86706fc99c02)
Pooling layer (down sampling) - data dimensionality reduction to avoid overfitting
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/5d5481aa-472e-4e6d-8615-6d14bd52acbd)

In the provided image, we observe that the original image has dimensions of 20 × 20. To reduce the data dimension and computational complexity, we apply downsampling using a sampling window of size 10 × 10. This downsampling operation results in a 2 × A feature map of size 2.

The purpose of downsampling is to decrease the image size even after performing convolutions. Since the convolution kernel is relatively small, the output image can still be large, necessitating dimension reduction. By incorporating a pooling layer, we can effectively reduce the data dimension.

In summary, pooling layers are more efficient in reducing data dimensionality compared to convolution layers. They not only significantly decrease the computational load but also help prevent overfitting, which is beneficial for the overall performance of the model.

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



















