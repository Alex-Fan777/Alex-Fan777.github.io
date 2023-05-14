#Loss function
##defination of loss function
loss function is a function that maps an event or values of one or more variables onto a real number intuitively representing some "cost" associated with the event.
The loss function can include items from multiple levels of the hierarchy. In a short,The loss function or cost function is a function that maps the values of a 
random event or its related random variables to non negative real numbers to represent the "risk" or "loss" of the random event. In application, the loss function 
is usually associated with optimization problems as a learning criterion, that is, the model is solved and evaluated by minimizing the loss function.
##some loss function
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

##Multiple loss function
In multi-task learning, multiple tasks are solved jointly, sharing inductive bias between them. Multi-task learning is inherently a multi-objective problem 
because different tasks may conflict, necessitating a trade-off. A common compromise is to optimize a proxy objective that minimizes a weighted linear
combination of per-task losses. However, this workaround is only valid when the tasks do not compete, which is rarely the case.

Generally, there is a balance between multiple losses, and even for single tasks, there will be weight penalty items. A relatively simple combination is
usually achieved by adjusting hyperparameters.

![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/c0b5d2bd-671a-4b4c-a9b8-d25ed1d4e1ba)
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/7106135b-7407-4931-b044-84230a7671dc)


##Multi task learning focuses on how to optimize a model containing multiple objective loss function. Usually, the most direct method is to combine these 
loss function through a linear function:
![image](https://github.com/Alex-Fan777/Alex-Fan777.github.io/assets/132428764/3a76357e-643f-47a6-8d1b-85243e621213)



