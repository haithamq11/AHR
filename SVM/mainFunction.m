%'gaussian', 'linear', and 'polynomial'
load rilpq.mat
%[trainingData,testingData]=splitData(features,0.5);
t = templateSVM('Standardize',1,'KernelFunction','polynomial');
Mdl = fitcecoc(trainingData(:,1:end-1),trainingData(:,end),'Learners',t);
Yp=predict(Mdl,testingData(:,1:end-1));
testingAccuracy = 1-(length(find(Yp~=testingData(:,end)))/size(testingData,1)); 
ConfMat = confusionmat(testingData(:,end),Yp);
%figure
%plotconfusion(testingData(:,end),Yp);




