function fitness = Evaluatenetwork(chromosome, iSlope, iDataSet, nIn, nHidden, nOut, wMax)
    
    ambientTemperature = 283;
    temperatureConstant =  40;
    tau = 30;
    startVelocity = 20;
    brakeConstant = 3000;
    mass = 20000;
    vMax = 25;
    vMin = 1;
    alphaMax = 10;
    startGear = 7;
    g = 9.82;
    brakeStartTemperature = 500;
    brakeTemperatureMax = 750;
    
    truck = TruckModel(ambientTemperature, startVelocity, mass, startGear, brakeStartTemperature, brakeTemperatureMax);
    i = 1;
    velocity = [];
    distanceTraveled = 0;
    timeDelta = 0.1;

    truck = TruckModel(ambientTemperature, startVelocity, mass, startGear, brakeStartTemperature, brakeTemperatureMax);
    while distanceTraveled < 1000 && truck.velocity < vMax && truck.velocity > vMin && truck.brakeTemperature < brakeTemperatureMax
         
        alpha = GetSlopeAngle(distanceTraveled, iSlope, iDataSet);
        alphaRadian = deg2rad(alpha);

        velocityInput = truck.velocity ./ vMax;
        alphaInput = alpha ./ alphaMax;
        brakeInput = truck.brakeTemperature ./ brakeTemperatureMax;
        outputs =  FFNN([velocityInput, alphaInput, brakeInput], chromosome, nIn, nHidden, nOut, wMax);
        pedalPressure = outputs(1);
        gearChange = outputs(2);

        truck = truck.ForceGravity(alphaRadian, g);
        truck = truck.ForceBrake(g, pedalPressure);
        truck = truck.BrakeTemperature(tau, pedalPressure, temperatureConstant, timeDelta);
        truck = truck.GearChange(gearChange);
        truck = truck.ForceEngineBrake(brakeConstant);
        truck = truck.UpdateVelocity(timeDelta);

        distanceTraveled = distanceTraveled + truck.velocity .* timeDelta .* cos(alphaRadian);
        velocity(i) = truck.velocity;
   
        i = i+1;
    end
  
    fitness = mean(velocity).^(1./2) .* distanceTraveled;