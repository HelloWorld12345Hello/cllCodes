%%%% -1 means inactivation, +1 means activation, 0 means no manipulation, 
D1_L = [-1,0,1,0,0,0]';   % Left  striatum's D1 neurons 
D2_L = [-1,0,0,0,1,0]';   % Left  striatum's D2 neurons
D1_R = [0,-1,0,1,0,0]';   % Right striatum's D1 neurons
D2_R = [0,-1,0,0,0,1]';   % Right striatum's D2 neurons
X=[D1_L D2_L D1_R D2_R];

files = dir('*.mat');     % each mat.file contains the same manipulation on several mice
figure;
RightFrac_delta_eachAnimal=[];
X_eachAnimal=[];
file_num = length (files);
for n =1:file_num
    load (files(n).name); %% load the choose-right fraction of each animal
    RightFrac_delta(1,n) = mean(cell2mat(RightFrac(:,6))-cell2mat(RightFrac(:,5))) ; %% the 6th column is Opto, 5th colume is NoOpto
    
    RightFrac_delta_eachAnimal = [RightFrac_delta_eachAnimal; cell2mat(RightFrac(:,6))-cell2mat(RightFrac(:,5))];
    Num_ani(n) =  size(RightFrac,1);
    X_eachAnimal=[X_eachAnimal; repmat(X(n,:),Num_ani(n),1)];
    
    plot(repmat(n,size(RightFrac,1),1),cell2mat(RightFrac(:,6))-cell2mat(RightFrac(:,5)),'b.', 'markersize',25); hold on;
    
end
md_6type = fitglm(X,RightFrac_delta)
md_eachAnimal = fitglm(X_eachAnimal,RightFrac_delta_eachAnimal)

beta= md_eachAnimal.Coefficients.Estimate;
Y =  repmat(beta(1),6,1)+  beta(2).* D1_L + beta(3).* D2_L + beta(4).* D1_R + beta(5).* D2_R;
plot(Y,'bo','markersize',12,'linewidth',2);hold on;plot(RightFrac_delta,'ro','markersize',12,'linewidth',2);
% legend('','model','real data'); 
xlim([0,7]);line([0 7],[0 0],'color','black'); ylabel('Rightward Fraction','fontsize',12,'fontweight','bold');
set(gca,'XTickLabel',{'' 'CPU_L' 'CPU_R' 'D1_Left' 'D1_Right' 'D2_Left' 'D2_Right'},'fontweight','bold');
title('ModelFittedByAllAnimal vs PopulationRealData','fontsize',15,'fontweight','bold');

figure;  hist(RightFrac_delta_eachAnimal,10); title('RightFrac-delta-eachAnimal','fontsize',15,'fontweight','bold');


















