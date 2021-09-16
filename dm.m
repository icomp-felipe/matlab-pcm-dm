%% Limpeza da área de trabalho do Matlab
clc; clear all; close all;

%% Definindo o sinal de entrada

a = 2;                          % Amplitude  (V)
f = 1;                          % Frequência (Hz)
fs = 65 * f;                    % Frequência de Amostragem (>> Nyquist) (Hz)
t = (0:1/fs:1);                 % Vetor temporal (Matlab)
x = a * sin(2 * pi * f * t);    % Sinal a ser transmitido (senoide)

% Variável auxiliar que ajuda nos loops
l = length(x);

%% Primeiro plot (delta = 0.2)
delta = 0.2;

subplot(2,2,[1,2]);
plot(x, 'color', 'black'); hold on;

% Aproximacoes
xn = 0;

for i=1:l
    if  x(i) > xn(i)
        d(i) = 1;
        xn(i+1) = xn(i) + delta;
    else
        d(i) = 0;
        xn(i+1) = xn(i) - delta;
    end
end

% Sinal modulado
stairs(xn,'color','red'); hold on;

% Reconstruindo o sinal original
for i=1:d
    if  d(i) > xn(i)
        d(i) = 0;
        xn(i+1) = xn(i) - delta;
    else
        d(i) = 1;
        xn(i+1) = xn(i) + delta;
    end
end

plot(xn,'color','cyan');

title('delta = 0.2');
xlabel('Tempo (s)');
ylabel('Amplitude (V)');
legend('Sinal original','Sinal modulado','Sinal demodulado');

%% Segundo plot (delta = 0.4)
delta = 0.4;

subplot(2,2,3);
plot(x, 'color', 'black'); hold on;

% Aproximacoes
xn = 0;

for i=1:l
    if  x(i) > xn(i)
        d(i) = 1;
        xn(i+1) = xn(i) + delta;
    else
        d(i) = 0;
        xn(i+1) = xn(i) - delta;
    end
end

% Sinal modulado
stairs(xn,'color','red'); hold on;

% Reconstruindo o sinal original
for i=1:d
    if  d(i) > xn(i)
        d(i) = 0;
        xn(i+1) = xn(i) - delta;
    else
        d(i) = 1;
        xn(i+1) = xn(i) + delta;
    end
end

plot(xn,'color','cyan');

title('delta = 0.4');
xlabel('Tempo (s)');
ylabel('Amplitude (V)');
legend('Sinal original','Sinal modulado','Sinal demodulado');

%% Terceiro plot (delta = 0.8)
delta = 0.8;

subplot(2,2,4);
plot(x, 'color', 'black'); hold on;

% Aproximacoes
xn = 0;

for i=1:l
    if  x(i) > xn(i)
        d(i) = 1;
        xn(i+1) = xn(i) + delta;
    else
        d(i) = 0;
        xn(i+1) = xn(i) - delta;
    end
end

% Sinal modulado
stairs(xn,'color','red'); hold on;

% Reconstruindo o sinal original
for i=1:d
    if  d(i) > xn(i)
        d(i) = 0;
        xn(i+1) = xn(i) - delta;
    else
        d(i) = 1;
        xn(i+1) = xn(i) + delta;
    end
end

plot(xn,'color','cyan');

title('delta = 0.8');
xlabel('Tempo (s)');
ylabel('Amplitude (V)');
legend('Sinal original','Sinal modulado','Sinal demodulado');