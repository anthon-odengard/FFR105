% This method should perform a single step of the Newton-Raphson method.
% Note: In cases where the step cannot be completed, e.g. if f" = 0, a
% clear error message should be given.

function xNext = StepNewtonRaphson(x, fPrime, fDoublePrime)
    
    fPrime = GetPolynomialValue(x, fPrime);
    fDoublePrime = GetPolynomialValue(x, fDoublePrime);
    
    if fDoublePrime == 0
        xNext = NaN;
        throw(MEcxeption('The second order derivative at x=%x is equal to 0', x));
    else
        xNext = x - fPrime/fDoublePrime;
    end
end

