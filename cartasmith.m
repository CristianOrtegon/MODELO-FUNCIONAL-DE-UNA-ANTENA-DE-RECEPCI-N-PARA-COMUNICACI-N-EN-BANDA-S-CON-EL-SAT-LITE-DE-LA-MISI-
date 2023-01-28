clc;clear all;
data = importdata("A1.dat");%
data=data.data;
f=data(:,1); %Frecuencia
cr=[data(:,2)]; %Magnitud del coeficiente de reflexiÃ³n
acr=[data(:,3)]; %Angulo del coeficiente de reflexiÃ³n en grados
acrr=acr.*(pi/180); %Angulo del coeficiente de reflexiÃ³n en radianes

smithplot(f,cr.*exp(1j*acrr));
hg.LineStyle = '--';


