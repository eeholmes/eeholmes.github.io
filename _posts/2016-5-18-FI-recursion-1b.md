---
title: 'Test big'
date: 2016-05-18
permalink: /posts/2016/05/test-big/
tags:
  - Fisher Information
  - MARSS
---

<div dir="ltr" style="text-align: left;" trbidi="on">

<script type="text/x-mathjax-config">
MathJax.Hub.Config({
  TeX: { equationNumbers: {autoNumber: "AMS"} },
  tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]}
});
</script>
<script src='https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' type='text/javascript'>
</script>

*MathJax can be iffy. Try reloading if the equations don't show up.*

Background on Fisher Information is in [Part I](http://parsimoniouspursuits.blogspot.com/2016/05/notes-on-computing-fisher-information.html).

Computing Fisher Information
============================

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
\[  -\left.\frac{\partial^2 Q(\theta | \hat{\theta}) }{\partial \theta^2 } \right|_{\theta = \hat{\theta} } \]
\( Q(\theta | \hat{\theta}) \) is our score function at the end of the EM algorithm, when \( \theta = \hat{\theta} \).  \( Q \) is a function of \( \theta \), the model parameters, and will have terms like \( E(X|Y=y, \hat{\theta}) \), the expected value of \( X \) conditioned on \( Y=y \) and the MLE.  Those are the expectations coming out of the Kalman filter-smoother.  We take the second derivative of \( Q \) with respect to \( \theta \).  That is straight-forward for the MARSS equations.  You take the first derivative of \( Q \) with respect to \( \theta \), which you already have from the update or M-step equations, and take the derivative of that with respect to \( \theta \).
<br /><br />
Conceptually, this

\[  - \left.\frac{\partial^2 Q(\theta | \hat{\theta}) }{\partial \theta^2 } \right|_{\theta = \hat{\theta} } = \left.\frac{\partial^2 E_{X|y,\hat{\theta} } [\log f(X,y|\theta) ] }{\partial \theta^2 } \right|_{\theta = \hat{\theta} } \]


\begin{equation} 
-\left.\frac{\partial^2 Q(\theta | \hat{\theta}) }{\partial \theta^2 } \right|_{\theta = \hat{\theta} }
= \left.\frac{\partial^2 E_{X|y,\hat{\theta} }[ \log f(X,y|\theta) ] }{\partial \theta^2 }\right|_{\theta=\hat{\theta}}
\end{equation}

looks a bit like the observed Fisher Information:

\begin{equation}\label{obsFI}
\mathcal{I}(\hat{\theta},y) = -\left.\frac{\partial^2\log f(y|\theta)}{\partial \theta^2} \right|_{\theta=\hat{\theta}}
\end{equation}

</div>