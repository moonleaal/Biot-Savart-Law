function a_phi = direccionCampo(A, B, a_p)

% DIRECCIONCAMPO

% Calcula la direccion del campo magnetico usando
% a_phi = a_l x a_p
%
% Entradas:
%   A  - Punto inicial del segmento [x y z]
%   B -Punto final del segmento   [x y z]
%   a_p -Vector unitario perpendicular al segmento

% Salida:
%   a_phi - Direccion del campo magnetico

    tol = 1e-12;

    % 1) Vector del segmento
    l = B - A;

    % 2) Verificar que el segmento no sea casi 0
    if norm(l) < tol
        error('El segmento tiene longitud practicamente de cero.');
    end

    % 3) Vector unitario en direccion del segmento
    a_l = l / norm(l);

    % 4) Direccion del campo magnetico
    a_phi = cross(a_l, a_p);

end
