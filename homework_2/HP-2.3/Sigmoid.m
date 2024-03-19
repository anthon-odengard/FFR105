function sigmoid = Sigmoid(constant, inputs)
    exponent = constant .* inputs;
    sigmoid = 1./(1+exp(-exponent));
end