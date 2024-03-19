classdef TruckModel

    properties
        ambientTemperature = 0;
        brakeTemperature = 0;
        forceGravity = 0;
        forceBrake = 0;
        forceEngineBrake = 0;
        totalForce = 0;
        velocity = 0;
        mass = 0;
        currentGear = 0;
        brakeTemperatureMax = 0;
        deltaTemperature = 0;
        gearboxConstraint = 0;
    end

    methods
        function truck = TruckModel(ambientTemperature, velocity, mass, startGear, brakeTemperature, brakeTemperatureMax)
            truck.ambientTemperature = ambientTemperature;
            truck.deltaTemperature = brakeTemperature - ambientTemperature;
            truck.velocity = velocity;
            truck.mass = mass;
            truck.currentGear = startGear;
            truck.brakeTemperatureMax = brakeTemperatureMax;
            
        end

        function truck = ForceGravity(truck, alpha, g)
            truck.forceGravity = sin(alpha) .* truck.mass .* g;
        end

      
        function truck = ForceBrake(truck, g, pedalPressure, brakeTemperatureMax)
    
            brakeThreshold = truck.brakeTemperatureMax - 100;
            brakeExponent = -(truck.brakeTemperature-(truck.brakeTemperatureMax-100)) ./ 100;
            if truck.brakeTemperature < brakeThreshold
                truck.forceBrake = truck.mass .* g .* pedalPressure ./ 20;
            else
                truck.forceBrake = truck.mass .* g .* pedalPressure .* exp(brakeExponent) ./ 20;
            end         
        end

        function truck = ForceEngineBrake(truck, brakeConstant)

            gearBrakeForce = [7, 5, 4, 3, 2.5, 2, 1.6, 1.4, 1.2, 1] .* brakeConstant;
            truck.forceEngineBrake = gearBrakeForce(truck.currentGear);

        end

        function truck = BrakeTemperature(truck, tau, pedalPressure, brakeConstant, timeDelta)
    
            if pedalPressure < 0.01
                truck.deltaTemperature = truck.deltaTemperature - (truck.brakeTemperature - truck.ambientTemperature)/tau .*timeDelta;
                truck.brakeTemperature = truck.ambientTemperature + truck.deltaTemperature;
            else
                truck.deltaTemperature = truck.deltaTemperature + (brakeConstant .* pedalPressure) .* timeDelta;
                truck.brakeTemperature = truck.ambientTemperature + truck.deltaTemperature;
            end
    
        end

        function truck = UpdateVelocity(truck, timeDelta)
            totalForce = (truck.forceGravity - truck.forceBrake - truck.forceEngineBrake);
            truck.velocity = truck.velocity + totalForce ./truck.mass .* timeDelta;
            if abs(truck.gearboxConstraint - timeDelta) <= abs(timeDelta)
                truck.gearboxConstraint = 0;
            else
                truck.gearboxConstraint = truck.gearboxConstraint - timeDelta;
            end
        end

        function truck = GearChange(truck, input)
         if input > 0.7 && truck.currentGear < 10 && truck.gearboxConstraint == 0
             truck.currentGear = truck.currentGear + 1;
             truck.gearboxConstraint = 2;
         elseif input < 0.3 && truck.currentGear > 1 && truck.gearboxConstraint == 0
            truck.currentGear = truck.currentGear - 1;
            truck.gearboxConstraint = 2;
         else
             % do nothing
         end
        end

        

    end
end



