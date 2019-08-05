function [trainingData,testingData]=splitData(data,partitionRatio)
numberOfClasses=length(unique(data(:,end)));
trainingData=[];
testingData=[];
for i=1:numberOfClasses
    index=find(data(:,end)==i);
    N=length(index);
    j=1;
      while (length(index)>floor(partitionRatio*N)) 
        trainingData=[trainingData;data(index(end),:)];
        index(end)=[];
        j=j+1;
      end
    
    testingData=[testingData; data(index,:)];
    
end



end