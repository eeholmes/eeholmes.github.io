---
title: 'Notes on computing the Fisher Information matrix for MARSS models. Part II Louis 1982'
date: 2016-05-19
permalink: /posts/2016/05/FI-II/
tags:
  - Fisher Information
  - MARSS
---

<div dir="ltr" style="text-align: left;" trbidi="on">
<script type="text/x-mathjax-config">
  MathJax.Hub.Config({ TeX: { equationNumbers: {autoNumber: "AMS"} } });
</script>
<script src='https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' type='text/javascript'>
</script>
<i>MathJax can be iffy.  Try reloading if the equations don't show up.</i><br /><br />

Part II.  Background on Fisher Information is in <a href="http://parsimoniouspursuits.blogspot.com/2016/05/notes-on-computing-fisher-information.html">Part I</a>. <br /><br />

So how do we compute \( I(\hat{\theta}) \) or \( \mathcal{I}(\hat{\theta},y) \) (in Part I)?  In particular, can we use the analytical derivatives of the full log-likelihood that are part of the EM algorithm?  Many researchers have worked on this idea. My notes here were influenced by this blog post <a href="http://statisticalrecipes.blogspot.com/2012/03/em-algorithm-and-confidence-intervals.html">EM Algorithm: Confidence Intervals </a>on the same topic, which got me started.  
This blog post is mainly a discussion of the result by Louis (1982) on calculation of the Fisher Information matrix from the 'score' function that one takes the derivative of in the M-step of the EM algorithm.
</br></br>
The 'score' function used in the EM algorithm for a MARSS model is
\begin{equation} 
Q(\theta | \theta_j) = E_{X|y,\theta_j } [\log f_{XY}(X,y|\theta) ]
\end{equation} 
It is the expected value taken over the hidden random variable \( X \) of the full data log-likelihood at \( Y=y \) [3]; full means it is a function of all the random variables in the model,  which includes the hidden or latent variables.
\( x, y \) is the full 'data', the left side of the \( x \) state equation and the \( y \) observation equation.  We take the expectation of this full data likelihood conditioned on the observed data \( y \) and \( \theta_j \) which is the value of \( \theta \) at the j-th iteration of the EM algorithm. Although \( Q(\theta | \theta_j) \) looks a bit hairy, actually the full-data likelihood may be very easy to write down and considerably easier than the data likelihood \( f(y|\theta) \).  The hard part is often the expectation step, however for MARSS models the Kalman filter-smoother algorithm computes the expectations involving \( X \) and Holmes (2010) shows how to compute the expectations involving \( Y \), which comes up when there are missing values in the dataset (missing time steps, say).  
</br></br>
In the M-step of the EM algorithm, we take the derivative of \( Q(\theta | \theta_j) \) with respect to \( \theta \) and solve for the \( \theta \) where
\[ \frac{\partial Q(\theta | \theta_j ) }{\partial \theta} = 0. \]
It would be nice if one could use the following to compute the observed Fisher Information 
\[  - \frac{\partial^2 Q(\theta | \hat{\theta}) }{\partial \theta^2 } \right|_{\theta = \hat{\theta} } \]
\( Q(\theta | \hat{\theta}) \) is our score function at the end of the EM algorithm, when \( \theta = \hat{\theta} \).  \( Q \) is a function of \( \theta \), the model parameters, and will have terms like \( E(X|Y=y, \hat{\theta}) \), the expected value of \( X \) conditioned on \( Y=y \) and the MLE.  Those are the expectations coming out of the Kalman filter-smoother.  We take the second derivative of \( Q \) with respect to \( \theta \).  That is straight-forward for the MARSS equations.  You take the first derivative of \( Q \) with respect to \( \theta \), which you already have from the update or M-step equations, and take the derivative of that with respect to \( \theta \).
<br /><br />
Conceptually, this
\[  - \left.\frac{\partial^2 Q(\theta | \hat{\theta}) }{\partial \theta^2 } \right|_{\theta = \hat{\theta} } = \left.\frac{\partial^2 E_{X|y,\hat{\theta} } [\log f(X,y|\theta) ] }{\partial \theta^2 } \right|_{\theta = \hat{\theta} } \]
looks a bit like the observed Fisher Information:
\begin{equation}\label{obsFI}
\mathcal{I}(\hat{\theta},y) = - \left.\frac{\partial^2\log f(y|\theta)}{\partial \theta^2} \right|_{\theta=\hat{\theta}}
\end{equation}
except that instead of the data likelihood \( f(y|\theta) \), we use the expected likelihood \( E_{X|y,\hat{\theta} } [\log f_{XY}(X,y|\theta) ] \).  The expected likelihood is the full likelihood with the \( X \) and \( XX^\top \) random variables replaced by their expected values assuming \( \theta = \hat{\theta} \) and \( Y=y \). The problem is that \( E_{X|y,\theta } [\log f(X,y|\theta) ] \) is a function of \( \theta \) and by fixing it at \( \hat{\theta}\) we are not accounting for the uncertainty in that expectation.  What we need is something like
<br /><br />
Information with X fixed at expected value - Information on expected value of X
<br /><br />
so we account for the fact that we have over-estimated the information from the data by treating the hidden random variable as fixed. The same issue arises when we compute confidence intervals using the estimate of the variance without accounting for the fact that this is an estimate and thus has uncertainty.
Louis (1982) and Oakes (1999) are concerned with how to do this correction or adjustment. 
<br />
<h2>Louis 1982 approach</h2>
The following is equations 3.1, 3.2 and 3.3 in Louis (1982) translated to the MARSS case.  In the MARSS model, we have two random variables, \( X(t) \) and \( Y(t) \). The joint distribution of \( \{X(t), Y(t) \} \)  conditioned on \( X(t-1) \) is multivariate normal.  Our full data set includes all time steps, \( \{X, Y \} \).
<br /><br />
Let's call the full state at time t \( \{x ,y\} \), the value of the \( X \) and \( Y \) at all times t. The full state can be an unconditional random variable, \( \{X,Y\} \) or a conditional random variable \( \{X,y\} \) (conditioned on \(Y=y\).
Page 227 near top of Louis 1982 becomes
\begin{equation} 
\lambda(x,y,\theta) = \log\{ f_{XY}(x,y|\theta) \} \label{lambdaz}
\end{equation}
\begin{equation}  
\lambda^*(y,\theta) = \log\{ f_Y(y|\theta) \} = \log \int_X f_{XY}(x,y|\theta)dx \label{lambday}
\end{equation}
\( f(.|\theta) \) is the probability distribution of the random variable conditioned on \(\theta\). \( \lambda \) is the full likelihood; 'full' means is includes both \( x \) and \( y \).  \( \lambda^* \) is the likelihood of \( y \) alone.  It is defined by the marginal distribution of \( y \) [1]; the integral over \( X \) on the right side of \ref{lambday}.  For a MARSS model, the data likelihood can be written easily as a function of the Kalman filter recursions (which is why you can write a recursion for the information matrix based on derivatives of \( \lambda^* \); see Part III).
<br /><br />
Next equation down.  Louis doesn't say this and his notation is not totally clear, but the expectation right above section 3 (and in his eqn 3.1) is a conditional expectation. This is critical to know to follow his derivation of equation 3.1 in the appendix. \( \theta_j \) is his \( \theta(0) \); it is the value of \( \theta \) at the last EM iteration.

\begin{equation}\label{expLL}
E_{X|y,\theta_j}[ \lambda( X, y, \theta)] = \int_X \lambda( X, y, \theta) f_{X|Y}(x|Y=y, \theta_j) dx 
\end{equation}
My 'expectation' notation is a little different than Louis'.  The subscript on the E shows what is being integrated *(\(X\) ) and what are the conditionals.  

The term \( f_{X|Y}(x|Y=y, \theta_j) \) is the probability of \( x \) conditioned on \( Y=y \) and \( \theta=\theta_j \).  The subscript on \(f\) indicates that we are using the probability distribution of \(x\) conditioned on \(Y=y\).
For the EM algorithm, we need to distinguish between \( \theta \) and \( \theta_j \) because we maximize with respect to \( \theta \) not \( \theta_j \).  If we just need the expectation at \( \theta \), no maximization step, then we just use \( \theta \) in \( f(.|\theta) \) and the subscript on E.
<br /><br />
Before moving on with the derivation, notice that in \ref{expLL}, we fix \( y \), the data.  We are not treating that as a random variable.  We could certainly treat \( E_{\theta_j}[ \lambda( \{X, y\}, \theta)] \) as some function \(g(y) \) and consider the random variable \( g(Y) \).  But Louis (1982) will not go that route.  \( y \) is fixed.  Thus we are talking about the <em>observed</em> Fisher Information rather than the <em>expected</em> Fisher Information.  The latter would take an expectation over the possible \( y \) generated by our model with parameters at the MLE.
<br />

<h3>Derivation of equation 3.1 in Louis 1982</h3>

Now we can derive equation 3.1 in Louis (1982).  I am going to combine the info in Louis' section 3.1 and the appendix on the derivation of 3.1.  Before proceeding, Louis is using 'denominator' format for his matrix derivations; I normally use denominator format but I will follow his convention here.  \( \theta \) is a column vector of parameters and the likelihood \( f(.|\theta)\) is scalar.  Under 'denominator format', \( f^\prime(.|\theta) = df(.|\theta)/d\theta) \) will be a column vector. \( f^{\prime\prime}(.|\theta) = d^2f(.|\theta)/d\theta d\theta^\top)\) will be a matrix in Hessian format (the first \(d\theta\) goes 1 to \(n\) down columns and the second \(d\theta\) does 1 to \(n\) across rows). 
<br/><br/>
Take the derivative of \ref{lambdaz} with respect to \( \theta \) to define \( S(z,\theta) \).
\begin{equation}
S(x,y,\theta)=\lambda^\prime(x,y,\theta)=\frac{d \log\{f_{XY}(x,y|\theta)\} }{d \theta}= 
\frac{df(x,y|\theta)/d\theta}{f(x,y|\theta)} =
\frac{f^\prime(x,y|\theta)}{f(x,y|\theta)}\label{Sz}
\end{equation}
Take the derivative of the far right side of \ref{lambday} with respect to \( \theta \) to define \( S^*(y,\theta) \).  For the last step (far right), I used \( f_Y(y|\theta) = \int_X f_{XY}(x,y|\theta)dx \), the definition of the marginal distribution [1], to change the denominator.

\begin{equation}\label{Sy}
S^*(y,\theta)=\lambda^{*\prime}(y,\theta)=\frac{ d \log \int_X f_{XY}(x,y|\theta)dx  }{d \theta} = 
\frac{ \int_X f_{XY}^\prime(x,y|\theta) dx }{ \int_X f_{XY}(x,y|\theta)dx } =
\frac{ \int_X f_{XY}^\prime(x,y|\theta) dx }{ f_Y(y|\theta) } 
\end{equation}
Now multiply the integrand in the numerator by \( f_{XY}(x,y|\theta)/f_{XY}(x,y|\theta) \).  The last step (far right) uses \ref{Sz}.
\begin{equation}\label{intfprime}
\int_X f_{XY}^\prime(x,y|\theta) dx   =
\int_X \frac{f_{XY}^\prime(x,y|\theta)f_{XY}(x,y|\theta)}{f_{XY}(x,y|\theta)} dx =
\int_X \frac{f_{XY}^\prime(x,y|\theta)}{f_{XY}(x,y|\theta)}f_{XY}(x,y|\theta) dx =
\int_X S(x,y,\theta) f_{XY}(x,y|\theta) dx 
\end{equation}
We  combine \ref{Sy} and \ref{intfprime}:
\begin{equation}\label{Sstar}
S^*(y,\theta)=
\frac{ \int_X f_{XY}^\prime(x,y|\theta) dx }{ f_Y(y|\theta) } =
\int_X S(x,y,\theta)  \frac{ f_{XY}(x,y|\theta) }{ f_Y(y|\theta) } dx =
\int_X S(x,y,\theta) f_{X|Y}(x|Y=y,\theta) dx
\end{equation}
The second to last step used the fact that \( f_Y(y|\theta) \) does not involve \( x \) thus we can bring it into the integral.  This gives us \( f_{XY}(x,y|\theta)/f_Y(y|\theta)\). This is the  probability of \( x \) conditioned on \( Y=y \) [2].
<br /><br />
The last step in the derivation of equation 3.1 is to recognize that the far right side of \ref{Sstar} is the conditional expectation in 3.1.  Louis does not actually write out the expectation in 3.1 and the notation is rather vague. But the expectation in equation 3.1 is the conditional expectation on the far right side of \ref{Sstar}.
\begin{equation}\label{Louise3p1}
S^*(y,\theta)=\int_X S(x,y,\theta) f_{X|Y}(x|Y=y,\theta) dx=E_{X|y,\theta} [ S(X,y,\theta) ]
\end{equation}
using my notation for a conditional expectation which slightly different than Louis'.
At the MLE, \( S^*(y,\hat{\theta})=0\) since that is how the MLE is defined (it's where the derivative of the data likelihood is zero).

<h3>Derivation of equation 3.2 in Louis 1982</h3>

The meat of Louis 1982 is equation 3.2.  The observed Fisher Information matrix \ref{obsFI} is 
\begin{equation}\label{obsFI32}
 \mathcal{I}(\theta,y) = B^*(y,\theta) = -S^\prime(x,y,\theta) = - \lambda^{*\prime\prime}(y,\theta) = 
- \frac{\partial^2\log f_Y(y|\theta)}{\partial \theta \partial \theta^\top} 
\end{equation}
The first 3 terms on the left are just show that all are notation that refers to the observed Fisher Information.  The 4th term is one of the ways we can compute the observed Fisher Information at \(  \theta \) and the far right term shows that derivative explicitly.  
<br /><br />

We start by taking the second derivative of \ref{lambdaz} with respect to \( \theta \) to define \( B(x,y,\theta) \). We use \( S^\prime(z,\theta) \) as written in \ref{Sz}.
\begin{equation}\label{B1}
\mathcal{I}(\theta,x,y) = B(x,y,\theta)=-\lambda^{\prime\prime}(x,y,\theta) = -S^\prime(x,y,\theta) = 
-\frac{d[f_{XY}^\prime(x,y|\theta)/f_{XY}(x,y|\theta)]}{d \theta^\top}
\end{equation}
The transpose of \(d\theta \) is because we are taking the second derivative \( d^2 l/d\theta d\theta^\top \) (the Hessian of the log-likelihood); \( d\theta d\theta \) wouldn't make sense as that that would be a column vector times a column vector.
<br /><br />
To do the derivative on the far right side of \ref{B1}, we first need to recognize the form of the equation.  \( f_{XY}^\prime(x,y|\theta) \) is a column vector and \( f(x,y|\theta) \) is a scalar, thus the thing we are taking the derivative of has the form \( \overrightarrow{h}(\theta)/g(\theta) \); the arrow over \(h\) is indicating that it is a (column) vector while \(g()\) is a scalar.  Using the chain rule for vector derivatives, we have
\[ \frac{ d (\overrightarrow{h}(\theta)/g(\theta))}{d \theta^\top} = \frac{d\overrightarrow{h}(\theta)}{d \theta^\top}\frac{1}{g(\theta)} - \frac{\overrightarrow{h}(\theta)}{ g(\theta)^2 }\frac{ g(\theta) }{ d \theta^\top } \]
Thus (notice I'm writing the equation for the negative of \( B(x,y,\theta) \),

\begin{equation}\label{B2}
-B(x,y,\theta) = 
\frac{d(f_{XY}^\prime(x,y|\theta)/f_{XY}(x,y|\theta))}{d \theta^\top} =
\frac{f_{XY}^{\prime\prime}(x,y|\theta)}{f_{XY}(x,y|\theta)} 
- \frac{f_{XY}^\prime(x,y|\theta)f^\prime(z|\theta)^\top}{ f_{XY}(x,y|\theta)^2 }=
\frac{f_{XY}^{\prime\prime}(x,y|\theta)}{f_{XY}(x,y|\theta)} - S(x,y|\theta)S(x,y|\theta)^\top
\end{equation}

<br /><br />
Let's return to \ref{obsFI32} and take the derivative of \( \lambda^{*\prime}(y,\theta)\) with respect to \( \theta \) using the form shown in equation \ref{Sy}.  I have replaced the integral in the denominator by \( f_Y(y|\theta) \) and used the same chain rule used for \ref{B2}.

\begin{align}
\begin{split}
\lambda^{*\prime\prime}(y,\theta)=
d\left( \int_X f_{XY}^\prime(x,y|\theta) dx \middle/ f_Y(y|\theta) \right)/d\theta^\top = \\
\frac{\int_X f_{XY}^{\prime\prime}(x,y|\theta) dx }{f_Y(y|\theta)}-
\frac{\int_X f_{XY}^\prime(x,y|\theta)dx }{f_Y(y|\theta)} \left(\frac{\int_X f_{XY}^\prime(x,y|\theta)dx}{f_Y(y|\theta)}\right) =
\frac{\int_X f_{XY}^{\prime\prime}(x,y|\theta) dx }{f_Y(y|\theta)}-
S^*(y|\theta)S^*(y|\theta)^\top
\end{split}
\end{align}

The last substitution uses \ref{Sy}.  Thus,
\begin{equation}\label{B4}
\lambda^{*\prime\prime}(y,\theta)=
\frac{\int_X f_{XY}^{\prime\prime}(x,y|\theta) dx }{f_Y(y|\theta)}-
S^*(y|\theta)S^*(y|\theta)^\top
\end{equation}


<br />
Let's look at the integral of the second derivative of \(f_{XY}(x,y|\theta)\) in \ref{B4}:

\begin{equation}\label{B5}
\left( \int_X f_{XY}^{\prime\prime}(x,y|\theta) dx \middle/ f_Y(y|\theta) \right) =
 \int_X \frac{f_{XY}^{\prime\prime}(x,y|\theta) dx}{ f_{XY}(x,y|\theta) }\frac{f_{XY}(x,y|\theta)}{ f_Y(y|\theta)} dx=
 \int_X \frac{f_{XY}^{\prime\prime}(x,y|\theta) dx}{ f_{XY}(x,y|\theta) }f_{X|Y}(x|Y=y,\theta) dx
\end{equation}

This is the conditional expectation \( E_{X|y,\theta} [ f_{XY}^{\prime\prime}(x,y|\theta) dx/f_{XY}(x,y|\theta) ] \) that we see 5 lines above the references in Louis (1982).  Using \ref{B2} we can write this in terms of \( B(x,y|\theta) \):
\begin{equation}\label{B6}
 \int_X \frac{f_{XY}^{\prime\prime}(z|\theta) dx}{ f_{XY}(x,y|\theta) } = -B(x,y|\theta)+S(x,y|\theta)S(x,y|\theta)^\top
\end{equation}

Combining \ref{B4}, \ref{B5}, and \ref{B6}, we can write the equation above the references in Louis:
\begin{equation}\label{B7}
\lambda^{*\prime\prime}(y,\theta)= E_{X|y,\theta} [ - B(X,y|\theta)+S(X,y|\theta)S(X,y|\theta)^\top]-S^*(y|\theta)S^*(y|\theta)^\top
\end{equation}
The negative of this is the observed Fisher Information (\ref{obsFI32}) which gives us equation 3.2 in Louis (1982):
\begin{equation}\label{Louismain}
\mathcal{I}(\theta,y) = E_{X|y,\theta} [ B(X,y|\theta)] - E_{X|y,\theta} [ S(X,y|\theta)S(X,y|\theta)^\top]+S^*(y|\theta)S^*(y|\theta)^\top
\end{equation}

<h3>Derivation of equation 3.3 in Louis 1982</h3>

Louis states that  "The first term in (3.2) is the conditional expected full data observed information matrix, while the last two produce the expected information for the conditional distribution of X given \(X \in R\)."  His X is my  \( \{X,Y\}\) and \( X \in R \) means \( Y=y \) in my context.  He writes this in simplified form with \(X\) replaced by \(XY\): 
\[ I_Y = I_{XY} - I_{X|Y} \]
\[ \mathcal{I}(\theta,y) = E_{X|y,\theta} [\mathcal{I}(\theta,X,y)] - I_{X|Y} \]
Let's see how this is the case.
<br /><br />
The full data observed information matrix is 
\[ \mathcal{I}(\theta,x,y) = -\lambda^{\prime\prime}(x,y|\theta) = B(x,y,\theta)\]
This is simply the definition that Louis gives to \( B(x,y,\theta) \). We do not know \(x\) so we do not know the full data observed Information matrix.  But we have the distribution of \( x \) conditioned on our data \( y \).
\[ E_{X|y,\theta} [ B(X,y|\theta)] \]
is thus the expected full data observed information matrix conditioned on our observed data \( y \).
So this is the first part of his statement.<br /><br />
The second part of his statement takes a bit more effort to work out.  First we substitute \( S^*(y|\theta) \) with 
\( E_{X|y,\theta} [ S(X,y|\theta) ] \) from \ref{Louise3p1}. This gives us this:
\begin{equation}\label{ES1}
 E_{X|y,\theta} [ S(X,y|\theta)S(X,y|\theta)^\top ]-S^*(y|\theta)S^*(y|\theta)^\top =
E_{X|y,\theta} [ S(X,y|\theta)S(X,y|\theta)^\top ]-E_{X|y,\theta} [ S(X,y|\theta) ]E_{X|y,\theta} [ S(X,y|\theta)^\top ]
\end{equation}
Using the computational form of the variance, \( var(X)=E(XX)-E(X)E(X) \), we can see that \ref{ES1} is the conditional variance of \( S(X,y|\theta) \).
\[ var_{X|y,\theta}( S(X,y|\theta) ) \]
But the variance of the first derivative of \( f^\prime(X|\theta) \) is the <em>expected</em> Fisher Information of \( X \) [4].  In this case, it is the expected Fisher Information of the hidden state \( X \), where we specify that \( X \) has the conditional distribution \( f_{X|Y} (X | Y=y,\theta) \).  Thus we have the second part of Louis' statement.
<br/><br/>

<h3>Relating Louis 1982 to the update equations in the MARSS EM algorithm</h3>

The main result in Louis (1982) (\ref{Louismain}) can be written
\begin{equation}\label{Louismain2}
\mathcal{I}(\theta,y) = E_{X|y,\theta} [ B(X,y|\theta)] - var_{X|y,\theta} [ S(X,y|\theta) ]
\end{equation}
The M-step of the EM algorithm involves the first derivative of the log-likelihood with respect to \(\theta\), \( S(X,y|\theta) \), since it involves setting this derivative to zero:
\begin{equation} 
Q^\prime(\theta | \theta_j) = d( E_{X|y,\theta_j } [\log f_{XY}(X,y|\theta) ])/d\theta = E_{X|y,\theta_j } [\log f^\prime_{XY}(X,y|\theta) ] = E_{X|y,\theta_j } [ S(X,y|\theta) ]
\end{equation} 
With the MARSS model, \( S(X,y|\theta) \) is analytical and we can also compute \( B(X,y|\theta)\), the second derivative, analytically.  

<br /><br />

'The difficulty arises with this term: \( var_{X|y,\theta} [ S(X,y|\theta) ] \).  The \(S(X,y|\theta)\) is a summation from \(t=1\) to \(T\) that involves \( X_t \) or \( X_t X_{t-1}^top \) for some parameters. When we do the cross-product, we will end up with terms like  \( E[ X_t X_{t+k}^\top ] \) and \( E[ X_t X_t^\top X_{t+k}X_{t+k}^\top ] \).  The latter is not a problem; all the random variables in a MARSS models are multivariate normal and the k-th central moments can be expressed in terms of the first and second moments [5], but that will still leave us with terms like \( E[ X_t X_{t+k}^\top ] \)---the smoothed covariance between \(X\) at time \(t\) and \(t+k\) conditioned on all the data (\(t=1:T\)).  
<br /><br />
Computing these is not hard.  These are the the n-step apart smoothed covariances. Harvey (1989), page 148, discusses how to use the Kalman filter to get the n-step ahead prediction covariances and a similar approach can be used (presumably) to get the \( V(t,t+k) \) smoothed covariances.  However this will end up being computationally expensive because we will need all of the \( t,t+k \) combinations, i.e., {1,3}, {1,4}, ..., {2,3}, {2,4}, .... etc.. That will be a lot: T + T-1 + T-2 + T-3 = 
\( T(T+1)/2 \), smoothed covariances.  
Lystig and Hughes (2012) and Duan and Fulop (2011) discuss this issue for in a related application of the approach in Louis (1982).  They suggest that you do not need to include covariances with a large time separation because the covariance goes to zero.  You just need to include enough time-steps. 

<h3>Conclusion</h3>

I think the approach of Louis (1982) is not viable for MARSS models. The derivatives \(B(x,y|\theta)\) and \(S(x,y|\theta)\) are straight-forward (if tedious) to compute analytically following the approach in Holmes (2010).  But the computing all the n-step smoothed covariances is going to be very slow and each computation involves many matrix multiplications.  However, one could compute \( \mathcal{I}(\theta,y) \) via simulation using \ref{Louismain2}.  It is easy enough to simulate \( X\) using the MLEs and then you compute \(B(x_b,y|\theta)\) and \(S(x_b,y|\theta)\) for each where \(x_b\) is the bootstrapped \(x\) time series and \(y\) is the data.  I don't think it makes sense to do that for MARSS models since there are two recursion approaches for computing the observed and expected Fisher Information using \(f(y|\theta)\) and the Kalman filter equations (Harvey 1989, pages 140-142; Cavanaugh and Shumway 1996).
<hr>

<h2>Footnotes</h2>
[1] Given a joint probability distribution of \( \{X,Y\}\), the marginal distribution of \( Y \) is \( \int_X f(X,Y) dx \).  Discussions of the estimators for MARSS models often use the property of the marginal distributions of a multivariate normal without actually stating that this property is being used.  The step in the derivation will just say, 'Thus' with no indication of what property was just used. <br />Reviewed here: http://fourier.eng.hmc.edu/e161/lectures/gaussianprocess/node7.html 
If you have a joint likelihood of some random variables, and you want the likelihood of a subset of those random variables, then you compute the marginal distribution.  i.e. you integrate over the random variables you want to get rid of:
\[ L(\theta | y) ] = \int_X L(\theta | X,Y) p(x|Y=y, \theta_j) dx |_{Y=y}  \].
So we integrate out \( X \) from the full likelihood and then set \( Y=y \) to get the likelihood we want to maximize to get the MLE \( \theta \) (if we want MLEs).
<br /><br />
The marginal likelihood is a little different.  The marginal likelihood is used when you want to get rid of some of the parameters, nuisance parameters.  The integral you use is different: 
\[ L(\theta_1|y) = \int_{\theta_2} p(y|\theta_1,\theta_2) p(\theta_2|\theta_1)d\theta_2 \]
This presumes that you have \( p(\theta_2|\theta_1) \).
<br /><br />
The expected likelihood is different yet again:  
\[ E_{X,Y|Y=y,\theta_j} [L(\theta | X,Y) ] = \int_X L(\theta | X,Y) p(x|Y=y, \theta_j) dx  \].
On the surface it looks like the equation for \( L(\theta|y) \) but it is different.  \( \theta_j \) is not \( \theta \).  It is the parameter value at which we are computing the expected value of \( X \).  Maximizing the \(  E_{X,Y|Y=y,\theta_j} [L(\theta | X,Y) ] \) will increase the likelihood but will not take you to the MLE---you have to imbed this maximization in the EM algorithm that walks up the likelihood surface.
<br/><br/>
[2] P(A|B) = P(A \cup \B)/P(B)
<br/><br/>
[3] I normally think about \( Y \) as being partially observed (missing values) so I also take the expectation over \( Y(2) \) conditioned on \(Y(1)\), where (1) means observed and (2) means missing.  In Holmes (2010), this is done in order to derive general EM update equations for the missing values case.  But my notation is getting hairy, so for this write-up, I'm treating \(Y\) as fully observed; so no \(Y(2)\) and I've dropped the integrals (expectations) over \( Y(2) \).
<br/><br/>
[4] http://people.missouristate.edu/songfengzheng/Teaching/MTH541/Lecture%20notes/Fisher_info.pdf
<br/><br/>
[5] https://en.wikipedia.org/wiki/Multivariate_normal_distribution#Higher_moments

<br /><br />
<h2>Papers and online references</h2>
Ng, Krishnan and McLachlan 2004<br />
The EM algorithm.  Section 3.5 discusses standard errors approaches<br />
https://www.econstor.eu/dspace/bitstream/10419/22198/1/24_tk_gm_skn.pdf<br />
http://hdl.handle.net/10419/22198
<br /><br />
Efron and Hinkley 1978<br />
(argues that the observed Fisher Information is better than expected Fisher Information in many/some cases.  The same paper argues for the likelihood ratio method for CIs)<br />
Assessing the accuracy of the maximum likelihood estimator: observed versus expected Fisher Information<br />
https://www.stat.tamu.edu/~suhasini/teaching613/expected_observed_information78.pdf
<br /><br />
Hamilton 1994<br />
http://web.pdx.edu/~crkl/readings/Hamilton94.pdf
<br /><br />
Hamilton's exposition assumes you know the marginal distribution of a multivariate normal.  Scroll down to the bottom.<br />
http://fourier.eng.hmc.edu/e161/lectures/gaussianprocess/node7.html
<br /><br />
Meilijson 1989<br />
Fast improvement to the EM algorithm on its own terms<br />
http://www.jstor.org/stable/pdf/2345847.pdf
<br /><br />
Oakes 1999<br />
Direct calculation of the information matrix via the EM algorithm<br />
http://www.jstor.org/stable/pdf/2680653.pdf?_=1463187953783
<br /><br />
Ho, Shumway and Ombao 2006<br />
(this has a brief statement that Oakes 1999 derivatives are hard to compute.  It doesn't say why. It says nothing of Louis 1982.)<br />
Chapter 7, The state-space approach to modeling dynamic processes<br />
Models for Intensive Longitudinal Data<br />
https://books.google.com/books?hl=en&lr=&id=Semo20xZ_M8C
<br /><br />
Louis 1982<br />
(so elegant. alas, MARSS deals with time series data...)<br />
Finding the observed information matrix when using the EM algorithm<br />
http://www.jstor.org/stable/pdf/2345828.pdf<br />
http://www.markirwin.net/stat220/Refs/louis1982.pdf
<br /><br />
Lystig and Hughes 2012 <br />
(helped me better understand why Louis 1982 is hard for MARSS models)<br />
Exact computation of the observed information matrix for hidden Markov models<br />
http://www.tandfonline.com.offcampus.lib.washington.edu/doi/abs/10.1198/106186002402
<br /><br />
Duan and Fulop 2011<br />
(also helped me better understand why Louis 1982 is hard for MARSS models)<br />
A stable estimator for the information matrix under EM for dependent data<br />
http://www.rmi.nus.edu.sg/DuanJC/index_files/files/EM_Variance_March%205%202007.pdf<br />
http://link.springer.com/article/10.1007/s11222-009-9149-4
<br /><br />
Naranjo 2007  (didn't use)<br />
State-space models with exogenous variables and missing data, PhD U of FL<br />
http://etd.fcla.edu/UF/UFE0021568/naranjo_a.pdf
<br /><br />
Dempster, Laird, Rubin 1977<br />
(didn't really use but looked up more info on the 'score' function Q)<br />
Maximum likelihood for incomplete data via the EM algorithm<br />
http://web.mit.edu/6.435/www/Dempster77.pdf
<br /><br />
van Dyk, Meng and Rubin 1995<br />
(this looks promising)<br />
Maximum likelihood estimation via the ECM algorithm: computing the asymptotic variance<br />
http://wwwf.imperial.ac.uk/~dvandyk/Research/95-sinica-secm.pdf
<br /><br />
Cavanaugh and Shumway 1996<br />
On computing the expected Fisher Information Matrix for state-space model parameters<br />
<br /><br />
Harvey 1989, pages 140-143, Section 3.4.5 Information matrix<br />
Forecasting, structural time series models and the Kalman filter<br />

</div>