function W_crew = calc_W_crew(n_pilotos, n_auxiliares)
% W_crew = calc_W_crew(numero pilotos, numero auxiliares). Calcula el peso
% de la tripulacion (kg).

    W_crew = (n_pilotos + n_auxiliares)*(80 + 13.5);
end