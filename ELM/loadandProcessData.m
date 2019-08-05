clear all
clc

%% Loading Training dataset & Testing dataset

path=pwd;
addpath([path '/ELM']);

addpath([path '/calculated_features']);

load('words_featuresa_CM.mat');

partitionRatio=0.7;
[testingData,trainingData]=splitData(features,partitionRatio);
save('words_featuresa_CM')
