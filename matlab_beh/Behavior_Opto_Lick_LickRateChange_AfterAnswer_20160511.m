%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% get the opto effects on lick rate                                
%%%% need function 'OptoLickRate.m'(C:\Users\Administor\Documents\MATLAB)
%%%% Section 1 __ three repeats of one manipulation on one mouse (each color represents one day's result)
%%%% Section 2 __ several repeats of one manipulation on several mice (each color represents the results of one mouse)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Section 1  %%%%
clc;
clear;
% fn_str_c1 = {fn_str_c2{:},fn_str_c3{:}};         
         
% fn_str_c1 = {'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160127_PosteriorLeft_Laser08_2mWPostAnswer_waterDelay300',...
%              'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160129_PosteriorLeft_Laser08_2mWPostAnswer_waterDelay300'};         
% fn_str_c1 = {'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160128_PosteriorRight_Laser08_2mWPostAnswer_waterDelay300',...
%              'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160130_PosteriorRight_Laser08_2mWPostAnswer_waterDelay300'};
         
% fn_str_c1 = {'E:\behavior_417\cll_D2_02\cll_D2_02_rig06_20160129_PosteriorLeftOpto_Laser07_5mWPostAnswer700'}; 
% fn_str_c1 = {'E:\behavior_417\cll_D2_02\cll_D2_02_rig06_20160128_PosteriorRightOpto_Laser07_5mWPostAnswer700',...
%              'E:\behavior_417\cll_D2_02\cll_D2_02_rig06_20160130_PosteriorRightOpto_Laser07_5mWPostAnswer700'}; 
         
% fn_str_c1 = {'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160125_PosteriorLeftOpto_2mWPostAnswer700ms_waterDelay300',...
%              'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160127_PosteriorLeftOpto_2mWPostAnswer700ms_waterDelay300'}; 
% fn_str_c1 = {'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160124_PosteriorRightOpto_2mWPostAnswer700ms_waterDelay300',...
%              'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160126_PosteriorRightOpto_2mWPostAnswer700ms_waterDelay300'}; 
         
% fn_str_c1 = {'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160324_PosteriorLeftOpto_Laser08_2mW_PostAnswer700',...
%              'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160326_PosteriorLeftOpto_Laser08_2mW_PostAnswer700'}; 
% fn_str_c1 = {'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160319_PosteriorRightOpto_Laser08_2mW_PostAnswer700',...
%              'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160321_PosteriorRightOpto_Laser08_2mW_PostAnswer700'}; 
         
% fn_str_c1 = {'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160324_PosteriorLeftOpto_laser22_2mW_PostAnswer700',...
%              'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160326_PosteriorLeftOpto_laser22_2mW_PostAnswer700'}; 
% fn_str_c1 = {'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160325_PosteriorRightOpto_laser22_2mW_PostAnswer700',...
%              'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160327_PosteriorRightOpto_laser22_2mW_PostAnswer700'}; 
    
% fn_str_c1 = {'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160324_PosteriorLeftOpto_Laser03_2mW_PostAnswer700',...
%              'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160409_PosteriorLeftOpto_Laser03_2mW_PostAnswer700'}; 
% fn_str_c1 = {'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160325_PosteriorRightOpto_Laser03_2mW_PostAnswer700',...
%              'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160413_PosteriorRightOpto_Laser03_4mW_PostAnswer700'}; 
         
% pathway = 'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2_7_PostAnswer700\D2_01-08_PostAnswer700_Left\chosen'; 
% cd(pathway);
files = dir('*.mat');

for n=1:length(files) %%% n=1:length(fn_str_c1) %
%     load(fn_str_c1{n});
    load(files(n).name);
    
    [lickRateLeft_NoOpto_duringOpto(n),  lickRateLeft_opto_duringOpto(n), lickRateRight_NoOpto_duringOpto(n) lickRateRight_opto_duringOpto(n)] = OptoLickRate_AfterAnswer(SessionResults);
end

figure;
ylim_max =  max([lickRateLeft_NoOpto_duringOpto lickRateLeft_opto_duringOpto lickRateRight_NoOpto_duringOpto lickRateRight_opto_duringOpto]);
colorString = {'r','g','b','k','c','m'};
subplot(1,2,1);
for file_num = 1:n
    plot([lickRateLeft_NoOpto_duringOpto(file_num);lickRateLeft_opto_duringOpto(file_num)],'color',colorString{file_num},'linewidth',2);   
    
    hold on;
end
% plot([lickRateLeft_NoOpto_duringOpto;lickRateLeft_opto_duringOpto]); 
set(gca,'xlim',[0,3]);
set(gca,'ylim',[0,ylim_max]);
title('lickRateLeft(NoOpto,Opto)');

subplot(1,2,2);
for file_num = 1:n
    plot([lickRateRight_NoOpto_duringOpto(file_num);lickRateRight_opto_duringOpto(file_num)],'color',colorString{file_num},'linewidth',2);   
    hold on;
end
set(gca,'xlim',[0,3]);
set(gca,'ylim',[0,ylim_max]);
title('lickRateRight(NoOpto,Opto)');

title_name = [fn_str_c1{1}(27:41) fn_str_c1{1}(51:end)];
suptitle_name = strrep(title_name,'_','-');
suptitle(suptitle_name);

%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Section 2  %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;

% file_name = 'D2-01,02,03,05,07,08-LickRate-LeftOpto-AfterAnswer';
% fn_str_c1 = {              'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160127_PosteriorLeft_Laser08_2mWPostAnswer_waterDelay300', 'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160129_PosteriorLeft_Laser08_2mWPostAnswer_waterDelay300'};             
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_D2_02\cll_D2_02_rig06_20160129_PosteriorLeftOpto_Laser07_5mWPostAnswer700'}; 
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160125_PosteriorLeftOpto_2mWPostAnswer700ms_waterDelay300', 'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160127_PosteriorLeftOpto_2mWPostAnswer700ms_waterDelay300'};   
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160324_PosteriorLeftOpto_Laser08_2mW_PostAnswer700', 'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160326_PosteriorLeftOpto_Laser08_2mW_PostAnswer700'}; 
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160324_PosteriorLeftOpto_laser22_2mW_PostAnswer700', 'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160326_PosteriorLeftOpto_laser22_2mW_PostAnswer700'}; 
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160324_PosteriorLeftOpto_Laser03_2mW_PostAnswer700', 'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160409_PosteriorLeftOpto_Laser03_2mW_PostAnswer700'}; 
% file_name = 'D2-01,02,03,05,07,08-LickRate-RightOpto-AfterAnswer';
% fn_str_c1 = {              'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160128_PosteriorRight_Laser08_2mWPostAnswer_waterDelay300','E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160130_PosteriorRight_Laser08_2mWPostAnswer_waterDelay300'};
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_D2_02\cll_D2_02_rig06_20160128_PosteriorRightOpto_Laser07_5mWPostAnswer700','E:\behavior_417\cll_D2_02\cll_D2_02_rig06_20160130_PosteriorRightOpto_Laser07_5mWPostAnswer700'}; 
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160124_PosteriorRightOpto_2mWPostAnswer700ms_waterDelay300','E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160126_PosteriorRightOpto_2mWPostAnswer700ms_waterDelay300'}; 
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160319_PosteriorRightOpto_Laser08_2mW_PostAnswer700','E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160321_PosteriorRightOpto_Laser08_2mW_PostAnswer700'}; 
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160325_PosteriorRightOpto_laser22_2mW_PostAnswer700','E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160327_PosteriorRightOpto_laser22_2mW_PostAnswer700'}; 
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160325_PosteriorRightOpto_Laser03_2mW_PostAnswer700','E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160413_PosteriorRightOpto_Laser03_4mW_PostAnswer700'}; 

% fn_str_01 = { 'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160127_PosteriorLeft_Laser08_2mWPostAnswer_waterDelay300',...
%               'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160125_PosteriorLeftOpto_2mWPostAnswer700ms_waterDelay300',...
%               'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160324_PosteriorLeftOpto_Laser08_2mW_PostAnswer700',...
%               'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160324_PosteriorLeftOpto_laser22_2mW_PostAnswer700'};
% fn_str_02 = { 'E:\behavior_417\cll_D2_02\cll_D2_02_rig06_20160129_PosteriorLeftOpto_Laser07_5mWPostAnswer700',...
%               'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160324_PosteriorLeftOpto_Laser03_2mW_PostAnswer700'};        
% fn_str_03 = { 'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160128_PosteriorRight_Laser08_2mWPostAnswer_waterDelay300',...
%               'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160124_PosteriorRightOpto_2mWPostAnswer700ms_waterDelay300',...
%               'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160319_PosteriorRightOpto_Laser08_2mW_PostAnswer700',...
%               'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160325_PosteriorRightOpto_laser22_2mW_PostAnswer700'}; 
% fn_str_04 = { 'E:\behavior_417\cll_D2_02\cll_D2_02_rig06_20160128_PosteriorRightOpto_Laser07_5mWPostAnswer700',...
%               'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160325_PosteriorRightOpto_Laser03_2mW_PostAnswer700'}; 
% file_name = 'D2-01,02,03,05,07,08-LickRate-LeftStriatum-AfterAnswer'; fn_str_c1 = {fn_str_01{:},fn_str_02{:}};
% file_name = 'D2-01,03,05,07-LickRate-LeftStriatum-AfterAnswer'; fn_str_c1 = {fn_str_01{:}};
% file_name = 'D2-02,08-LickRate-LeftStriatum-AfterAnswer'; fn_str_c1 = {fn_str_02{:}};
% file_name = 'D2-01,02,03,05,07,08-LickRate-RightStriatum-AfterAnswer';fn_str_c1 = {fn_str_03{:},fn_str_04{:}};
% file_name = 'D2-01,03,05,07-LickRate-RightStriatum-AfterAnswer';fn_str_c1 = {fn_str_03{:}};
% file_name = 'D2-02,08-LickRate-RightStriatum-AfterAnswer';fn_str_c1 = {fn_str_04{:}};
      
%%%%%%%%%%%%%%%%%%%%%   CPU,After Answer     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fn_str_05 = { 'E:\behavior_417\cll_CPU17\cll_CPU17_rig04_20160125_PosteriorLeftOpto_Laser18_20mWPostAnswer700',...
%               'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160125_PosteriorLeftOpto_Laser08_20mWPostAnswer700'};
% fn_str_06 = { 'E:\behavior_417\cll_CPU20\cll_CPU20_rig03_20160125_PosteriorLeftOpto_Laser18_20mWPostAnswer700',...
%               'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160126_PosteriorLeftOpto_Laser18_20mW_PostAnswer700ms'}; 
% fn_str_07 = { 'E:\behavior_417\cll_CPU17\cll_CPU17_rig04_20160124_PosteriorRightOpto_Laser18_20mWPostAnswer700',...
%               'E:\behavior_417\cll_CPU19\cll_CPU19_rig04_20160126_PosteriorRightOpto_Laser18_20mWPostAnswer700_waterDelay300',...
%               'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160126_PosteriorRightOpto_Laser08_20mWPostAnswer700_WaterDelay300'};
% fn_str_08 = { 'E:\behavior_417\cll_CPU20\cll_CPU20_rig03_20160126_PosteriorRightOpto_Laser18_20mWPostAnswer700',...
%               'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160125_PosteriorRightOpto_Laser18_20mW_PostAnswer700ms'};
% file_name = 'CPU17,20,21,22-LickRate-LeftStriatum-AfterAnswer';fn_str_c1 = {fn_str_05{:},fn_str_06{:}};
% file_name = 'CPU17,21-LickRate-LeftStriatum-AfterAnswer';fn_str_c1 = {fn_str_05{:}};
% file_name = 'CPU20,22-LickRate-LeftStriatum-AfterAnswer';fn_str_c1 = {fn_str_06{:}};
% file_name = 'CPU17,19,20,21,22-LickRate-RightStriatum-AfterAnswer';fn_str_c1 = {fn_str_07{:},fn_str_08{:}};
% file_name = 'CPU17,19,21-LickRate-RightStriatum-AfterAnswer';fn_str_c1 = {fn_str_07{:}};
% file_name = 'CPU20,22-LickRate-RightStriatum-AfterAnswer';fn_str_c1 = {fn_str_08{:}};

% for n=1:length(fn_str_c1) %n=1:length(files)
%     load(fn_str_c1{n});
%     [lickRateLeft_NoOpto_duringOpto(n),  lickRateLeft_opto_duringOpto(n), lickRateRight_NoOpto_duringOpto(n) lickRateRight_opto_duringOpto(n)] = OptoLickRate_AfterAnswer( SessionResults);
% end


file_name='LickRateChange';
files = dir('*.mat');
for n=1:length(files) %n=1:length(files)
    load(files(n).name);
    [lickRateLeft_NoOpto_duringOpto(n),  lickRateLeft_opto_duringOpto(n), lickRateRight_NoOpto_duringOpto(n) lickRateRight_opto_duringOpto(n)] = OptoLickRate_AfterAnswer( SessionResults);
end




figure;
ylim_max =  max([lickRateLeft_NoOpto_duringOpto lickRateLeft_opto_duringOpto lickRateRight_NoOpto_duringOpto lickRateRight_opto_duringOpto]);
subplot(1,2,1);
% plot([lickRateLeft_NoOpto_duringOpto(1:3);lickRateLeft_opto_duringOpto(1:3)],'color',[1,0,0]);      hold on;
% plot([lickRateLeft_NoOpto_duringOpto(4:6);lickRateLeft_opto_duringOpto(4:6)],'color',[0,1,0]);      hold on;
% plot([lickRateLeft_NoOpto_duringOpto(7:9);lickRateLeft_opto_duringOpto(7:9)],'color',[0,0,1]);      hold on;
% plot([lickRateLeft_NoOpto_duringOpto(10:12);lickRateLeft_opto_duringOpto(10:12)],'color',[0,0,0]); 

% plot([lickRateLeft_NoOpto_duringOpto;lickRateLeft_opto_duringOpto],'k','linewidth',2); % 
color_string = hsv(n);
for i=1:n
    line([1,2],[lickRateLeft_NoOpto_duringOpto(i),lickRateLeft_opto_duringOpto(i)],'color',color_string(i,:),'linewidth',3)
end
[h1,p1] = ttest(lickRateLeft_NoOpto_duringOpto,lickRateLeft_opto_duringOpto);
text(2.2,2,['p= ' num2str(p1)],'fontweight','bold','fontsize',12);
set(gca,'xlim',[0,3]);set(gca,'ylim',[0,ylim_max]);title('lickRateLeft(NoOpto,Opto)');

subplot(1,2,2);
% plot([lickRateRight_NoOpto_duringOpto(1:3);lickRateRight_opto_duringOpto(1:3)],'color',[1,0,0]);    hold on;
% plot([lickRateRight_NoOpto_duringOpto(4:6);lickRateRight_opto_duringOpto(4:6)],'color',[0,1,0]);    hold on;
% plot([lickRateRight_NoOpto_duringOpto(7:9);lickRateRight_opto_duringOpto(7:9)],'color',[0,0,1]);    hold on;
% plot([lickRateRight_NoOpto_duringOpto(10:12);lickRateRight_opto_duringOpto(10:12)],'color',[0,0,0]); 

plot([lickRateRight_NoOpto_duringOpto;lickRateRight_opto_duringOpto],'r','linewidth',2);
for i=1:n
    line([1,2],[lickRateRight_NoOpto_duringOpto(i),lickRateRight_opto_duringOpto(i)],'color',color_string(i,:),'linewidth',3)
end

set(gca,'xlim',[0,3]);set(gca,'ylim',[0,ylim_max]);title('lickRateRight(NoOpto,Opto)');
[h2,p2] = ttest(lickRateRight_NoOpto_duringOpto,lickRateRight_opto_duringOpto);
text(2.2,2,['p= ' num2str(p2)],'fontweight','bold','fontsize',12);

% file_name = strrep(fn_str_c1{2},'_','-');
% suptitle_name = [file_name  '('  num2str(Time_OptoOnset) '-' num2str(Time_OptoOff) ')'];
suptitle_name = file_name;
suptitle(suptitle_name);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure;
ylim_max =  max([lickRateLeft_NoOpto_duringOpto lickRateLeft_opto_duringOpto lickRateRight_NoOpto_duringOpto lickRateRight_opto_duringOpto]);
subplot(1,2,1);
plot([lickRateLeft_NoOpto_duringOpto;lickRateLeft_opto_duringOpto],'b','linewidth',3); hold on;
errorbar(0.5,mean(lickRateLeft_NoOpto_duringOpto),std(lickRateLeft_NoOpto_duringOpto)/sqrt(length(lickRateLeft_NoOpto_duringOpto)),'linewidth',1);hold on;
errorbar(2.5,mean(lickRateLeft_opto_duringOpto),std(lickRateLeft_opto_duringOpto)/sqrt(length(lickRateLeft_opto_duringOpto)),'linewidth',1);hold on;
plot(0.5,mean(lickRateLeft_NoOpto_duringOpto),'bo','markersize',5,'markerfacecolor','b');hold on;
plot(2.5,mean(lickRateLeft_opto_duringOpto),'bo','markersize',5,'markerfacecolor','b');hold on;
text(2,ylim_max+0.,['p= ' num2str(p1)],'fontweight','bold','fontsize',12);
set(gca,'xlim',[0,3]);set(gca,'ylim',[0,ylim_max+0.5]);title('Left Licking','fontweight','bold','fontsize',18);
a={' ','Control','Opto',' '};
set(gca,'xticklabel',a,'fontsize',15,'fontweight','bold');
ylabel('lick number / trial','fontsize',18,'fontweight','bold');
box off;

subplot(1,2,2);
plot([lickRateRight_NoOpto_duringOpto;lickRateRight_opto_duringOpto],'r','linewidth',3);hold on;
errorbar(0.5,mean(lickRateRight_NoOpto_duringOpto),std(lickRateRight_NoOpto_duringOpto)/sqrt(length(lickRateRight_NoOpto_duringOpto)),'linewidth',1,'color','r');hold on;
errorbar(2.5,mean(lickRateRight_opto_duringOpto),std(lickRateRight_opto_duringOpto)/sqrt(length(lickRateRight_opto_duringOpto)),'linewidth',1,'color','r');hold on;
plot(0.5,mean(lickRateRight_NoOpto_duringOpto),'ro','markersize',5,'markerfacecolor','r');hold on;
plot(2.5,mean(lickRateRight_opto_duringOpto),'ro','markersize',5,'markerfacecolor','r');hold on;
set(gca,'xlim',[0,3]);set(gca,'ylim',[0,ylim_max+0.5]);title('Right Licking','fontweight','bold','fontsize',18);
text(2,ylim_max+0.3,['p= ' num2str(p2)],'fontweight','bold','fontsize',12);
a={' ','Control','Opto',' '};
set(gca,'xticklabel',a,'fontsize',15,'fontweight','bold');
suptitle_name = file_name;
suptitle(suptitle_name);
box off;



