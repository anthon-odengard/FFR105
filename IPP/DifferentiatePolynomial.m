% This method should return the coefficients of the k-th derivative (defined by
% the derivativeOrder) of the polynomial given by the polynomialCoefficients (see also GetPolynomialValue)

function derivativeCoefficients = DifferentiatePolynomial(polynomialCoefficients, derivativeOrder)
    
    if derivativeOrder >= length(polynomialCoefficients)
        derivativeCoefficients = [];
    else
        derivativeCoefficients = polynomialCoefficients;
        for i = 1:derivativeOrder
            derivativeCoefficients = derivativeCoefficients(2:end);
            for j = 1:length(derivativeCoefficients)
                derivativeCoefficients(j) = derivativeCoefficients(j) .* j;
            end
        end
    end
end
