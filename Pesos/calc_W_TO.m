function W_TO = calc_W_TO(W_crew, W_PL, WE_WTO, WF_WTO)
% calc_W_TO(W_crew, W_PL, W_E/W_TO, W_F/W_TO). 
% Itera y obtiene el peso al despegue empleando la formula la de la
% diapositiva 10 del tema 5.

    W_TO = (W_crew + W_PL)/(1 - WE_WTO - WF_WTO);
    
end