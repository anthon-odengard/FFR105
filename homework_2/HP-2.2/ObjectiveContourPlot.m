function ObjectiveContourPlot(xMin, xMax)
    
    PSOContour = figure(1);
    axis([xMin(1), xMax(1), xMin(2), xMax(2)]);
    fcontour(@(x1,x2) EvaluateSwarmObjective([x1, x2]), [xMin(1), xMax(1), xMin(2), xMax(2)])
    
    %{
    PSOSurface = figure(2);
    axis([xMin(1), xMax(1), xMin(2), xMax(2)]);
    fsurf(@(x1,x2) EvaluateSwarmObjective([x1, x2]), [xMin(1), xMax(1), xMin(2), xMax(2)])
    %}