% Definir la matriz A y el vector b
A = [10, 2, -1; -3, -6, 2; 1, 1, 5];
b = [27; -61.5; -21.5];

% Realizar la descomposición LU sin pivote
[L, U] = lu(A);

% Mostrar las matrices L y U
disp('Matriz L:');
disp(L);
disp('Matriz U:');
disp(U);

% Resolver el sistema Ly = b (sustitución hacia adelante)
y = L\b;

% Resolver el sistema Ux = y (sustitución hacia atrás)
x = U\y;

% Mostrar la solución
disp('Solución del sistema:');
disp(x);

% Verificar que A*x sea igual a b
disp('Comprobación A*x:');
disp(A*x);

% Graficar en 3D las soluciones
[x1, x2] = meshgrid(-10:0.1:10, -10:0.1:10);
x3 = (27 - 10*x1 - 2*x2); % Ecuación 1 reescrita
surf(x1, x2, x3);
xlabel('x1');
ylabel('x2');
zlabel('x3');
title('Solución en 3D');
