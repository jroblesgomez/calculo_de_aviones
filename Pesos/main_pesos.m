%% Punto de diseno y pesos ------------------------------------------------

% Aeroib: Vicent Alcover, Miriam Garcia, Roberto Garcia, Cristina Martinez,
% Juan Robles, Barbara Romera.

% Ampliacion de Calculo de Aviones.
% 1 MU Ingenieria Aeronautica

% Obtencion de los pesos y el punto de diseno de un avion privado de
% transporte de pasajeros (20 pasajeros).
% -------------------------------------------------------------------------

%% Datos
n_pasajeros = 20;
n_pilotos = 2;
n_auxiliares = 2;

% Consumo especifico
SFC = 0.5;  % Corregir

% Eficiencia aerodinamica
LD = 10;

% Tramos vuelo tipico (en horas)
E = [0.1 0.2 2+0.5 0.5 0.1];    % Corregir

% Estimacion de pesos -----------------------------------------------------
%% Peso de la carga de pago
% En este caso es una aeronave de transporte de pasajeros
W_PL = calc_W_PL(n_pasajeros);

%% Peso de la tripulacion
W_crew = calc_W_crew(n_pilotos, n_auxiliares);

%% Peso al despegue
% Se debe iterar para obtener el peso al despegue
MTOW = 8350; % Estimado a partir de aeronaves semejantes.
W_TO_inic = MTOW*0.8;   % Corregir

% Peso en vacio inicial
WE_WTO = calc_WE_WTO(W_TO_inic);

% Peso del combustible
WF_WTO = 0.3*W_TO_inic/W_TO_inic; % REVISAR

% ITERACION
WTO_WTOant = 0;
check = [0];
W_TO = W_TO_inic;

% Iteracion (comprobar)
%while (WTO_WTOant < 0.999999 || WTO_WTOant > 1.000001)
while (WTO_WTOant ~= 1)
    W_TOant = W_TO;
    W_TO = calc_W_TO(W_crew, W_PL, WE_WTO, WF_WTO);
    WE_WTO = calc_WE_WTO(W_TO);
    WF_WTO = calc_W_F(W_TO, LD, SFC, E)/W_TO;
    
    WTO_WTOant = W_TO/W_TOant;
    check = [check WTO_WTOant];
end
    
