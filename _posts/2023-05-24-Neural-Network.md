# How Neural Networks Work

Neural networks are an artificial intelligence method used to teach computers to process data in a way inspired by the human brain. This is a machine learning 
process called deep learning, which uses interconnected nodes or neurons in a hierarchical structure similar to the human brain. It can create adaptive systems that
computers use to learn from errors and continuously improve. Therefore, artificial neural networks can attempt to solve complex problems, such as more accurately 
summarizing documents or facial recognition.

Also,Neural networks can assist computers in making wise decisions with limited human assistance. This is because they can learn and model the relationships between
nonlinear and complex input and output data.

## The principle of the Neural Networks
The inspiration for neural network architecture comes from the human brain. Human brain cells, known as neurons, form a complex and highly interconnected network
that can send electrical signals to each other to help humans process information. Similarly, artificial neural networks are composed of artificial neurons that
work together to solve problems. Artificial neurons are software modules called nodes; Artificial neural networks are software programs or algorithms that use
computational systems to solve mathematical calculations at their core.

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

Deep neural networks, also known as deep learning networks, have multiple hidden layers and contain millions of linked artificial neurons. The number called 
weight represents the connection between nodes. If nodes motivate each other, the weight is positive, and if nodes suppress each other, the weight is negative. 
The higher the weight value of a node, the greater its influence on other nodes.

In theory, deep neural networks can map any input type to any output type. But compared to other machine learning methods, they also require more and more
training. They require millions of training data examples, unlike simpler networks that may only require hundreds or thousands of training data examples.

![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/5a01980d-9bbc-45f9-a535-6106f07efaba)


Let's take real estate prices as an example. Firstly, we summarize different factors into one row of data: Area, Bedrooms, Distance to City and Age.
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/bb8e88b1-115d-4e17-92cc-bc8638698638)

The input value directly reaches the output layer through weighted synapses. The four input values will be analyzed and input into the activation function to
generate output results.
This is simple, but adding a hidden layer between the input and output layers can expand the functionality of the neural network and improve its accuracy.

![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/9952769b-a215-4bf0-8119-fa0a248b5a3d)

Now in the figure above, all four variables are connected to neurons through synapses. However, not all synapses are weighted. The weights include both 0 and non 0
values. Here, a non-zero value represents importance, and a value of 0 indicates that the input has been discarded.

Let's take the example where the Area and Distance to City of the first neuron are non-zero, which means they are important to the first neuron. The other two
variables, Bedrooms and Age, have a weight of 0, so they do not pass through the first neuron.

You may want to know why the first neuron only considers two of the four variables. The farther away from the city, the cheaper houses become, which is common in 
the real estate market. Therefore, what this neuron may be doing is searching for houses closer to the city center.

There are many neurons, and each neuron performs similar calculations using different combinations of these variables. Once the criteria are met, the neuron will
use the activation function for calculation.

The next neuron weighted synapse may be Distance to the city and Bedrooms. Therefore, neurons work in a very flexible way, conducting comprehensive searches to
find specific things.

## How does Neural Netwaork learn
Let's make an analogy first. The learning of neural networks is closely related to our normal learning style. We first complete a certain amount of work, receive
correction from the coach, and next time complete this work in a better way. Similarly, neural networks require trainers to describe the network's response to
inputs. Calculate an error value (also known as a cost function) using the difference between the actual and predicted values and send it back to the system.

Cost function: Half of the square difference between the actual value and the output value.

For each layer of the network, the cost function is analyzed and used to adjust the threshold and weight of the next input. Our goal is to minimize the cost function. The lower the cost function, the closer the actual value is to the predicted value. As the network continues to learn, the error of each run decreases.

We provide feedback on the result data through the entire neural network. Connecting input variables to the weighted synapses of neurons is the only thing we can
control, so as long as there is a difference between the actual and predicted values, we need to adjust the weights. Once they are slightly adjusted and the neural
network is run again, a new cost function will be generated, and we hope it can be smaller than the previous one. Repeat this process until the cost function is
reduced to the smallest possible level.
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/0cdc0713-47e7-4c0b-847b-a55551da6624)

The above process is called backpropagation and continues through the network until the error value is kept to a minimum.
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/fa244bdd-7f9e-4acf-9db5-737ad95a17b6)

## What are the types of neural networks?

Feedforward neural network
The feedforward neural network processes data in a one-way manner from input node to output node. Each node in one layer is connected to each node in the next
layer. Feedforward networks use feedback processes to improve predictions over time.

Backpropagation algorithm
Artificial neural networks use corrective feedback loops to continuously learn to improve their predictive analysis. In short, you can think of data flowing from
input nodes to output nodes through many different paths in neural networks. Only one path is correct, and the input node can be mapped to the correct output node.
To find this path, the neural network will use feedback loops, which work as follows:
Each node will guess the next node in the path.
It will check if the guess is correct. Nodes will assign higher weight values to paths that trigger more accurate guesses, and lower weight values to node paths
that trigger incorrect guesses.
For the next data point, the node will use a path with higher weights for new predictions, and then repeat step 1.

Convolutional neural network
The hidden layers in convolutional neural networks perform specific mathematical functions (such as aggregation or filtering), known as convolution. They are very
useful for image classification because they can extract relevant features from images that are useful for image recognition and classification. This new form is 
easier to handle without losing features that are crucial for making good predictions. Each hidden layer extracts and processes different image features, such as
edges, colors, and depth.

# Deep learning
Deep learning is driven by neural network layers. A neural network is loosely modeled by a series of algorithms based on the workings of the human brain, using
a large amount of data for training, i.e. configuring the nerves of the neural network. After training, the deep learning model can process new data, ingest and
analyze data from multiple sources in real-time, without human intervention. In deep learning, the Graphics Processing Unit (GPU) can simultaneously process
multiple calculations and train deep learning models in an optimized manner.

Differences between neural networks and deep learning:

These two concepts actually cross each other. For example, convolutional neural networks (CNNs) are machine learning models under deep supervised learning, while
deep belief networks (DBNs) are machine learning models under unsupervised learning.

The concept of deep learning originated from the research of artificial neural networks. The multilayer perceptron with multiple hidden layers is a kind of deep
learning structure. Deep learning combines low-level features to form more abstract high-level representations of attribute categories or features, in order to
discover distributed feature representations of data.



Broadly speaking, the network structure of deep learning is also a type of multi-layer neural network. In the traditional sense, multi-layer neural networks only
have input layers, hidden layers, and output layers. The number of hidden layers varies according to needs, and there is no clear theoretical derivation to explain
how many layers are suitable.

The most famous convolutional neural network in deep learning, CNN, adds feature learning to the original multi-layer neural network, which imitates the grading 
of signal processing by the human brain. The specific operation is to add partially connected convolutional layers and dimensionality reduction layers in front of
the original fully connected layer, and to add a hierarchy.

Input layer - Convolutional layer - Dimension reduction layer - Convolutional layer - Dimension reduction layer --- Hidden Layer - Output Layer

Simply put, the original step of a multi-layer neural network was to map features to values. The feature is manual selection.

The steps of deep learning are signal ->feature ->value. The feature is chosen by the network itself.



Reference:
https://www.youtube.com/watch?v=aircAruvnKk
https://blog.csdn.net/WangYouJin321/article/details/90691112
https://aws.amazon.com/cn/what-is/neural-network/






















