function [ keyWordScore ] = keyword(email)

keyWordScore = 0;
email = char(email);

list = dataset('File','keyword.txt');
list=dataset2cell(list);
list(1,:) = [];

for i=1:size(list,1)
    regEx= char(list(i));
    matchStr = regexpi(email,regEx,'match','ignorecase');
    if strcmp(matchStr,'')==0
        keyWordScore = keyWordScore+1;
    end
end

end