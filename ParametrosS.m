clear all
clc
data = importdata("A1.dat") % Importar la base de datos tanto en .dat o .mat
data=data.data;

% la base de datos posee 4000 datos y 3 columnas
% (Frecuencia,Magnitud,Angulo)

F=data(:,1); % Frecuencia
Mag=data(:,2); % Magnitud
Mag_dB=10*log(Mag);

figure(1)
plot(F,Mag)
title("Parametro S antena con acople")
xlabel("Frecuencia [Hz]")
ylabel("Magnitud [dB]")
grid on

%%
data2 = importdata("SPCDSTUB.dat") % Importar la base de datos tanto en .dat o .mat 
data2=data2.data;

F1=data2(:,1); % Frecuencia
Mag1=data2(:,2); % Magnitud
Mag1_dB=10*log(Mag1);

figure(2)
plot(F1,Mag1)
title("Parametro S antena sin acoplado")
xlabel("Frecuencia [Hz]")
ylabel("Magnitud [dB]")
grid on
