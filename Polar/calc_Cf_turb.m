function Cf = calc_Cf_turb(L, k, M)
% calc_Cf_turb(sustententacion de la parte Li, acabado superficial k, Mach). 
% Calculo del coeficiente de friccion para capa limite turbulenta.
% Correlacion empirica.

% Tema 6. Diapositiva 14.
    Re = 38.21 * (L/k)^(1.053);
    Cf = 0.445*(log10(Re)^(-2.58))*(1+0.144*M^2)^(-0.65);
    
end