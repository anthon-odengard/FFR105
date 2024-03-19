% This function should run gradient descent until the L2 norm of the
% gradient falls below the specified threshold.

function x = RunGradientDescent(xStart, mu, eta, gradientTolerance)
    normL2Gradient = 1;
    x = xStart;
    while gradientTolerance < normL2Gradient
    gradF = ComputeGradient(x,mu);
    x = x - eta .* gradF;
    normL2Gradient = norm(gradF);
    end