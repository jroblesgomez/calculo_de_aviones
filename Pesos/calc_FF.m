function FF = calc_FF(opt, par1, par2, par3, par4)
% Calcula el factor de forma.
% Opciones. 1:Fuselaje. 2:Gondolas motores. 3:Alas-estabilizadores
% Para fuselaje y gondolas: FF = calc_FF(opcion, alargamiento lambda)
% Para alas y estabilizadores: FF = calc_FF(opcion, pto. max. curvatura
% x/c, espesor t/c, Mach, ang. flecha).

% Tema 6.

if (nargin == 2 && opt == 1)
    FF = 1 + (60/(par1^3)) + (par1/400);
elseif (nargin == 2 && opt == 2)
    FF = 1 + (0.35/(par1^3));
elseif (nargin == 5 && opt == 3)
    FF = (1 + (0.6/par1)*(par2) + 100*par2^4) * (1.34*par3^0.18 *...
        (cos(par4)^0.28));
else
    fprintf('Parametros incorrectos. Use help para mas informacion\n');
end

    
end