clear all
clc
data = importdata("A1.dat")  % Importar la base de datos tanto en .dat o .mat
data=data.data;

% la base de datos posee 4000 datos y 3 columnas
% (Frecuencia,Magnitud,Angulo)

F=data(:,1); % Frecuencia
Mag=data(:,2); % Magnitud

vswr=(1+Mag)./(1-Mag); % calculo del VSWR
% Grafica
figure(1)
plot(F,vswr)
title("VSWR antena con acople")
xlabel("Frecuencia [Hz]")
ylabel("Magnitud [U]")
grid on

%%
data3 = importdata("SPCDSTUB.dat")% Importar la base de datos tanto en .dat o .mat
data3=data3.data;

F1=data3(:,1); % Frecuencia
Mag1=data3(:,2); %Magnitud

vswr2=(1+Mag1)./(1-Mag1); %calculo del VSWR
%grafica
figure(3)
plot(F1,vswr2)
title("VSWR antena sin acople")
xlabel("Frecuencia [Hz]")
ylabel("Magnitud [U]")
grid on
