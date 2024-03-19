% This function should return the value of the polynomial f(x) = a0x^0 + a1x^1 + a2x^2 ...
% where a0, a1, ... are obtained from polynomialCoefficients.

function value = GetPolynomialValue(x, polynomialCoefficients)
    value = 0;
    i = 0;
    
    for coefficient = polynomialCoefficients
        value = value + x.^i * coefficient;
        i = i+1;
    end
end

 