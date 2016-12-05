%CS 5402 - Final Project
%Luis Pereira - Malick Ndiaye
%An algorithmic approach to spam detection
clear all; clc; close all;

% Create Training dataset using text files- -1=non spam && 1=spam
emailFile = 'emails.txt';
classFile = 'classification.txt';
trainingData = getTrainingData( emailFile,classFile );
trainingData=dataset2cell(trainingData);
trainingData(1,:) = [];
scores = getSpamScores(trainingData);
classification = cell2mat(trainingData(:,2));


svm(trainingData,scores);










%..........................................................





% N = size(classification,1);
% j = 1;
% for i =1:N
%     if classification(i) == -1
%         nonSpams(j,:) = scores(i,:);
%     end
%     j=j+1;
% end
% j = 1;
% for i =1:N
%     if classification(i) == 1
%         spams(j,:) = scores(i,:);
%     end
%     j=j+1;
% end
% 
% 
% x = 1:N
% y1 = spams(:,1);
% y2 = nonSpams(:,1);
% 
% figure();
% plotyy(x,y1,x,y2);

