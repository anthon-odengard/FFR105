function chromosome = EncodeNetwork(wIH, wHO, wMax)
    
    flattenIH = reshape(wIH.',1,[]);
    flattenHO = reshape(wHO.',1,[]);
    chromosome = [flattenIH flattenHO] ./ wMax;

end