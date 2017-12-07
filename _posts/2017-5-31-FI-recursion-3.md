test mathjax 2
================
2017-05-31

<div dir="ltr" style="text-align: left;" trbidi="on">
<script type="text/x-mathjax-config">
  MathJax.Hub.Config({ TeX: { equationNumbers: {autoNumber: "AMS"} } });
</script>
<script src='https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' type='text/javascript'>
</script>
Notes on computing the Fisher Information matrix for MARSS models <a href="http://parsimoniouspursuits.blogspot.com/2016/05/notes-on-computing-fisher-information.html">Part I Background</a>, <a href="http://parsimoniouspursuits.blogspot.com/2016/05/notes-on-computing-fisher-information_19.html">Part II Louis 1982</a>, <a href="http://parsimoniouspursuits.blogspot.com/2016/06/notes-on-computing-fisher-information.html">Part III Overview of Harvey 1989</a>. <br /><br />

Part III Introduced the approach of Harvey (1989) for computing the expected and observed Fisher Information matrices by using the prediction error form of the log-likelihood function. Here I show the Harvey (1989) recursion on page 143 for computing the derivatives in his equations.

Derivatives needed for the 2nd derivative of the conditional log-likelihood
---------------------------------------------------------------------------

Equations 3.4.66 and 3.4.69 in Harvey (1989) have first and second derivatives of *v*<sub>*t*</sub> and *F*<sub>*t*</sub> with respect to $ \_i $ and *θ*<sub>*j*</sub>. These in turn involve derivatives of the parameter matrices and of $\\tilde{x}\_{t|t}$ and $\\tilde{V}\_{t|t}$. Harvey shows all the first derivatives, and it is easy to compute the second derivatives by taking the derivatives of the first. <br /><br /> The basic idea of the recursion is simple, if a bit tedious.
<ul>
<li>
First we set up matrices for all the first derivatives of the parameters.
</li>
<li>
Then starting from t=1 and working forward, we will do the recursion (described below) for all *θ*<sub>*i*</sub> and we store the first derivatives of *v*<sub>*t*</sub>, *F*<sub>*t*</sub>, $\\tilde{x}\_{t|t}$ and $\\tilde{V}\_{t|t}$ with respect to *θ*<sub>*i*</sub>.
</li>
<li>
Then we go through the parameter vector a second time, to get all the second derivatives with respect to *θ*<sub>*i*</sub> and *θ*<sub>*j*</sub>.
</li>
<li>
We input the first and second derivatives of *v*<sub>*t*</sub> and *F*<sub>*t*</sub> into equations 3.4.66 and 3.4.69 to get the observed Fisher Information at time t and add to the Fisher Information from the previous time step. The Fisher Information matrix is symmetric, so we can use an outer loop from *θ*<sub>1</sub> to *θ*<sub>*p*</sub> (*p* is the number of parameters) and an inner loop from *θ*<sub>*i*</sub> to *θ*<sub>*p*</sub>. That will be *p*(*p* − 1)/2 loops for each time step.
</ul>
The end result with be the observed Fisher Information matrix using equation 3.4.66 and using 3.4.69.

Outline of the loops in the recursion
-------------------------------------

This is a forward recursion starting at t=1. We will save the previous time step's $ v\_t / \_i $ and $ F\_t / \_i $. That will be 2*p* (*n* × 1) vectors and 2*n* (*n* × *n*) matrices. We do not need to store all the previous time steps since this is a one-pass recursion unlike the Kalman smoother, which is forward-backward.

<br /><br /> Set-up<br/> Number of parameters = p.<br/> Create Iijt and oIijt which are *p* × *p* matrices.<br/> Create dvit which is a *n* × *p* matrix. n Innovations and p *θ*<sub>*i*</sub>.<br/> Create d2vijt which is a *n* × *p* × *p* array. n Innovations and p *θ*<sub>*i*</sub>.<br/> Create dFit which is a *n* × *n* × *p* array. *n* × *p* Sigma matrix and p *θ*<sub>*i*</sub>.<br/> Create d2Fijt which is a *n* × *n* × *p* × *p* array. *n* × *n* Sigma matrix and p *θ*<sub>*i*</sub>.<br/>

<br/><br/> Outer loop from *t* = 1 to *t* = *T*.<br/> Inner loop over all MARSS parameters: x0, V0, Z, a, R, B, u, Q. This is `par$Z`, e.g., and is a vector of the estimated parameters elements in Z.<br/> Inner loop over parameters in parameter matrix, so, e.g. over the rows in the column vector `par$Z`.<br/> Keep track of what parameter element I am on via p counter.<br/>

The form of the parameter derivatives
-------------------------------------

Within the recursion, we have terms like, $ M/\_i$, where M means some parameter matrix. We can write M as $ vec(M)=f+D\_m $, where *θ*<sub>*m*</sub> is the vector of parameters that appear in M. This is the way that matrices are written in Holmes (2010). So
\begin{equation} 
\begin{bmatrix}2a+c&b\\b&a+1\end{bmatrix}
\end{equation}
is written in vec form as
\begin{equation} 
\begin{bmatrix}0\\0\\0\\1\end{bmatrix}+\begin{bmatrix}2&0&1\\ 0&1&0\\ 0&1&0\\ 1&0&0 \end{bmatrix}\begin{bmatrix}a\\b\\c\end{bmatrix}
\end{equation}
The derivative of this with respect to $ \_i=a$ is
\begin{equation} \label{dpar}
\begin{bmatrix}0\\0\\0\\1\end{bmatrix}+\begin{bmatrix}2&0&1\\ 0&1&0\\ 0&1&0\\ 1&0&0 \end{bmatrix}\begin{bmatrix}1\\0\\0\end{bmatrix}
\end{equation}
So in MARSS, $ M/\_i$ would be
<pre>
dthetai=matrix(0,ip,1); dthetai[i,]=1 #set up the d theta_i bit.
dM=unvec(f+D%*%dthetai,dim(M)) #only needed if M is matrix
</pre>
The reason is that MARSS allows any linear constraint of the form *α* + *β**a* + *β*<sub>2</sub>*b*, etc. The vec form allows me to work with a generic linear constraint without having to know the exact form of that constraint. The model and parameters are all specified in vec form with f, D, and p matrices (lower case = column vector). <br /><br /> The second derivative of a parameter matrix with respect to $ \_j $ is always 0 since has no parameters in it, only constants.

Derivatives of the innovations and variance of innovations
----------------------------------------------------------

Equation 3.4.71b in Harvey shows $ v\_t / \_i$. Store result in dvit\[,p\].
\begin{equation}
\frac{\partial v_t}{\partial \theta_i}= -Z_t \frac{\partial \tilde{x}_{t|t-1}}{\partial \theta_i}- \frac{Z_t}{\partial \theta_i}\tilde{x}_{t|t-1}- \frac{\partial a_t}{\partial \theta_i}
\end{equation}
$\\tilde{x}\_{t|t-1}$ is the one-step ahead prediction covariance output from the Kalman filter, and in MARSSkf is xtt1\[,t\]. Next, use equation 3.4.73, to get $ F\_t / \_i$. Store result in dFit\[,,p\].
\begin{equation}
\frac{\partial F_t}{\partial \theta_i}= 
 \frac{\partial Z_t}{\partial \theta_i} \tilde{V}_{t|t-1} Z_t^\top + 
Z_t \frac{\partial \tilde{V}_{t|t-1}}{\partial \theta_i} Z_t^\top +
Z_t \tilde{V}_{t|t-1} \frac{\partial Z_t^\top}{\partial \theta_i} + \frac{\partial (H_t R_t H_t^\top)}{\partial \theta_i}
\end{equation}
$\\tilde{V}\_{t|t-1}$ is the one-step ahead prediction covariance output from the Kalman filter, and in MARSSkf is denoted Vtt1\[,,t\].

<h3>
Recursion for derivatives of states and variance of states
</h3>
<hr>
If t=1
<hr>
<ul>
<li>
<b>Case 1</b>. *π* = *x*<sub>0</sub> is treated as a parameter and *V*<sub>0</sub> = 0. For any *θ*<sub>*i*</sub> that is not in *π*, *Z* or *a*, ∂*v*<sub>1</sub>/∂*θ*<sub>*i*</sub>  = 0. For any *θ*<sub>*i*</sub> that is not in *Z* or *R*, ∂*F*<sub>1</sub>/∂*θ*<sub>*i*</sub>  = 0 (a *n* × *n* matrix of zeros).
<br/><br/> From equation 3.4.73a:
\begin{equation} 
\frac{\partial \tilde{x}_{1|0}}{\partial\theta_i } = \frac{\partial B_1}{\partial \theta_i} \pi + B_1 \frac{\partial \pi}{\partial \theta_i} + \frac{\partial u_t}{\partial \theta_i}
\end{equation}
From equation 3.4.73b and using *V*<sub>0</sub> = 0:
\begin{equation} 
\frac{\partial \tilde{V}_{1|0}}{\partial\theta_i } = \frac{\partial B_1}{\partial \theta_i} V_0 B_1^\top + B_1 \frac{\partial V_0}{\partial \theta_i} B_1^\top + B_1 V_0 \frac{\partial B_1^\top}{\partial \theta_i} + \frac{\partial (G_t Q_t G_t^\top)}{\partial \theta_i} = \frac{\partial (G_t Q_t G_t^\top)}{\partial \theta_i}
\end{equation}
</li>
<br/><br/>
<li>
<b>Case 2</b>. *π* = *x*<sub>1|0</sub> is treated as a parameter and *V*<sub>1|0</sub> = 0.
$$ \\frac{\\partial \\tilde{x}\_{1|0}}{\\partial \\theta\_i}=\\frac{\\partial \\pi}{\\partial \\theta\_i}
 \\text{ and }
 \\partial V\_{1|0}/\\partial\\theta\_i = 0 $$
.
</li>
<br/><br/>
<li>
<b>Case 3</b>. $ x\_0$ is specified by a fixed prior. *x*<sub>0</sub> = *π* and *V*<sub>0</sub> = *Λ*. The derivatives of these are 0, because they are fixed. <br/><br/> From equation 3.4.73a and using *x*<sub>0</sub> = *π* and ∂*π*/∂*θ*<sub>*i*</sub> = 0:
\begin{equation} 
\frac{\partial \tilde{x}_{1|0}}{\partial\theta_i } = \frac{\partial B_1}{\partial \theta_i} \pi + B_1 \frac{\partial \pi}{\partial \theta_i} + \frac{\partial u_t}{\partial \theta_i}=\frac{\partial B_1}{\partial \theta_i} \pi + \frac{\partial u_t}{\partial \theta_i}
\end{equation}
From equation 3.4.73b and using *V*<sub>0</sub> = *Λ* and ∂*Λ*/∂*θ*<sub>*i*</sub> = 0:
\begin{equation} 
\frac{\partial \tilde{V}_{1|0}}{\partial\theta_i } = \frac{\partial B_1}{\partial \theta_i} V_0 B_1^\top + B_1 \frac{\partial V_0}{\partial \theta_i} B_1^\top + B_1 V_0 \frac{\partial B_1^\top}{\partial \theta_i} + \frac{\partial (G_t Q_t G_t^\top)}{\partial \theta_i} = \frac{\partial B_1}{\partial \theta_i} \Lambda B_1^\top +  B_1 \Lambda \frac{\partial B_1^\top}{\partial \theta_i} + \frac{\partial (G_t Q_t G_t^\top)}{\partial \theta_i}
\end{equation}
</li>
<br/><br/>
<li>
<b>Case 4</b>. *x*<sub>1|0</sub> is specified by a fixed prior. *x*<sub>1|0</sub> = *π* and *V*<sub>1|0</sub> = *Λ*. ∂*V*<sub>1|0</sub>/∂*θ*<sub>*i*</sub> = 0 and ∂*x*<sub>1|0</sub>/∂*θ*<sub>*i*</sub> = 0.
</li>
<br/><br/>
<li>
<b>Case 5</b>. Estimate $ V\_0$ or $ V\_{1|0}$. That is unstable (per Harvey 1989, somewhere). I don't allow that in the MARSS package.
</li>
</ul>
<br/><br/> When coding this recursion, I will loop though the MARSS parameters (x0, V, Z, a, R, B, u, Q) and within that loop, loop through the individual parameters within the parameter vector. So say Q is diagonal and unequal. It has m variance parameters, and I'll loop through each. <br/><br/> Now we have $\\frac{\\partial \\tilde{x}\_{1|0}}{\\partial \\theta\_i}$ and $\\frac{\\partial \\tilde{V}\_{1|0}}{\\partial \\theta\_i}$ for *t* = 1 and we can proceed.
<hr>
If *t* &gt; 1
<hr>
The derivative of $\\tilde{x}\_{t|t-1}$ is (3.4.73a in Harvey)
\begin{equation} 
\frac{\partial \tilde{x}_{t|t-1}}{\partial\theta_i } = \frac{\partial B_t}{\partial \theta_i} \tilde{x}_{t-1|t-1} + B_t \frac{\partial \tilde{x}_{t-1|t-1}}{\partial \theta_i} + \frac{\partial u_t}{\partial \theta_i}
\end{equation}
Then we take the derivative of this to get the second partial derivative.
\begin{align} 
\frac{\partial^2 \tilde{x}_{t|t-1}}{\partial\theta_i \partial\theta_j} = 
\frac{\partial^2 B_t}{\partial\theta_i \partial\theta_j} \tilde{x}_{t-1|t-1} +
 \frac{\partial B_t}{\partial \theta_i}\frac{\partial \tilde{x}_{t-1|t-1}}{\partial \theta_j} +
 \frac{\partial B_t}{\partial \theta_j} \frac{\partial \tilde{x}_{t-1|t-1}}{\partial \theta_i} + 
 B_t \frac{\partial^2 \tilde{x}_{t-1|t-1}}{\partial\theta_i \partial\theta_j} + 
\frac{\partial^2 u_t}{\partial\theta_i \partial\theta_j}\\
= \frac{\partial B_t}{\partial \theta_i}\frac{\partial \tilde{x}_{t-1|t-1}}{\partial \theta_j} +
 \frac{\partial B_t}{\partial \theta_j} \frac{\partial \tilde{x}_{t-1|t-1}}{\partial \theta_i} + 
 B_t \frac{\partial^2 \tilde{x}_{t-1|t-1}}{\partial\theta_i \partial\theta_j}
\end{align}
In the equations, $\\tilde{x}\_{t|t}$ is output by the Kalman filter. In MARSSkf, it is called xtt\[,t\]. $\\tilde{x}\_{t-1|t-1}$ would be called xtt\[,t-1\]. The derivatives of $\\tilde{x}\_{t-1|t-1}$ is from the next part of the recursion (below). </br></br> The derivative of $\\tilde{V}\_{t|t-1}$ is (3.4.73b in Harvey)
\begin{equation} \label{derivVtt1}
\frac{\partial \tilde{V}_{t|t-1}}{\partial\theta_i } =
 \frac{\partial B_t}{\partial \theta_i} \tilde{V}_{t-1|t-1} B_t^\top + B_t \frac{\partial \tilde{V}_{t-1|t-1}}{\partial \theta_i} B_t^\top + B_t \tilde{V}_{t-1|t-1} \frac{\partial B_t^\top}{\partial \theta_i} + \frac{\partial (G_t Q_t G_t^\top)}{\partial \theta_i} 
\end{equation}
The second derivative of $\\tilde{V}\_{t|t-1}$ is obtained by taking the derivative of and eliminating any second derivatives of parameters:
\begin{align} 
\frac{\partial^2 \tilde{V}_{t|t-1}}{\partial\theta_i \partial\theta_j} =
\frac{\partial B_t}{\partial \theta_i} \frac{\tilde{V}_{t-1|t-1}}{\partial\theta_j} B_t^\top + 
\frac{\partial B_t}{\partial \theta_i} \tilde{V}_{t-1|t-1} \frac{\partial B_t^\top}{\partial \theta_j} + 
\frac{\partial B_t}{\partial \theta_j} \frac{\partial \tilde{V}_{t-1|t-1}}{\partial \theta_i} B_t^\top + 
B_t \frac{\partial^2 \tilde{V}_{t-1|t-1}}{\partial\theta_i \partial\theta_j} B_t^\top + \\
B_t \frac{\partial \tilde{V}_{t-1|t-1}}{\partial \theta_i} \frac{\partial B_t^\top}{\partial \theta_j} + 
\frac{\partial B_t}{\partial \theta_j} \tilde{V}_{t-1|t-1} \frac{\partial B_t^\top}{\partial \theta_i} + 
B_t \frac{\tilde{V}_{t-1|t-1}}{\partial\theta_j} \frac{\partial B_t^\top}{\partial \theta_i}
\end{align}
In the derivatives, $\\tilde{V}\_{t|t}$ is output by the Kalman filter. In MARSSkf, it is called Vtt\[,t\]. $\\tilde{V}\_{t-1|t-1}$ would be called Vtt\[,t-1\]. The derivatives of $\\tilde{V}\_{t-1|t-1}$ is from the rest of the recursion (below).
<hr>
Rest of the recursion equations are the same for all t.

From equation 3.4.74a:

\begin{equation} 
\frac{\partial \tilde{x}_{t|t}}{\partial\theta_i } = \frac{\partial \tilde{x}_{t|t-1}}{\partial \theta_i} + \frac{\partial \tilde{V}_{t|t-1}}{\partial \theta_i} Z_t^\top F_t^{-1}v_t + 
\tilde{V}_{t|t-1} \frac{\partial Z_t^\top}{\partial \theta_i} F_t^{-1}v_t - 
\tilde{V}_{t|t-1} Z_t^\top F_t^{-1}\frac{\partial F_t}{\partial \theta_i}F_t^{-1}v_t
+ \tilde{V}_{t|t-1} Z_t^\top F_t^{-1}\frac{\partial v_t}{\partial \theta_i}
\end{equation}
$\\tilde{V}\_{t|t-1}$ is output by the Kalman filter. In MARSSkf, it is called `Vtt1[,t]`. *v*<sub>*t*</sub> are the innovations. In MARSSkf, they are called `Innov[,t]`. <br/><br/> From equation 3.4.74b:
\begin{equation} 
\begin{split} 
\frac{\partial \tilde{V}_{t|t}}{\partial\theta_i } = &
\frac{\partial \tilde{V}_{t|t-1}}{\partial \theta_i} - 
\frac{\partial \tilde{V}_{t|t-1}}{\partial \theta_i} Z_t^\top F_t^{-1}Z_t \tilde{V}_{t|t-1} -
\tilde{V}_{t|t-1} \frac{\partial Z_t^\top}{\partial \theta_i} F_t^{-1}Z_t \tilde{V}_{t|t-1} + 
\tilde{V}_{t|t-1} Z_t^\top F_t^{-1}\frac{\partial F_t}{\partial \theta_i}F_t^{-1}Z_t \tilde{V}_{t|t-1} - \\
&\tilde{V}_{t|t-1} Z_t^\top F_t^{-1}\frac{\partial Z_t}{\partial \theta_i} \tilde{V}_{t|t-1} -
\tilde{V}_{t|t-1} Z_t^\top F_t^{-1}Z_t \frac{\partial \tilde{V}_{t|t-1}}{\partial \theta_i}
\end{split}
\end{equation}
Repeat for next element in parameter matrix.<br/> Repeat for parameter matrix.<br/><br/>     Loop over i = 1 to p.<br/>     Loop over j = i to p.<br/>     Compute *I*<sub>*i**j*</sub>(*θ*) and add to previous time step. This is equation 3.4.69 with expectation dropped. Store in Iij\[i,j\] and Iij\[j,i\].
\begin{equation}
I_{ij}(\theta)_t = I_{ji}(\theta)_t = \frac{1}{2}\left[ tr\left[ F_t^{-1}\frac{\partial F_t}{\partial \theta_i}F_t^{-1}\frac{\partial F_t}{\partial \theta_j}\right]\right] + \left(\frac{\partial v_t}{\partial \theta_i}\right)^\top F_t^{-1}\frac{\partial v_t}{\partial \theta_j}
\end{equation}
Add on to previous one:
*I*<sub>*i**j*</sub>(*θ*)=*I*<sub>*i**j*</sub>(*θ*)+*I*<sub>*i**j*</sub>(*θ*)<sub>*t*</sub>
     Repeat for next j.<br/>     Repeat for next i.<br/><br/> Repeat for next *t*. <br/><br/> At the end, $ I\_{ij}() $ is the observed Fisher Information Matrix.

Note that *Q* and *R* do not appear in ∂*v*<sub>*t*</sub>/∂*θ*<sub>*i*</sub>, but all the other parameters do appear. So the second term in $I\_{ij}() $ is always zero between *Q* and *R* and any other parameters. In the second term, *u* and *a* do not appear, but every other terms do appear. So the first term in $I\_{ij}() $ is always zero between *u* and *a* and any other parameters. This means that there is always zero covariance between *u* or *a* and *Q* or *R*. But this will not be the case between *Q* or *R* and *B* or *Z*.

Part of the motivation of implementing the Harvey (1989) recursion is that currently in MARSS, I use a numerical estimate of the Fisher Information matrix by using one of R's functions to return the Hessian. But it often returns errors. I might improve it if I constrained it. If I am only estimating *u*, *a*, *Q* and *R*, I could do a two-step process. Get the Hessian holding the variances at the MLEs and then repeat with *u* and *a* at the MLEs.
