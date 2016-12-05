function [scores] = getSpamScores(trainingData)

emailSet = trainingData(:,1);
N = size(emailSet,1);
repetitionScores = zeros(N,1);
keywordScores = zeros(N,1);
for i=1:N
    repetitionScores(i) = repetition(emailSet(i,1));
end

for i=1:N
    keywordScores(i) = keyword(emailSet(i,1));
end

scores = cat(2,repetitionScores,keywordScores);


end

