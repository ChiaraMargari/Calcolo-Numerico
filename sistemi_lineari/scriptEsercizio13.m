A= [16 0 0 0; 5 11 0 0; 9 7 6 0; 4 14 15 1;];
b= [16 16 22 34]';
[xi] = esercizio13(A, b);
fprintf("Soluzione: ");
disp(xi);