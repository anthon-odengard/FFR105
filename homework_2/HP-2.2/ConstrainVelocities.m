function constrainedVelocities = ConstrainVelocities(swarmVelocities, velocityMax)
    
    constrainedVelocities = swarmVelocities;
    [illegalVelocityRows,illegalVelocityColumns] = find(abs(swarmVelocities) > velocityMax);
    illegalVelocitiesLinearIndex = sub2ind(size(swarmVelocities), illegalVelocityRows.', illegalVelocityColumns.');
    numberOfIllegalVelocities = length(illegalVelocitiesLinearIndex);

    for i = 1:numberOfIllegalVelocities
        illegalVelocityIndex = illegalVelocitiesLinearIndex(i);
        illegalVelocity = constrainedVelocities(illegalVelocityIndex);

        if illegalVelocity > 0
            constrainedVelocities(illegalVelocityIndex) = velocityMax;
        else
            constrainedVelocities(illegalVelocityIndex) = -velocityMax;
        end
    end
    
end
