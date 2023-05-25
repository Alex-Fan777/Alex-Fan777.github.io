# How Neural Networks Work

Neural networks are an artificial intelligence method that processes data through a hierarchical structure of interconnected nodes or neurons similar to the human 
brain. This process is called deep learning, which allows computers to learn from data and continuously improve themselves like humans. By establishing this 
adaptive system, artificial neural networks can attempt to solve complex problems, such as more accurately summarizing documents or performing facial recognition.



In addition, neural networks can assist computers in making wise decisions with limited human assistance. This is because they can learn and model the nonlinear 
and complex relationships between inputs and outputs. By training neural networks, we can teach computers to recognize patterns, predict trends, and make 
inferences, making them more intelligent.

## The principle of the Neural Networks
The inspiration for neural networks comes from the working principles of the human brain. The neurons in the human brain are a type of cell that forms a complex and dense network that helps us process information by sending electrical signals to each other. Similarly, artificial neural networks are composed of artificial neurons that work together to solve problems. Artificial neurons are a software module that we can consider as nodes in a network. Artificial neural networks, on the other hand, are a computing system that uses mathematical calculations as its core to solve various problems. By simulating the working principles of the human brain, neural networks can learn and adapt to different data patterns, providing a powerful tool to handle complex tasks.

Simple neural network architecture

The interconnected artificial neurons of the basic neural network are divided into three layers:

Input layer
Information from the external world enters the artificial neural network through the input layer. Input nodes process, analyze, or classify data, and then 
continue to pass it on to the next layer.

Hidden layer
Hidden layers obtain their input from input layers or other hidden layers. Artificial neural networks can have a large number of hidden layers. Each hidden layer
will analyze and further process the output from the previous layer, and then continue to pass it on to the next layer.

Output layer

The output layer provides the final result of processing all data using an artificial neural network. It can contain single or multiple nodes. For example, 
if we want to solve a binary (yes/no) classification problem, the output layer contains an output node that will provide a result of 1 or 0. However, if we want
to solve a multi class classification problem, the output layer may consist of more than one output node.

Deep neural network architecture

Deep neural networks, also known as deep learning networks, consist of multiple hidden layers, including millions of connected artificial neurons. The weights of 
these connections represent the strength of the connections between nodes. If nodes activate each other, the weight is positive; If nodes suppress each other, the 
weight is negative. The higher the weight value of a node, the greater its impact on other nodes.

In theory, deep neural networks can map any type of input to any type of output. However, compared to other machine learning methods, deep neural networks require 
more training data to train. More complex networks may require millions of training data samples, while simpler networks may only require hundreds or thousands of 
training data samples. This is because deep neural networks have more parameters and hierarchical structures, requiring more data to accurately learn and 
represent the complex relationships between inputs and outputs.

![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/5a01980d-9bbc-45f9-a535-6106f07efaba)


Let's take real estate prices as an example. Firstly, we summarize different factors into one row of data: Area, Bedrooms, Distance to City and Age.
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/bb8e88b1-115d-4e17-92cc-bc8638698638)

In the neural network, the input value is transferred to the output layer through the weighted connection, and then the final output result is generated through the activation function.

This process is simple, but adding a hidden layer between the input and output layers can expand the functionality of the neural network and improve its accuracy.

The existence of hidden layers enables neural networks to perform more complex processing and learning on inputs. The neurons in the hidden layer can learn and 
extract more abstract and advanced features from the input, enabling better pattern recognition and prediction. By adding hidden layers, neural networks can learn 
deeper representations, thereby improving their ability to solve complex problems.

![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/9952769b-a215-4bf0-8119-fa0a248b5a3d)

In the above figure, all four variables are connected to neurons through synapses. However, not all synapses have weight. The weight can be a value of 0 or a value other than 0, where a value other than 0 represents importance, and a value of 0 indicates that the input is ignored.

Taking the "area" and "distance to city" of the first neuron as examples, their weights are non zero, which means they are very important to the first neuron. The weights of the other two variables' number of bedrooms' and 'age of occupancy' are 0, so they will not be considered through the first neuron.

You may wonder why the first neuron only considers two of the four variables. In the real estate market, the farther a house is from the city, the cheaper it is usually. Therefore, this neuron may be searching for a house closer to the city center.

In neural networks, there are many neurons, each of which uses different combinations of these variables for similar calculations. Once certain conditions are met, neurons will use the activation function to generate output results.

The next neuron may use weights to connect to the city distance and the number of bedrooms. Therefore, neurons work in a very flexible way by combining specific inputs to find specific patterns or information.

## How does Neural Netwaork learn
Let's use an analogy to understand the learning process of neural networks, which is closely related to our normal learning methods. Just as we constantly improve 
in learning, neural networks also need to be trained to continuously improve.

During training, we complete some tasks and receive corrections from the coach. We will complete this task better next time. Similarly, a neural network requires 
a trainer to tell it how to react to input. By calculating the difference (also known as cost function or error) between actual and predicted values, we can 
evaluate the performance of the network.

The cost function is measured by calculating half of the square difference between the actual value and the predicted value.

For each layer of the network, we analyze the cost function and adjust the thresholds and weights for the next layer. Our goal is to minimize the cost function as 
much as possible, as a lower cost function means that the actual value is closer to the predicted value. With the learning of the network, errors will decrease 
every time it runs.

We transmit feedback on the resulting data through the entire neural network. We can only control the weighted synapses that connect input variables and neurons, 
so as long as there is a difference between the actual and predicted values, we need to adjust the weights. Once the weights are slightly adjusted, we run the 
network again to generate a new cost function. We hope that the new cost function will be smaller than before. By repeating this process, we gradually reduce the 
cost function to make it as small as possible.

![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/0cdc0713-47e7-4c0b-847b-a55551da6624)

The above process is called backpropagation and continues through the network until the error value is kept to a minimum.
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/fa244bdd-7f9e-4acf-9db5-737ad95a17b6)

## What are the types of neural networks?

Feedforward neural network
The feedforward neural network is like a one-way street, with data flowing from the input node to the output node. Each node in each layer is connected to each 
node in the next layer.

The feedforward network gradually improves the prediction results through continuous feedback and adjustment, just like continuously correcting and improving in 
learning.

Backpropagation algorithm
Artificial neural networks use feedback loops to continuously learn and improve predictive analysis. Neural networks can be imagined as many different paths 
connecting input nodes to output nodes. Only one path is correct, and the input node can be mapped to the correct output node.

In order to find the correct path, the neural network learns through the following methods:

Each node will guess the next node in the path.

It will check if this guess is correct. If the guess is accurate, the node will give the path a higher weight value; If the guess is incorrect, the node will give 
the path a lower weight value.

For the next data point, the node will use a path with higher weights for new predictions and repeat step 1.

Through this feedback loop approach, neural networks can gradually adjust weights and find more accurate paths for prediction, thereby continuously improving the 
performance and accuracy of the network.

Convolutional neural network
In convolutional neural networks, the hidden layer performs specific mathematical operations, known as convolution. These operations are very useful in image 
classification as they can extract relevant features crucial for image recognition and classification from the image. This processing method makes it easier for 
the network to process image data without losing features that are crucial for making accurate predictions. Each hidden layer is responsible for extracting and 
processing different image features, such as edges, colors, and depth. In this way, by processing the image layer by layer, the network can gradually understand 
the higher-level features of the image, thereby improving the accuracy of image classification.

# Deep learning
Deep learning is a machine learning method driven by neural network layers. These neural network models are designed based on algorithms that work with the human 
brain, using a large amount of training data to configure the neurons in the network. After sufficient training, deep learning models can process new data, absorb 
and analyze information in real-time from multiple sources, without the need for manual intervention. In deep learning, the graphics processing unit (GPU) can 
perform multiple calculations simultaneously, thereby optimizing the training of deep learning models and improving training efficiency and performance. Overall, 
deep learning utilizes the hierarchical structure of neural networks and a large amount of training data to achieve autonomous learning and data analysis 
capabilities

Differences between neural networks and deep learning:

These two concepts are actually interrelated. For example, CNN is a deep learning model for supervised learning tasks, such as image classification. The deep 
belief network is a unsupervised learning model, which is used to learn hidden structures and features in data without labels or guidance. In brief, convolutional 
neural network focuses on supervised learning and predicts through training data, while deep belief network focuses on unsupervised learning through the internal 
mode and representation of autonomous learning data.

The concept of deep learning originates from the study of artificial neural networks. The multilayer perceptron can be regarded as a deep learning structure, 
which contains multiple hidden layers. Its key idea is to process data layer by layer, gradually combining low-level features into more abstract and high-level 
representations, in order to better understand and describe the features and attributes of the data. This can better help us discover distributed feature 
representations in the data, thereby improving the performance and accuracy of the learning model.

Broadly speaking, the network structure of deep learning is also a type of multi-layer neural network. In the traditional sense, multi-layer neural networks only
have input layers, hidden layers, and output layers. The number of hidden layers varies according to needs, and there is no clear theoretical derivation to 
explain.


Reference:
https://www.youtube.com/watch?v=aircAruvnKk
https://blog.csdn.net/WangYouJin321/article/details/90691112
https://aws.amazon.com/cn/what-is/neural-network/
Some explaination are from chatgpt and I rewrite it with my own understading of the knowledge.





















