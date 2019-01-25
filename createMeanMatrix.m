function meanMatrix = createMeanMatrix(input)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
     
    for i = 1:length(input)-1
        meanMatrix(i,1) = mean([input(i,1),input(i+1,1)]);
        meanMatrix(i,2) = mean([input(i,2),input(i+1,2)]);
    end
end

