function WE_WTO = calc_WE_WTO(W_TO)
% calc_WE_WTO(W_TO). 
% Metodo rapido de Raymer para obtencion del peso en vacio. Devuelve la
% relacion entre el peso en vacio y el peso al despegue.
    
    A = 1.02;
    C = -0.06;  % Jet transport
    K_us = 1;   % Fixed sweep
    
    WE_WTO = A * W_TO^(C) * K_us;
    
end