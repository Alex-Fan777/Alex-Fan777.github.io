#Gradient Descent

##Defination
Gradient descent is a type of iterative method that can be used to solve least squares problems (both linear and nonlinear). Gradient Descent is one of the most 
commonly used methods to solve the model parameters of machine learning algorithm, that is, the constrained optimization problem. Another commonly used method is 
the least square method. When solving the minimum value of the loss function, the gradient descent method can be used to iteratively solve step by step to obtain 
the minimum value of the loss function and model parameters.

Gradient Descent Optimization is the most commonly used optimization algorithm for neural network model training.

Gradient is the derivative
The gradient descent method is a method of finding the minimization of the objective function by calculating its derivative.
The purpose of gradient descent is to find the value of the independent variable corresponding to the value of the objective function minimization, in order to find
the independent variable X.

![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/e8e81b7c-8ea6-4651-8802-1376c34d09a0)
We will use gradient descent to find intercept and the slope.
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/2984e823-9cd0-4b8e-a31c-351dd93560eb)
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/0ada765d-a5d3-4670-9c68-1ffd138d34f8)
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/fd396f67-96f0-4c98-b478-c23cc1c2a8f2)
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/624bfbe1-39d6-4750-a842-8a0eec84f6b8)
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/353381b2-27d5-41fc-b0df-280ff65c5a17)

The basic idea of the gradient descent method can be likened to a downhill process, as shown in the following figure. The function appears to be a mountain forest,
with red indicating the high point and blue indicating the low point. The darker the blue color, the lower the geographical location, and there is a low point and a
lowest point in the graph.

Imagine a scenario where a person is trapped on a mountain (located in the red circle in the picture) and needs to come down from the mountain (to find the lowest
point of the mountain, which is the valley), but at this point, the dense fog on the mountain is high, resulting in low visibility. Therefore, the path down the
mountain cannot be determined, and he must use the information around him to find the path down the mountain. At this point, he can use the gradient descent 
algorithm to help himself descend the mountain. Specifically, based on his current position, search for the steepest point in this position, then walk towards the
direction of the mountain's height descent. Repeat the same method for each distance traveled, and finally successfully reach the valley
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/abe6210e-b2b6-4205-9bba-9f21e0fda954)

Assuming that the steepest part of this mountain cannot be immediately observed with the naked eye, but requires a complex tool to measure, and at the same time,
this person happens to have the tool to measure the steepest direction. So, for each distance traveled by this person, it takes some time to measure the steepest
direction of their location, which is quite time-consuming. So in order to reach the bottom of the mountain before the sun sets, it is necessary to minimize the
number of measurements of direction as much as possible. This is a dilemma choice. If the measurement is frequent, it can ensure that the direction of the downhill
is absolutely correct, but it is also very time-consuming. If the measurement is too few, there is a risk of deviation from the track. So we need to find a 
suitable frequency for measuring the direction (how often we measure it) to ensure that the downhill direction is not incorrect, and at the same time, it does
not take too much time. In the algorithm, we refer to it as step size.

Following the idea of the gradient descent algorithm, it will reach its lowest point as follows:

Step 1: Clarify your current position

Step 2: Find the direction with the fastest descent relative to this position

Step 3, take a small step in the direction found in step two to reach a new position, which is definitely lower than the original position

Step 4, go back to the first step

Step 5, terminate at the lowest point

In this case, the gradient descend algorithm as follow:

Initialization parameters: Select a set of initial parameters as the starting point.

Calculate gradient: Calculate the gradient of the objective function for the current parameter combination. The gradient is the partial derivative of the objective
function for each parameter, representing the change rate and direction of the function at the current parameter combination.

Update parameters: Update the parameter values based on the calculated gradient information. The updated direction is the opposite direction of the gradient, in 
order to move towards the minimum value of the objective function. The size of updating parameters is determined by the learning rate. The higher the learning 
rate, the larger the step size of parameter updates. The smaller the learning rate, the smaller the step size of parameter updates.

Repeat steps 2 and 3: iteratively execute steps 2 and 3 until the stop condition is reached. The stopping condition can be to reach the maximum number of
iterations, the size of the gradient is below a certain threshold, or the change in the objective function value is below a certain threshold.

For the algorithm, we can explain like this:
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/6c941bf6-7a15-4266-b675-544da0dfbaf3)
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/6646c04f-b545-4bc4-9de4-e6f038f639e3)
J is about Θ A function where we are currently located in the mountains and forests is Θ At 0 o'clock, we need to walk from this point to the minimum point of J,
which is the bottom of the mountain. Firstly, we determine the direction of progress, which is the reverse of the gradient, and then take a step of a certain
distance, which is α， After walking this step, you will arrive Θ At this point.

α In gradient descent algorithms, it is referred to as learning rate or step size, which means that we can use α To control the distance taken at each step to
ensure that you don't stride too far, in fact, don't walk too fast and miss the lowest point. At the same time, it is also important to ensure that you do not 
walk too slowly, causing the sun to set and not yet reach the bottom of the mountain. therefore α The choice of gradient descent method is often very 
important! α It cannot be too big or too small. If it is too small, it may lead to a delay in reaching the lowest point. If it is too big, it may lead to missing
the lowest point!
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/3c30db52-ac7a-4f3e-a1a7-87b8d62b969d)
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/c7da3bb8-bf9e-493a-828b-1aa570af24e9)
After four operations, which means taking four steps, we basically reached the lowest point of the function, which is the bottom of the mountain.
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/72723e19-66ab-4e03-b24b-a722fbd4313c)

In summary:
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/61591e42-cb53-4f9e-b874-1c4eb7c17894)
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/c0e5a472-7829-441c-b8b2-8fe504ab6ab3)


Commonly used gradient descent method
Stochastic Gradient Descent Algorithm
In order to overcome the disadvantage of batch gradient descent, some people have proposed the Stochastic Gradient Descent algorithm, which randomly selects only 
one sample for calculation each time the coefficient is updated. Therefore, it can not only reduce the number of iterations, save calculation time, but also
prevent memory overflow and reduce computational overhead. However, random gradient descent also has a drawback, as each update may not follow the correct
direction, which can lead to optimization fluctuations (disturbances). That is, if the parameter update frequency is too fast, there may be oscillations of the 
objective function value near the optimal value, and high-frequency parameter updates can lead to high square errors. However, on the other hand, one advantage 
of the fluctuation caused by the random gradient decline is that for areas like basins (that is, many local minimum points), the characteristics of this 
fluctuation may make the optimization direction jump from the current local minimum point to another better local minimum point, so that for non convex function,
it may eventually converge to a better local extreme point, or even the global extreme point.

![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/47566178-6b96-433a-a793-8a48930cb5ca)

However, it has its drawbacks.
Due to only randomly selecting one sample per iteration, the randomness is relatively high, so the descent process is very tortuous.

Gradient descent algorithm optimization
Although the gradient descent algorithm has excellent performance and is widely used, there are also some challenges and problems that need to be solved at the
same time: it is very difficult to choose a reasonable learning rate, assuming that the learning rate is too small, it will lead to very slow convergence speed;
Assuming that the learning rate is too high, it will hinder convergence and oscillate near the extreme point. Learning rate scheduling, also known as learning 
rate scheduling, attempts to change the learning rate during each update process, such as annealing. Generally, a predetermined strategy is used or a smaller
threshold is attenuated in each iteration. Regardless of the adjustment method, fixed settings must be made in advance. This side cannot adapt to the
characteristics of the dataset learned each time.



All parameters of the model are updated at the same learning rate every time. Assuming that the data features are sparse or each feature has different statistical
features and spaces, then it is not possible to use the same learning rate for each parameter in each update. Those very rare features should use a relatively
high learning rate. For non convex objective functions. Easy falls into those suboptimal local extremum points, as in neural networks.

(1) The step size selection of the algorithm. In the previous algorithm description, I mentioned that the step size is 1, but actually the value depends on the 
data sample. You can take more values, run the algorithm from large to small, and see the iterative effect. If the loss function is getting smaller, it means that
the value is valid, otherwise you need to increase the step size. As mentioned earlier. If the step size is too large, it can lead to too fast iteration and even
miss the optimal solution. The step size is too small, the iteration speed is too slow, and the algorithm cannot end for a long time. So the step size of the 
algorithm needs to be run multiple times to obtain a relatively optimal value.

(2) The initial value selection of algorithm parameters. Different initial values may result in different minimum values, so gradient descent only yields local
minimum values; Of course, if the loss function is a convex function, it must be the optimal solution. Due to the risk of local optimal solution, it is necessary 
to run the algorithm with different initial values for many times, select the minimum value of the key loss function, and select the initial value of the minimum
loss function.

(3) Normalization. Due to the different value ranges of different features in the sample, iteration may be slow. To reduce the impact of feature values, 
the feature data can be normalized, that is, for each feature x, its expected x and standard deviation std (x) can be calculated, and then converted into values 
within the same range.

In this case, we can learn the codes from fastai.

We can change the learning rate to change the basic gradient descent. Definitely, we have more methods to change it to make the model better.





















