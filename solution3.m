clear all
close all

[y_matematika,Fs] = audioread('words/matematika.wma');
[y_laboratorium,Fs] = audioread('words/laboratorium.wma');
[y_matlab,Fs] = audioread('words/matlab.wma');
letters = loadLetters();

matematika = y_matematika(13040:51740,:);
laboratorium = y_laboratorium(31960:85190,:);
matlab = y_matlab(12520:36250,:);

mat = matematika(1:13000,:);
lab = laboratorium(1:14300,:);
matlabSpeak = [mat;zeros(1000,2); lab];

figure
plot(matlab)
xlabel('�as')
ylabel('audio sign�l')
grid on
xlim([0 30000])
title('Nahran� slovo MATLAB')
figure
plot(matlabSpeak)
xlabel('�as')
ylabel('audio sign�l')
grid on
xlim([0 30000])
title('Vygenerovan� slovo MATLAB zo slov MATematika a LABorat�rium')
hold on
sound(matlabSpeak*5, Fs);




