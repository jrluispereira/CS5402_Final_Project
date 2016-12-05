function [ trainingData ] = getTrainingData( emailFile,classFile )

emails = dataset('File',emailFile);
classification = dataset('File',classFile);
trainingData = cat(2,emails,classification);

end

