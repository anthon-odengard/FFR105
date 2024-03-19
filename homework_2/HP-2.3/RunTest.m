chromosome = BestChromosome;
iSlope =4 ;
iDataSet = 3;
weigthMax = 10;          
numberOfInputs = 3;	
numberOfHidden = 15;
numberOfOutputs = 2;

[velocityList, slopeAngleList, pedalPressureList, gearList, brakeTemperatureList, distansTraveledList, brakeForceList] = RunTruckModel(chromosome, iSlope, iDataSet,numberOfInputs,numberOfHidden, numberOfOutputs, weigthMax);

hold on
subplot(6,1,1)
plot(distansTraveledList, slopeAngleList)
title('Slope angle')
xlabel('distance') 
ylabel('deg') 
subplot(6,1,2)
plot(distansTraveledList, pedalPressureList)
title('Pedal pressure')
xlabel('distance') 
ylabel('pressure') 
subplot(6,1,3)
plot(distansTraveledList, gearList)
title('Gearbox')
xlabel('distance') 
ylabel('gear') 
subplot(6,1,4)
plot(distansTraveledList, velocityList)
title('Velocity')
xlabel('distance') 
ylabel('m/s') 
subplot(6,1,5)
plot(distansTraveledList, brakeTemperatureList)
title('brakeTemperature')
xlabel('distance') 
ylabel('kelvin') 

hold off 