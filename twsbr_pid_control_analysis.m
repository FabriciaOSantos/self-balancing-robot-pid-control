% Funcoes de transferencia da malha aberta e da malha fechada
% Projeto: TWSBR - Two-wheeled self-balancing robot

clear all
close all
clc

%% FT da malha aberta

num1 = [2.025 0];
den1 = [2.1095 0 -456.165];

G_ma = tf(num1, den1);
G_ma

%% FT da malha fechada

num2 = [1.2055513 80 4400.458];
den2 = [1 80 4444.9];

G_mf = tf(num2, den2);
G_mf

%% Analise da malha aberta

figure
rlocus(G_ma)
grid on
title('Mapa de polos e zeros de G_{ma}(s)')

figure
step(G_ma)
grid on
title('Resposta ao degrau unitario de G_{ma}(s)')

%% Analise da malha fechada

figure
rlocus(G_mf)
grid on
title('Mapa de polos e zeros de G_{mf}(s)')

figure
bode(G_mf)
grid on
title('Diagrama de Bode de G_{mf}(s)')

figure
step(G_mf)
grid on
title('Resposta ao degrau unitario de G_{mf}(s)')

figure
nyquist(G_mf)
grid on
title('Diagrama de Nyquist de G_{mf}(s)')
