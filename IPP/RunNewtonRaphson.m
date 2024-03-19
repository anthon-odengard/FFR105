% This function should run the Newton-Raphson method, making use of the
% other relevant functions (StepNewtonRaphson, DifferentiatePolynomial, and
% GetPolynomialValue). Before returning iterationValues any non-plottable values 
% (e.g. NaN) that can occur if the method fails (e.g. if the input is a
% first-order polynomial) should be removed, so that only values that
% CAN be plotted are returned. Thus, in some cases (again, the case of
% a first-order polynomial is an example) there may be no points to plot.

function iterationValues = RunNewtonRaphson(polynomialCoefficients, startingPoint, tolerance)
    iterationDifference = 1;
    iterationValues = startingPoint;
    fPrimeCoefficients = DifferentiatePolynomial(polynomialCoefficients, 1);
    fDoublePrimeCoefficients = DifferentiatePolynomial(polynomialCoefficients, 2);
    
    while tolerance <= iterationDifference
        x = iterationValues(end);
        try
        xNext = StepNewtonRaphson(x, fPrimeCoefficients, fDoublePrimeCoefficients);
        catch 
            warning('Program could not finis, division by zero in StepNewtonRaphson')
            return
        end
        iterationDifference = abs(xNext - x);
        iterationValues = [iterationValues; xNext];
    end
end