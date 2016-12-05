function [repScore] = repetition(email)
repScore = 0;
email = char(email);
words = strsplit(email,' ');
wordsLen = length(words);

for i = 1:wordsLen
    word = words(i);
    matched = 0;
    if notCommon(word) == 0
        for j=1:wordsLen
            tmp = words(j);
            if strcmpi(word,tmp)
                matched =1;
            end
        end
        if matched ==1
            repScore = repScore +1;
        end
    end
end

end