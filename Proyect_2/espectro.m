function [M,freq]=espectro(x,fm);
%  x    --- se�al de entrada
%  fm   --- frecuencia de muestreo 
%  M    --- magnitud de la transformada de Fourier
%  freq --- eje de frecuencia en Hz 

Np=8192;                             % N�mero de puntos de la DFT
L=length(x);                         % Longitud de la se�al
Tm=(1/fm);                           % Tiempo de muestreo
Mp=ceil(Np/2);                       % Mitad de puntos de la FFT
wd=0:2*pi/Np:2*pi*(Np-1)/Np;         % Vector de Frec. discreta
wdo=zeros(1,Np);                     % Vector de Frec. disc. organizadas
wc=zeros(1,Np);                      % Vector de Frec. cont. en rad/seg
fc=zeros(1,Np);                      % Vector de Frec. cont. en Hz
z=abs(fft(x,Np));                    % Magnitud de FFT de la se�al
zo=zeros(1,Np);                      % Vector para reorganizar la FFT
t=0:Tm:Tm*(L-1);                     % Vector de tiempo

% Reorganizaci�n de frecuencias
wdo(Np-Mp+1:end)=wd(1:Mp);
wdo(1:Np-Mp)=wd(Mp+1:end)-2*pi;

% Frecuencia continua en Hz
wc=wdo/Tm;
fc=wc/(2*pi);

% Reorganizaci�n de la FFT
zo(Np-Mp+1:end)=z(1:Mp,1);
zo(1:Np-Mp)=z(Mp+1:end,1);

M=zo;
freq=fc;

disp(max(freq)-min(freq)) % We obtain the fundamental frequency
% Magnitude to decibels
db = 10*log(M);

figure;
plot(freq,db);
title('Magnitude of Fourier Transform');   
xlabel('Frequency ( Hz )');
ylabel('Decibel ( dB )');