% nIn = the number of inputs
% nHidden = the number of hidden neurons
% nOut = the number of output neurons
% Weights (and biases) should take values in the range [-wMax,wMax]

function [wIH, wHO] = DecodeChromosome(chromosome, nIn, nHidden, nOut, wMax)
    
    chromosome = chromosome .* wMax;
    chromosomeLength = length(chromosome);
    wIHLength = (nIn + 1) .* nHidden;
    wOHLength = (nHidden + 1) .* nOut;
    
    wIHFlattened = chromosome(1:wIHLength);
    wHOFlattened = chromosome((wIHLength+1):chromosomeLength);
    wIH = reshape(wIHFlattened, (nIn + 1), []).';
    wHO = reshape(wHOFlattened, (nHidden + 1), []).';

end