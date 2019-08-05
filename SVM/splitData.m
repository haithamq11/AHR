function [trainingData,testingData]=splitData(data,partitionRatio)
numberOfClasses=length(unique(data(:,end)));
trainingData=[];
testingData=[];
for i=1:numberOfClasses
    index=find(data(:,end)==i);
    N=length(index);
    for j=1:floor(N*partitionRatio)
        trainingData=[trainingData;data(index(j),:)];
        index(j)=[];
    end
    
    testingData=[testingData; data(index,:)];
    
end



end