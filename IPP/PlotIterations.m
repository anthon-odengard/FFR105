% This method should plot the polynomial and the iterates obtained
% using NewtonRaphsonStep (if any iterates were generated).

function PlotIterations(polynomialCoefficients, iterationValues)
    if ~isempty(iterationValues)
        [xMinIterationsValues,xMaxIterationsValues] = bounds(iterationValues);
        xRange = linspace(xMinIterationsValues-1, xMaxIterationsValues+1);
        polynomialValues = [];
        polynomialAtIterationValues = [];

        for x = xRange
            polynomialValue = GetPolynomialValue(x, polynomialCoefficients);
            polynomialValues = [polynomialValues, polynomialValue];
        end

        for x = iterationValues
            polynomialAtIterationValue = GetPolynomialValue(x, polynomialCoefficients);
            polynomialAtIterationValues = [polynomialAtIterationValues, polynomialAtIterationValue]
        end
        fprintf('hi')
        hold on
        plot(xRange, polynomialValues)
        plot(iterationValues, polynomialAtIterationValues,'o');
        hold off

    else
        fprintf('PlotIterationsempty failed, empty input vector \n\n')
    end

