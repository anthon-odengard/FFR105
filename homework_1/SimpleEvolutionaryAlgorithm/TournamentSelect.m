function iSelect = TournamentSelect(fitness, pTournament)
    
    populationSize = size(fitness, 1);
    iTmp1 = 1 + fix(rand * populationSize);
    iTmp2 = 1 + fix(rand*populationSize);
    
    r = rand;
    
    if(r < pTournament)
        if(fitness(iTmp1) > fitness(iTmp2))
            iSelect = iTmp1;
        else
            iSelect = iTmp2;
        end
    else
        if (fitness(iTmp1) > fitness(iTmp2))
            iSelect = iTmp2;
        else
            iSelect = iTmp1;
        end
    end
    
end
