clear all
close all

%% sound parameters
volume = 5; % between 1 to 20
voiceDepth = 0.92; % between 0.8 and 1.1
Fs = 44100;
spaceLength = 20000;
overlap = 1/7;

%% load learned letters
letters = loadLetters();

%% set up user input
userPrompt = 'What do you want the computer to say?';
titleBar = 'Text to Speech';
defaultString = 'Say something ...';
canUserInput = inputdlg(userPrompt, titleBar, 1, {defaultString});

%% change input to char and change to lower characters
canUserInput = char(canUserInput);
canUserInput = lower(canUserInput);

%% create sound output
previousLetterLength = 0;
offset = 15000;
result = zeros(15000,1);
% interate all characters in input
for i = 1:length(canUserInput)
    % make pause if char is space
    if canUserInput(i) == ' '
            result = [result; zeros(spaceLength,1)];
            offset = offset + spaceLength;
    else
        % play ch if this char is c and next h
        if (i ~= length(canUserInput)) && (canUserInput(i) == 'c') && (canUserInput(i+1) == 'h')
            letterToSpeak = letters.('ch')(:,1);    % load ch
        else
            letterToSpeak = letters.(canUserInput(i))(:,1); % load giver char
        end
        % paste all learned frequencies from letter to result
        for j = 1:length(letterToSpeak)  
            position = j + offset - floor(overlap * previousLetterLength);  % create overlap for to shorten the pause between letters
            if position < offset
                result(position,1) = result(position,1) + letterToSpeak(j,1);
            else
                result(position,1) = letterToSpeak(j,1);
            end
        end
        previousLetterLength = length(letters.(canUserInput(i))(:,1));  % save length of this letter for correct overlap calculating in next iteration
        offset = length(result);
    end 
end

%% plot created sound result and play it
figure
plot(result)
xlabel('èas')
ylabel('audio signál')
grid on
title('Zvukový signál pre zadané slovo')

sound(result*volume,Fs*voiceDepth);
outputFile = ['recordings/',canUserInput,'.wav'];
audiowrite(outputFile,result*volume,Fs*voiceDepth);

