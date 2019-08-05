

load('calculated_features/rilpq.mat')
%% Input Parameters
ActivationFuncName='HARD';
FeatureName='RILPQ Results';
ElmType = 1;
activationFunctionType = 'radbas'

numberOfClasses = length(unique(trainingData(:,end)));
%features(:,1:end-1)=features(:,1:end-1)/max(max(features(:,1:end-1)));

%% Calling ELM function
%numberOfHiddenNeurons = 5000;
for numberOfHiddenNeurons = 500:500:5000;

Acc1=[];
%for i=1:10
    rng(10);
[TrainingAcc,TestingAcc,train,test] = ELM(trainingData,testingData, ...
  ElmType,numberOfHiddenNeurons,activationFunctionType,numberOfClasses);
Path=['/calculated_results' ActivationFuncName '/' FeatureName];
save(['calculated_results/' activationFunctionType num2str(numberOfHiddenNeurons) num2str(TestingAcc)]);

Acc1=[Acc1; TestingAcc];

end
%end

plot(Acc1)

%% 
