function W_fuel = calc_fuel_breguet(SFC, E, LD)
% calc_fuel_breguet(SFC, E, LD)
% Calcula la proporcion de combustible consumida en una etapa del vuelo.
% E: Endurance (h)

    W_fuel = exp(-(E*SFC)/(LD));
    
end