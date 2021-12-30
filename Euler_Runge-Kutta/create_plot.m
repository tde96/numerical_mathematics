


clear;
clc;
close all;

%Daten einlesen
data = readtable('nm_2_werte.csv');

t = data.t;
euler_werte = data.EulerY_t_;
rk_werte = data.Runge_KuttaY_t_;

%Plot erstellen
plot(t, euler_werte, t, rk_werte, 'LineWidth',2.0);

set(gca,'FontSize',13);
xlabel('t');
ylabel('P(t)');
legend('Euler Verfahren', 'Runge-Kutta Verfahren', 'FontSize', 13);
title("P'(t) = P(t) - 0.1 * (P(t))^2 ", 'FontSize',  15);
grid on;