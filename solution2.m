clear all
close all

[y_mama,Fs] = audioread('words/mama.wma');
[y_larva,Fs] = audioread('words/larva.wma');
[y_matlab,Fs] = audioread('words/matlab.wma');


letters = loadLetters();


mama = y_mama(23620:38530,:);
larva = y_larva(21900:42370,:);
matlab = y_matlab(12520:36250,:);

ma = mama(1:10000,:);
la = larva(1:7000,:);
figure
plot(matlab)
xlabel('èas')
ylabel('audio signál')
grid on
title('Zvukový signál pre nahrané slovo MATLAB')


matlabSpeak = [ma; letters.t*0.45;zeros(2000,2); la; letters.b*0.45];
figure
plot(matlabSpeak)
xlabel('èas')
ylabel('audio signál')
grid on
title('Vygenerovaný zvukový signál')
sound(matlabSpeak, Fs)








