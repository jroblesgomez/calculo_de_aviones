function W_F = calc_W_F(W_TO, LD, SFC, E)
% calc_W_F(peso al despegue, eficiencia ae., consumo esp., autonomia).
% Calcula el peso del combustible
% Peso al despegue W_TO [kg]
% Eficiencia aerodinamica: L/D
% Consumo especifico: SFC [1/h]
% Autonomia: vector con los tiempos de cada tramo en horas

    for i = 1:length(E)
        rel_W_tramo(i) = calc_fuel_breguet(SFC, E(i), LD);
    end
    
    W_F = W_TO - W_TO*(prod(rel_W_tramo));

end