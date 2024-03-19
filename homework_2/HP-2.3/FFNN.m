function output = FFNN(inputs,chromosome,nIn, nHidden,nOut, wMax)
    
    [weightsHiddenLayer, weightsOutputLayer] = DecodeChromosome(chromosome,nIn, nHidden,nOut, wMax);
    hiddenLocalFeild = weightsHiddenLayer(:, 1:end- 1) * inputs.' + weightsHiddenLayer(:, end);
    hiddenActivations = Sigmoid(1, hiddenLocalFeild);
    outputLocalFeild = weightsOutputLayer(:, 1:end - 1) * hiddenActivations +  weightsOutputLayer(:, end);
    output = Sigmoid(1, outputLocalFeild);

