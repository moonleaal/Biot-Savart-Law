function [p, a_p, rho] = firstfunction(A, B, P)

% Entradas:
%   A = [xA yA zA]
%   B  = [xB yB zB]
%   P  = [xP yP zP]
%
% Salidas:
%   p   vector
%   a_p Vector unitario
%   rho  Magnitud de p (qye es la distancia perpendicular)

    tol = 1e-12; %tolerancia del segmento (¿es adecuada o cambio?)

    % primero el vector del segmento
    v = B - A;

    % vector desde A hasta P
    w = P - A;

    % es una verificacion 
    if norm(v) < tol
        error('El segmento tiene longitud de prácticamente cero.');
    end

    % componente paralela de w respecto a v
    w_par = (dot(w, v) / dot(v, v)) * v; %revisa bien esto checa parte matematica para ver si no esta mal 

    % vector perpendicular 
    p = w - w_par;

    % magnitud perpendicular
    rho = norm(p);

    % vector unitario (¿podría quedar div entre 0? PONER WARNING???) 
     a_p = p / rho;
   

end
