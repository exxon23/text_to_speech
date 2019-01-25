clear all
close all
%% load recorder words
[y_les,Fs] = audioread('words/les.wma');
[y_test,Fs] = audioread('words/test.wma');
[y_ahoj,Fs] = audioread('words/ahoj.wma');

%% separate word parts of syllables for solution 2 and 3
% LES
les = y_les(14870:32500,:);
le = les(1:6500,:);
es = les(3800:end,:);
% TEST 
test = y_test(19993:34860,:);
tes = test(1:9500,:);
te = test(1:5500,:);
est = test(2000:end,:);
% AHOJ
ahoj = y_ahoj(5600:20000,:);
a = ahoj(1:5200,:);
figure
plot(ahoj)
xlabel('èas')
ylabel('audio signál')
grid on
title('Zvukový signál pre zadané slovo')
%% testing
for i = 1:length(tes)
   result(i,1) = tes(i,1);
end
for i2 = 1:length(t)
   result(ceil(6/7*length(tes))+i2,1) = t(i2,1)*0.5; 
end
% plot([te;le])
% sound([le;est],Fs*0.85);



