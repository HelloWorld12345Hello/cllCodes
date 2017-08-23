% fileName= 'E:\behavior_417\cll_CPU13\cll_CPU13_20151120_PosteriorRightOpto_20mW_Pre300Sound300';
% load(fileName);
%%
clc;
clear;

pathway = 'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU_6_PostSound700\CPU_PostSound_Left\chosen'; 
cd(pathway);
files = dir('*.mat');

for fileNumber = 1:length (files)  % length(fn_str) 

    files = dir('*.mat');
    load(files(fileNumber).name);
    

%     load(fn_str{fileNumber});

%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Plot lick Trace(8 Types)  %%%%%%%%%%%%%%%%%%%%%%%
    binSize = 100;
    binranges = -3000:binSize:7000;
    [bincounts_Left,bincounts_right,trial_is_opto_flag,Time_OptoOnset(fileNumber),Time_OptoOff(fileNumber),T_eff] = Function_Behavior_LickingRuster(SessionResults, binSize, binranges);
    Trial_eff(fileNumber) = T_eff;
    for n_type=1:8
        bincounts_left_Nsessions(:,n_type,fileNumber) =  bincounts_Left{n_type};
        bincounts_right_Nsessions(:,n_type,fileNumber) =  bincounts_right{n_type};
    end
    clear bincounts_left bincounts_right;
end

    bincounts_left_oneType=[];
    bincounts_right_oneType=[];
    bincounts_left_oneType_zscore=[];
    bincounts_right_oneType_zscore=[];
    for n_Type = 1:8
        bincounts_left_oneType = bincounts_left_Nsessions(:,n_Type,:);                      %%%% several sessions
        for n_session = 1:size(bincounts_left_Nsessions,3)
            bincounts_left_Nsessions_mat(:,n_session)=bincounts_left_oneType(:,:,n_session);
        end
        bincounts_left_oneType_zscore(:,n_Type)= mean(zscore(bincounts_left_Nsessions_mat),2);
        
        bincounts_right_oneType = bincounts_right_Nsessions(:,n_Type,:);
        for n_session = 1:size(bincounts_right_Nsessions,3)
            bincounts_right_Nsessions_mat(:,n_session)=bincounts_right_oneType(:,:,n_session);
        end
        bincounts_right_oneType_zscore(:,n_Type)= mean(zscore(bincounts_right_Nsessions_mat),2);
    end
        
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        figure;
        subplot(2,2,1);
        stim_area = patch([0 0 300 300],[-1 10 10 -1], [.9 .9 .9],'edgecolor','w');
        hold on;
        plot(binranges,bincounts_left_oneType_zscore(:,1),'black');
        hold on;
        plot(binranges,bincounts_left_oneType_zscore(:,2),'b','linewidth',1.2);
        hold on;
        plot(binranges,bincounts_right_oneType_zscore(:,1),'r');
        hold on;
        plot(binranges,bincounts_right_oneType_zscore(:,2),'color',[1,0.8,0.2],'linewidth',1.5);
        title('LeftSound-ChooseLeft','fontsize',12,'fontweight','bold');
        set(gca,'xlim',[-3000,7000]);set(gca,'ylim',[-1,6]);
        xlabel('time (ms)');
        ylabel('licking rate (licks/second)');
        if sum(trial_is_opto_flag)~=0
            line([Time_OptoOnset(1) Time_OptoOnset(1)],[-1 10],'color','g');
            line([Time_OptoOff(1) Time_OptoOff(1)],[-1 10],'color','g'); 
        end
        text(3000,5,['fileNumber= ' num2str(fileNumber)],'fontsize',12);
        
        
        subplot(2,2,2);
        stim_area = patch([0 0 300 300],[-1 10 10 -1], [.9 .9 .9],'edgecolor','w');
        hold on;
        plot(binranges,bincounts_left_oneType_zscore(:,3),'black');
        hold on;
        plot(binranges,bincounts_left_oneType_zscore(:,4),'b','linewidth',1.2);
        hold on;
        plot(binranges,bincounts_right_oneType_zscore(:,3),'r');
        hold on;
        plot(binranges,bincounts_right_oneType_zscore(:,4),'color',[1,0.8,0.2],'linewidth',1.5);
        title('RightSound-ChooseLeft','fontsize',12,'fontweight','bold');
        set(gca,'xlim',[-3000,7000]);set(gca,'ylim',[-1,6]);
        xlabel('time (ms)');
        ylabel('licking rate (licks/second)');
        if sum(trial_is_opto_flag)~=0
            line([Time_OptoOnset(1) Time_OptoOnset(1)],[-1 10],'color','g');
            line([Time_OptoOff(1) Time_OptoOff(1)],[-1 10],'color','g'); 
        end
        
        subplot(2,2,3);
        stim_area = patch([0 0 300 300],[-1 10 10 -1], [.9 .9 .9],'edgecolor','w');
        hold on;
        plot(binranges,bincounts_left_oneType_zscore(:,5),'black');
        hold on;
        plot(binranges,bincounts_left_oneType_zscore(:,6),'b','linewidth',1.2);
        hold on;
        plot(binranges,bincounts_right_oneType_zscore(:,5),'r');
        hold on;
        plot(binranges,bincounts_right_oneType_zscore(:,6),'color',[1,0.8,0.2],'linewidth',1.5);
        title('LeftSound-ChooseRight','fontsize',12,'fontweight','bold');
        set(gca,'xlim',[-3000,7000]);set(gca,'ylim',[-1,6]);
        xlabel('time (ms)');
        ylabel('licking rate (licks/second)');
        if sum(trial_is_opto_flag)~=0
            line([Time_OptoOnset(1) Time_OptoOnset(1)],[-1 10],'color','g');
            line([Time_OptoOff(1) Time_OptoOff(1)],[-1 10],'color','g'); 
        end

        subplot(2,2,4);
        stim_area = patch([0 0 300 300],[-1 10 10 -1], [.9 .9 .9],'edgecolor','w');
        hold on;
        plot(binranges,bincounts_left_oneType_zscore(:,7),'black');
        hold on;
        plot(binranges,bincounts_left_oneType_zscore(:,8),'b','linewidth',1.2);
        hold on;
        plot(binranges,bincounts_right_oneType_zscore(:,7),'r');
        hold on;
        plot(binranges,bincounts_right_oneType_zscore(:,8),'color',[1,0.8,0.2],'linewidth',1.5);
        title('RightSound-ChooseRight','fontsize',12,'fontweight','bold');
        set(gca,'xlim',[-3000,7000]); set(gca,'ylim',[-1,6]);
        xlabel('time (ms)');
        ylabel('licking rate (licks/second)');
        if sum(trial_is_opto_flag)~=0
            line([Time_OptoOnset(1) Time_OptoOnset(1)],[-1 10],'color','g');
            line([Time_OptoOff(1) Time_OptoOff(1)],[-1 10],'color','g'); 
        end
%         
%     set(gcf,'position',[10 80 1600 450]);
    FigureNameSaved = [pathway '\' pathway(end-27:end) '-AveragedLickRateTrace'  '.png'];
    titleName = strrep(pathway(end-28:end),'_','-');
    suptitle(titleName);
    saveas(gcf,FigureNameSaved);

    FigureNameSaved = [pathway '\' pathway(end-27:end) '-AveragedLickRateTrace'  '.fig'];
    saveas(gcf,FigureNameSaved);

    figure;
    plot(Time_OptoOnset,'go');
    hold on;
    plot(Time_OptoOff,'ro');
    set(gca,'xlim',[0,length(Time_OptoOnset)+1]);set(gca,'ylim',[-500,2500]);
    legend('Time(OptoOnset)','Time(OptoOff)');
    
    
%%  LickingRateChange
clc;
clear;
lickRateLeft_NoOpto_duringOpto = [];
lickRateLeft_opto_duringOpto =[];
lickRateRight_NoOpto_duringOpto = [];
lickRateRight_opto_duringOpto = [];

file_name = 'LickRateChange';
pathway = 'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2_3_PreSound300\D2_01-08_PreSound300_Left';  
cd(pathway);
files = dir('*.mat');
for n=1:length(files)  %   length(fn_str) 
    load(files(n).name);
%     load(fn_str{n});
    [lickRateLeft_NoOpto_duringOpto(n),  lickRateLeft_opto_duringOpto(n), lickRateRight_NoOpto_duringOpto(n) lickRateRight_opto_duringOpto(n)] = OptoLickRate_AroundSound( SessionResults);
end
figure;
% ylim_max =  max([lickRateLeft_NoOpto_duringOpto lickRateLeft_opto_duringOpto lickRateRight_NoOpto_duringOpto lickRateRight_opto_duringOpto]);
ylim_max =  max([lickRateLeft_NoOpto_duringOpto lickRateLeft_opto_duringOpto lickRateRight_NoOpto_duringOpto lickRateRight_opto_duringOpto]);
subplot(1,2,1);
% plot([lickRateLeft_NoOpto_duringOpto(1:3);lickRateLeft_opto_duringOpto(1:3)],'color',[1,0,0],'linewidth',3);      hold on;
% plot([lickRateLeft_NoOpto_duringOpto(4:6);lickRateLeft_opto_duringOpto(4:6)],'color',[0,1,0],'linewidth',3);      hold on;
% plot([lickRateLeft_NoOpto_duringOpto(7:9);lickRateLeft_opto_duringOpto(7:9)],'color',[0,0,1],'linewidth',3);      hold on;
%%%%% plot([lickRateLeft_NoOpto_duringOpto(10:12);lickRateLeft_opto_duringOpto(10:12)],'color',[0,0,0]); 
color_string = hsv(n);
for i=1:n
    line([1,2],[lickRateLeft_NoOpto_duringOpto(i),lickRateLeft_opto_duringOpto(i)],'color',color_string(i,:),'linewidth',3)
end

%%%%%plot([lickRateLeft_NoOpto_duringOpto;lickRateLeft_opto_duringOpto],'k','linewidth',3); % 
[h1,p1] = ttest(lickRateLeft_NoOpto_duringOpto,lickRateLeft_opto_duringOpto);
text(2,ylim_max+0.1,['p= ' num2str(p1)],'fontweight','bold','fontsize',12);
set(gca,'xlim',[0,3]);set(gca,'ylim',[0,ylim_max+0.2]);title('Left Licking','fontweight','bold','fontsize',18);
a={' ','Control','Opto',' '};
set(gca,'xticklabel',a,'fontsize',13,'fontweight','bold');
ylabel('lick number / trial','fontsize',12,'fontweight','bold');
subplot(1,2,2);
% plot([lickRateRight_NoOpto_duringOpto(1:3);lickRateRight_opto_duringOpto(1:3)],'color',[1,0,0],'linewidth',3);    hold on;
% plot([lickRateRight_NoOpto_duringOpto(4:6);lickRateRight_opto_duringOpto(4:6)],'color',[0,1,0],'linewidth',3); hold on;
% plot([lickRateRight_NoOpto_duringOpto(7:9);lickRateRight_opto_duringOpto(7:9)],'color',[0,0,1],'linewidth',3); hold on;
%%%% plot([lickRateRight_NoOpto_duringOpto(10:12);lickRateRight_opto_duringOpto(10:12)],'color',[0,0,0]); 
color_string = hsv(n);
for i=1:n
    line([1,2],[lickRateRight_NoOpto_duringOpto(i),lickRateRight_opto_duringOpto(i)],'color',color_string(i,:),'linewidth',3)
end
%%%% plot([lickRateRight_NoOpto_duringOpto;lickRateRight_opto_duringOpto],'r','linewidth',3);
set(gca,'xlim',[0,3]);set(gca,'ylim',[0,ylim_max+0.2]);title('Right Licking','fontweight','bold','fontsize',18);
[h2,p2] = ttest(lickRateRight_NoOpto_duringOpto,lickRateRight_opto_duringOpto);
text(2,ylim_max+0.1,['p= ' num2str(p2)],'fontweight','bold','fontsize',12);
a={' ','NoOpto','Opto',' '};
set(gca,'xticklabel',a,'fontsize',15,'fontweight','bold');
% file_name = strrep(fn_str_c1{2},'_','-');
% suptitle_name = [file_name  '('  num2str(Time_OptoOnset) '-' num2str(Time_OptoOff) ')'];
suptitle_name = file_name;
suptitle(suptitle_name);
box off;

figure;
ylim_max =  max([lickRateLeft_NoOpto_duringOpto lickRateLeft_opto_duringOpto lickRateRight_NoOpto_duringOpto lickRateRight_opto_duringOpto]);
subplot(1,2,1);
plot([lickRateLeft_NoOpto_duringOpto;lickRateLeft_opto_duringOpto],'b','linewidth',3); hold on;
errorbar(0.5,mean(lickRateLeft_NoOpto_duringOpto),std(lickRateLeft_NoOpto_duringOpto)/sqrt(length(lickRateLeft_NoOpto_duringOpto)),'linewidth',1);hold on;
errorbar(2.5,mean(lickRateLeft_opto_duringOpto),std(lickRateLeft_opto_duringOpto)/sqrt(length(lickRateLeft_opto_duringOpto)),'linewidth',1);hold on;
plot(0.5,mean(lickRateLeft_NoOpto_duringOpto),'bo','markersize',5,'markerfacecolor','b');hold on;
plot(2.5,mean(lickRateLeft_opto_duringOpto),'bo','markersize',5,'markerfacecolor','b');hold on;
text(2,ylim_max+0.1,['p= ' num2str(p1)],'fontweight','bold','fontsize',12);
set(gca,'xlim',[0,3]);set(gca,'ylim',[0,ylim_max+0.2]);title('Left Licking','fontweight','bold','fontsize',18);
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
set(gca,'xlim',[0,3]);set(gca,'ylim',[0,ylim_max+0.2]);title('Right Licking','fontweight','bold','fontsize',18);
text(2,ylim_max+0.1,['p= ' num2str(p2)],'fontweight','bold','fontsize',12);
a={' ','Control','Opto',' '};
set(gca,'xticklabel',a,'fontsize',15,'fontweight','bold');
suptitle_name = file_name;
suptitle(suptitle_name);
box off;    
    
