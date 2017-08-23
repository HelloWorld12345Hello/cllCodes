% fileName= 'E:\behavior_417\cll_CPU13\cll_CPU13_20151120_PosteriorRightOpto_20mW_Pre300Sound300';
% load(fileName);
%%
clc;
clear;
pathway = 'L:\striatum\AfterUbuntu\S33';  % 
cd(pathway);
files = dir('*.mat');

for fileNumber = 4:length (files)
    pathway = 'L:\striatum\AfterUbuntu\S33';
    files = dir('*.mat');
    load(files(fileNumber).name);

    %%% extract lick time from behavior data 
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
    trial_Action_lickTimeLeft = cellfun(@(x) x.Action_lickTimeLeft , SessionResults,'UniformOutput',false);
    trial_Action_lickTimeRight = cellfun(@(x) x.Action_lickTimeRight , SessionResults,'UniformOutput',false);
        for j = 1:length(trial_Action_lickTimeLeft)  % abstract Left lick time
            temp1 = regexp(cell2mat(trial_Action_lickTimeLeft(j)), '\|', 'split');
            temp2 = regexp(cell2mat(trial_Action_lickTimeRight(j)), '\|', 'split');
            temp3 = [];
            temp4 = [];
            for k = 1:length(temp1)
                if isempty(temp1(k))
                        temp3 = temp3;
                else
                    temp3 = [temp3 str2num(temp1{k})];
                end
            end
            for k = 1:length(temp2)
                if isempty(temp2(k))
                        temp4 = temp4;
                else
                    temp4 = [temp4 str2num(temp2{k})];
                end
            end
            trial_lickTimeLeft{j} = temp3;
            trial_lickTimeRight{j} = temp4;
        end
    %%%% extract trial-type
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    trial_inds= cellfun(@(x) x.Trial_inds, SessionResults);
    trial_choice=cellfun(@(x) x.Action_choice,SessionResults);
    trial_time_stimOnset= cellfun(@(x) x.Time_stimOnset, SessionResults);

    
    trial_time_answer=cellfun(@(x) x.Time_answer,SessionResults);
    trial_is_probe_flag = cellfun(@(x) x.Trial_isProbeTrial, SessionResults);
    trial_trialType = cellfun(@(x) x.Trial_Type, SessionResults);        % 0 means left, 1 means right 
    
    trial_Stim_toneFreq =[];
%     for n=1:length(SessionResults)
%         if trial_is_probe_flag(n)==1
%             trial_Stim_toneFreq=[trial_Stim_toneFreq SessionResults{n}.Stim_Probe_pureTone_freq];
%         else
%             trial_Stim_toneFreq= [trial_Stim_toneFreq SessionResults{n}.Stim_toneFreq];
%         end
%     end
    trial_Stim_toneFreq = cellfun(@(x) x.Stim_toneFreq,SessionResults);
    
    
    trial_is_opto_flag = [];
    for m=1:length(SessionResults)
        if trial_is_probe_flag(m)==1
            trial_is_opto_flag=[trial_is_opto_flag SessionResults{m}.Trial_isOptoProbeTrial];
        else
            trial_is_opto_flag= [trial_is_opto_flag SessionResults{m}.Trial_isOptoTraingTrial];
        end
    end     
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    %     Time_OptoOnset = 0;   %%%%
    %     Time_OptoOff = 1000;  %%%%
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    if sum(trial_is_opto_flag)~=0
        trial_is_opto = find(trial_is_opto_flag==1);
        trial_time_optoStimOnset = cellfun(@(x) x.Time_optoStimOnset,SessionResults);
        trial_time_optoStimOffTime = cellfun(@(x) x.Time_optoStimOffTime,SessionResults);
        Time_OptoOnset = trial_time_optoStimOnset(trial_is_opto(1))- trial_time_stimOnset(trial_is_opto(1)) ;
        Time_OptoOff = trial_time_optoStimOffTime(trial_is_opto(1))- trial_time_stimOnset(trial_is_opto(1)) ;
    end
    trial_eff = zeros(1,length(trial_inds));
    start_trail_number =1;                                                                                                                        % get the efficient trials
    end_trial_number = length(trial_inds);
    trial_eff(start_trail_number:end_trial_number)=1;

    % %%% definite the trial types which will be used for ploting
    % %%%  Definition 1: 
    % title_str= {'Left-NoOpto','Left-Opto','Right-NoOpto','Right-Opto'};
    % trials_all_types(1,:) = ~trial_is_opto_flag & trial_trialType==0 & trial_eff;
    % trials_all_types(2,:) = trial_is_opto_flag & (trial_trialType==0) & trial_eff;
    % trials_all_types(3,:) = (~trial_is_opto_flag) & (trial_trialType==1) & trial_eff;
    % trials_all_types(4,:) = trial_is_opto_flag & (trial_trialType==1) & trial_eff;
    %%%%%%  Definition 2:  
    title_str= {'Left-NoOpto-chooseLeft', 'Left-Opto-chooseLeft', 'Right-NoOpto-chooseLeft','Right-Opto-chooseLeft',...
                'Left-NoOpto-chooseRight','Left-Opto-chooseRight','Right-NoOpto-chooseRight','Right-Opto-chooseRight'};
    trials_all_types(1,:) = ~trial_is_opto_flag   & trial_trialType==0   & trial_choice == 0 & trial_eff;
    trials_all_types(2,:) = trial_is_opto_flag    & (trial_trialType==0) & trial_choice == 0 & trial_eff;
    trials_all_types(3,:) = (~trial_is_opto_flag) & (trial_trialType==1) & trial_choice == 0 & trial_eff;
    trials_all_types(4,:) = trial_is_opto_flag    & (trial_trialType==1) & trial_choice == 0 & trial_eff;

    trials_all_types(5,:) = ~trial_is_opto_flag   & trial_trialType==0   & trial_choice == 1 & trial_eff;
    trials_all_types(6,:) = trial_is_opto_flag    & (trial_trialType==0) & trial_choice == 1 & trial_eff;
    trials_all_types(7,:) = (~trial_is_opto_flag) & (trial_trialType==1) & trial_choice == 1 & trial_eff;
    trials_all_types(8,:) = trial_is_opto_flag    & (trial_trialType==1) & trial_choice == 1 & trial_eff;

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %%%%%%%%%%%%%%%%%%%%%%%% plot lick raster(8 types) %%%%%%%%%%%%%%%%%%%%%%
    figure1 = figure;
    for i=1:size(trials_all_types,1)
        inds_one_certain_type = [];
        trial_lickTimeLeft_OneType =[];
        trial_lickTimeRight_OneType = [];
        inds_one_certain_type = find(trials_all_types(i,:));
        trial_lickTimeLeft_OneType = trial_lickTimeLeft(inds_one_certain_type-(start_trail_number-1)); % dff_oneType
        trial_lickTimeRight_OneType = trial_lickTimeRight(inds_one_certain_type-(start_trail_number-1)); % dff_oneType
        time_stimOnset = trial_time_stimOnset(inds_one_certain_type);
        axis_handle(i)= subplot(size(trials_all_types,1)/4,4,i);  
        stim_area = patch([0 0 300 300],[0 length(trial_lickTimeLeft_OneType) length(trial_lickTimeLeft_OneType) 0], [.9 .9 .9],'edgecolor','w');
        if sum(trial_is_opto_flag)~=0
            if mod(i,2)==0
                line([Time_OptoOnset Time_OptoOnset],[0 length(trial_lickTimeLeft_OneType)],'color','g');
                line([Time_OptoOff Time_OptoOff],[0 length(trial_lickTimeLeft_OneType)],'color','g'); 
            end
        end
        for j=1:length(trial_lickTimeLeft_OneType)
            soundTimeZero = double(time_stimOnset(j));
%             trial_lickTimeLeft_OneType_soundTimeZero = cellfun(@(x) x-soundTimeZero ,trial_lickTimeLeft_OneType,'UniformOutput',false);   
%             trial_lickTimeRight_OneType_soundTimeZero = cellfun(@(x) x-soundTimeZero ,trial_lickTimeRight_OneType,'UniformOutput',false);  
            trial_lickTimeLeft_OneType_soundTimeZero{j} = trial_lickTimeLeft_OneType{j} - soundTimeZero ; 
            trial_lickTimeRight_OneType_soundTimeZero{j} = trial_lickTimeRight_OneType{j} - soundTimeZero;
            
            line([repmat(trial_lickTimeLeft_OneType_soundTimeZero{j},2,1)],[repmat([j-1],1,length(trial_lickTimeLeft_OneType_soundTimeZero{j}));repmat([j],1,length(trial_lickTimeLeft_OneType_soundTimeZero{j}))],'color','black','LineWidth',1);
            hold on;
            line([repmat(trial_lickTimeRight_OneType_soundTimeZero{j},2,1)],[repmat([j-1],1,length(trial_lickTimeRight_OneType_soundTimeZero{j}));repmat([j],1,length(trial_lickTimeRight_OneType_soundTimeZero{j}))],'color','r','LineWidth',1);
        end
        set(gca,'xlim',[-2000,5000]);
        if length(trial_lickTimeLeft_OneType)~=0
            set(gca,'ylim',[0,length(trial_lickTimeLeft_OneType)]);
        end
        title(title_str{i},'fontsize',8);
    end
    set(gcf,'position',[10 630 1600 450]);
    
    cd(pathway);
    FigureName_lickTime = [pathway '\' files(fileNumber).name(1:(end-4)) '-LickTime' '.png'];
    titleName = strrep(files(fileNumber).name,'_','-');
    suptitle(titleName);
    saveas(gcf,FigureName_lickTime);
    saveas(gcf,'lickTime','epsc');
%     close;

%%%%%%%
%     time_goCueOnset= cellfun(@(x) x.Time_goCueOnset, SessionResults);
%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     %%%%%%%%%%%%%%%%%%%%%%%% plot lick raster(8 types)__GoCueZero %%%%%%%%%%%%%%%%%%%%%%
%     figure1 = figure;
%     for i=1:size(trials_all_types,1)
%         inds_one_certain_type = [];
%         trial_lickTimeLeft_OneType =[];
%         trial_lickTimeRight_OneType = [];
%         inds_one_certain_type = find(trials_all_types(i,:));
%         trial_lickTimeLeft_OneType = trial_lickTimeLeft(inds_one_certain_type-(start_trail_number-1)); % dff_oneType
%         trial_lickTimeRight_OneType = trial_lickTimeRight(inds_one_certain_type-(start_trail_number-1)); % dff_oneType
%         time_goCueOnset_oneTrialType = time_goCueOnset(inds_one_certain_type);
%         axis_handle(i)= subplot(size(trials_all_types,1)/4,4,i);  
%         stim_area = patch([0 0 300 300],[0 length(trial_lickTimeLeft_OneType) length(trial_lickTimeLeft_OneType) 0], [.9 .9 .9],'edgecolor','w');
%         if sum(trial_is_opto_flag)~=0
%             if mod(i,2)==0
%                 line([Time_OptoOnset Time_OptoOnset],[0 length(trial_lickTimeLeft_OneType)],'color','g');
%                 line([Time_OptoOff Time_OptoOff],[0 length(trial_lickTimeLeft_OneType)],'color','g'); 
%             end
%         end
%         for j=1:length(trial_lickTimeLeft_OneType)
%             goCueTimeZero = double(time_goCueOnset_oneTrialType(j));
% %             trial_lickTimeLeft_OneType_soundTimeZero = cellfun(@(x) x-soundTimeZero ,trial_lickTimeLeft_OneType,'UniformOutput',false);   
% %             trial_lickTimeRight_OneType_soundTimeZero = cellfun(@(x) x-soundTimeZero ,trial_lickTimeRight_OneType,'UniformOutput',false);  
%             trial_lickTimeLeft_OneType_soundTimeZero{j} = trial_lickTimeLeft_OneType{j} - goCueTimeZero ; 
%             trial_lickTimeRight_OneType_soundTimeZero{j} = trial_lickTimeRight_OneType{j} - goCueTimeZero;
%             
%             line([repmat(trial_lickTimeLeft_OneType_soundTimeZero{j},2,1)],[repmat([j-1],1,length(trial_lickTimeLeft_OneType_soundTimeZero{j}));repmat([j],1,length(trial_lickTimeLeft_OneType_soundTimeZero{j}))],'color','black','LineWidth',1);
%             hold on;
%             line([repmat(trial_lickTimeRight_OneType_soundTimeZero{j},2,1)],[repmat([j-1],1,length(trial_lickTimeRight_OneType_soundTimeZero{j}));repmat([j],1,length(trial_lickTimeRight_OneType_soundTimeZero{j}))],'color','r','LineWidth',1);
%         end
%         set(gca,'xlim',[-2000,5000]);
%         if length(trial_lickTimeLeft_OneType)~=0
%             set(gca,'ylim',[0,length(trial_lickTimeLeft_OneType)]);
%         end
%         title(title_str{i},'fontsize',8);
%     end
%     set(gcf,'position',[10 530 1600 450]);
%     
%     FigureName_lickTime = [pathway '\'  files(fileNumber).name(1:(end-4)) '--GoCueZero' '.png'];
%     titleName = [strrep(files(fileNumber).name(1:(end-4)),'_','-') '--GoCueZero'];
%     suptitle(titleName);
%     saveas(gcf,FigureName_lickTime);
% %     close;
% 
%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Plot lick Trace(8 Types), aligh to sound  %%%%%%%%%%%%%%%%%%%%%%%
    binSize = 100;
    binranges = {};
    for i=1:size(trials_all_types,1)
        inds_one_certain_type = [];
        trial_lickTimeLeft_OneType =[];
        trial_lickTimeRight_OneType = [];
        inds_one_certain_type = find(trials_all_types(i,:));
        trial_lickTimeLeft_OneType = trial_lickTimeLeft(inds_one_certain_type-(start_trail_number-1)); % dff_oneType
        trial_lickTimeRight_OneType = trial_lickTimeRight(inds_one_certain_type-(start_trail_number-1)); % dff_oneType
        time_stimOnset = trial_time_stimOnset(inds_one_certain_type);

        trial_lickTimeLeft_OneType_soundTimeZero ={};
        trial_lickTimeRight_OneType_soundTimeZero ={};
        trial_lickTimeLeft_OneType_soundTimeZero_mat = [];
        trial_lickTimeRight_OneType_soundTimeZero_mat = [];
        x_lim_min = [];
        x_lim_max = [];
        mat1 = [];
        mat2 = [];
        for j=1:length(trial_lickTimeLeft_OneType)
            soundTimeZero = double(time_stimOnset(j));
            trial_lickTimeLeft_OneType_soundTimeZero_temp = [];
            trial_lickTimeRight_OneType_soundTimeZero_temp = [];
%             trial_lickTimeLeft_OneType_soundTimeZero_temp = cellfun(@(x) x-soundTimeZero ,trial_lickTimeLeft_OneType,'UniformOutput',false);
            trial_lickTimeLeft_OneType_soundTimeZero_temp{j} = trial_lickTimeLeft_OneType{j} - soundTimeZero;
            trial_lickTimeLeft_OneType_soundTimeZero = {trial_lickTimeLeft_OneType_soundTimeZero{:} trial_lickTimeLeft_OneType_soundTimeZero_temp{j} };
%             trial_lickTimeRight_OneType_soundTimeZero_temp = cellfun(@(x) x-soundTimeZero ,trial_lickTimeRight_OneType,'UniformOutput',false);  
            trial_lickTimeRight_OneType_soundTimeZero_temp{j} =  trial_lickTimeRight_OneType{j} - soundTimeZero;
            trial_lickTimeRight_OneType_soundTimeZero = {trial_lickTimeRight_OneType_soundTimeZero{:} trial_lickTimeRight_OneType_soundTimeZero_temp{j} };

            trial_lickTimeLeft_OneType_soundTimeZero_mat = cell2mat(trial_lickTimeLeft_OneType_soundTimeZero);
            mat1 = trial_lickTimeLeft_OneType_soundTimeZero_mat;
            trial_lickTimeRight_OneType_soundTimeZero_mat = cell2mat(trial_lickTimeRight_OneType_soundTimeZero);
            mat2 = trial_lickTimeRight_OneType_soundTimeZero_mat;
        end
%             x_lim_min = min([mat1 mat2]);
%             x_lim_max = max([mat1 mat2]);

            binranges_left{i} = min(mat1):binSize:max(mat1);
            binranges_right{i} = min(mat2):binSize:max(mat2);
            
            bincounts_left{i,:} = histc(mat1,binranges_left{i})./length(trial_lickTimeLeft_OneType)./binSize.*1000;
    %         bar(binranges,bincounts_left,'histc');
            bincounts_right{i,:} = histc(mat2,binranges_right{i})./length(trial_lickTimeLeft_OneType)./binSize.*1000;
    %         bar(binranges,bincounts_right,'histc');
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    figure2 = figure;
        subplot(2,2,1);
        stim_area = patch([0 0 300 300],[0 10 10 0], [.9 .9 .9],'edgecolor','w');
        hold on;
        plot(binranges_left{1},bincounts_left{1},'black');
        hold on;
        plot(binranges_left{2},bincounts_left{2},'b');
        hold on;
        plot(binranges_right{1},bincounts_right{1},'r');
        hold on;
        plot(binranges_right{2},bincounts_right{2},'color',[1,0.8,0.2]);
        title('LeftSound-ChooseLeft','fontsize',12,'fontweight','bold');
        set(gca,'xlim',[-2000,5000]);
        xlabel('time (ms)');
        ylabel('licking rate (licks/second)');
        if sum(trial_is_opto_flag)~=0
            line([Time_OptoOnset Time_OptoOnset],[0 10],'color','g');
            line([Time_OptoOff Time_OptoOff],[0 10],'color','g'); 
        end
        
        subplot(2,2,2);
        stim_area = patch([0 0 300 300],[0 10 10 0], [.9 .9 .9],'edgecolor','w');
        hold on;
        plot(binranges_left{3},bincounts_left{3},'black');
        hold on;
        plot(binranges_left{4},bincounts_left{4},'b');
        hold on;
        plot(binranges_right{3},bincounts_right{3},'r');
        hold on;
        plot(binranges_right{4},bincounts_right{4},'color',[1,0.8,0.2]);
        title('RightSound-ChooseLeft','fontsize',12,'fontweight','bold');
        set(gca,'xlim',[-2000,5000]);
        xlabel('time (ms)');
        ylabel('licking rate (licks/second)');
        if sum(trial_is_opto_flag)~=0
            line([Time_OptoOnset Time_OptoOnset],[0 10],'color','g');
            line([Time_OptoOff Time_OptoOff],[0 10],'color','g'); 
        end
        
        subplot(2,2,3);
        stim_area = patch([0 0 300 300],[0 10 10 0], [.9 .9 .9],'edgecolor','w');
        hold on;
        plot(binranges_left{5},bincounts_left{5},'black');
        hold on;
        plot(binranges_left{6},bincounts_left{6},'b');
        hold on;
        plot(binranges_right{5},bincounts_right{5},'r');
        hold on;
        plot(binranges_right{6},bincounts_right{6},'color',[1,0.8,0.2]);
        title('LeftSound-ChooseRight','fontsize',12,'fontweight','bold');
        set(gca,'xlim',[-2000,5000]);
        xlabel('time (ms)');
        ylabel('licking rate (licks/second)');
        if sum(trial_is_opto_flag)~=0
            line([Time_OptoOnset Time_OptoOnset],[0 10],'color','g');
            line([Time_OptoOff Time_OptoOff],[0 10],'color','g'); 
        end

        subplot(2,2,4);
        stim_area = patch([0 0 300 300],[0 10 10 0], [.9 .9 .9],'edgecolor','w');
        hold on;
        plot(binranges_left{7},bincounts_left{7},'black');
        hold on;
        plot(binranges_left{8},bincounts_left{8},'b');
        hold on;
        plot(binranges_right{7},bincounts_right{7},'r');
        hold on;
        plot(binranges_right{8},bincounts_right{8},'color',[1,0.8,0.2]);
        title('RightSound-ChooseRight','fontsize',12,'fontweight','bold');
        set(gca,'xlim',[-2000,5000]);
        xlabel('time (ms)');
        ylabel('licking rate (licks/second)');
        if sum(trial_is_opto_flag)~=0
            line([Time_OptoOnset Time_OptoOnset],[0 10],'color','g');
            line([Time_OptoOff Time_OptoOff],[0 10],'color','g'); 
        end
        
    set(gcf,'position',[10 80 1600 450]);
    FigureName_LickTrace = [pathway '\' files(fileNumber).name(1:(end-4)) '-LickRateTrace(alighToSound)'  '.png'];
    titleName = strrep(files(fileNumber).name,'_','-');
    suptitle(titleName);
    saveas(gcf,FigureName_LickTrace);
    saveas(gcf,'LickTrace(alighToSound)','epsc');
    
%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Plot lick Trace(8 Types), aligh to answer  %%%%%%%%%%%%%%%%%%%%%%%
    binSize = 100;
    binranges = {};
    for i=1:size(trials_all_types,1)
        inds_one_certain_type = [];
        trial_lickTimeLeft_OneType =[];
        trial_lickTimeRight_OneType = [];
        inds_one_certain_type = find(trials_all_types(i,:));
        trial_lickTimeLeft_OneType = trial_lickTimeLeft(inds_one_certain_type-(start_trail_number-1)); % dff_oneType
        trial_lickTimeRight_OneType = trial_lickTimeRight(inds_one_certain_type-(start_trail_number-1)); % dff_oneType
        time_ans = trial_time_answer(inds_one_certain_type);

        trial_lickTimeLeft_OneType_ansTimeZero ={};
        trial_lickTimeRight_OneType_ansTimeZero ={};
        trial_lickTimeLeft_OneType_ansTimeZero_mat = [];
        trial_lickTimeRight_OneType_ansTimeZero_mat = [];
        x_lim_min = [];
        x_lim_max = [];
        mat3 = [];
        mat4 = [];
        for j=1:length(trial_lickTimeLeft_OneType)
            ansTimeZero = double(time_ans(j));
            trial_lickTimeLeft_OneType_ansTimeZero_temp = [];
            trial_lickTimeRight_OneType_ansTimeZero_temp = [];
%             trial_lickTimeLeft_OneType_soundTimeZero_temp = cellfun(@(x) x-soundTimeZero ,trial_lickTimeLeft_OneType,'UniformOutput',false);
            trial_lickTimeLeft_OneType_ansTimeZero_temp{j} = trial_lickTimeLeft_OneType{j} - ansTimeZero;
            trial_lickTimeLeft_OneType_ansTimeZero = {trial_lickTimeLeft_OneType_ansTimeZero{:} trial_lickTimeLeft_OneType_ansTimeZero_temp{j} };
%             trial_lickTimeRight_OneType_soundTimeZero_temp = cellfun(@(x) x-soundTimeZero ,trial_lickTimeRight_OneType,'UniformOutput',false);  
            trial_lickTimeRight_OneType_ansTimeZero_temp{j} =  trial_lickTimeRight_OneType{j} - ansTimeZero;
            trial_lickTimeRight_OneType_ansTimeZero = {trial_lickTimeRight_OneType_ansTimeZero{:} trial_lickTimeRight_OneType_ansTimeZero_temp{j} };

            trial_lickTimeLeft_OneType_ansTimeZero_mat = cell2mat(trial_lickTimeLeft_OneType_ansTimeZero);
            mat3 = trial_lickTimeLeft_OneType_ansTimeZero_mat;
            trial_lickTimeRight_OneType_ansTimeZero_mat = cell2mat(trial_lickTimeRight_OneType_ansTimeZero);
            mat4 = trial_lickTimeRight_OneType_ansTimeZero_mat;
        end
%             x_lim_min = min([mat1 mat2]);
%             x_lim_max = max([mat1 mat2]);
            binranges_left{i} = min(mat3):binSize:max(mat3);
            binranges_right{i} = min(mat4):binSize:max(mat4);
            bincounts_left{i,:} = histc(mat3,binranges_left{i})./length(trial_lickTimeLeft_OneType)./binSize.*1000;
    %         bar(binranges,bincounts_left,'histc');
            bincounts_right{i,:} = histc(mat4,binranges_right{i})./length(trial_lickTimeLeft_OneType)./binSize.*1000;
    %         bar(binranges,bincounts_right,'histc');
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    figure;
        subplot(2,2,1);
        stim_area = patch([0 0 500 500],[0 10 10 0], [.9 .9 .9],'edgecolor','w');hold on;
        plot(binranges_left{1},bincounts_left{1},'black');hold on;
        plot(binranges_left{2},bincounts_left{2},'b');hold on;
        plot(binranges_right{1},bincounts_right{1},'r');hold on;
        plot(binranges_right{2},bincounts_right{2},'color',[1,0.8,0.2]);
        title('LeftSound-ChooseLeft','fontsize',12,'fontweight','bold');
        set(gca,'xlim',[-2000,5000]);
        xlabel('time (ms)'); ylabel('licking rate (licks/second)');
        if sum(trial_is_opto_flag)~=0
            line([Time_OptoOnset Time_OptoOnset],[0 10],'color','g');
            line([Time_OptoOff Time_OptoOff],[0 10],'color','g'); 
        end
        subplot(2,2,2);
        stim_area = patch([0 0 500 500],[0 10 10 0], [.9 .9 .9],'edgecolor','w');hold on;
        plot(binranges_left{3},bincounts_left{3},'black');hold on;
        plot(binranges_left{4},bincounts_left{4},'b');hold on;
        plot(binranges_right{3},bincounts_right{3},'r');hold on;
        plot(binranges_right{4},bincounts_right{4},'color',[1,0.8,0.2]);
        title('RightSound-ChooseLeft','fontsize',12,'fontweight','bold');
        set(gca,'xlim',[-2000,5000]);
        xlabel('time (ms)'); ylabel('licking rate (licks/second)');
        if sum(trial_is_opto_flag)~=0
            line([Time_OptoOnset Time_OptoOnset],[0 10],'color','g');
            line([Time_OptoOff Time_OptoOff],[0 10],'color','g'); 
        end
        subplot(2,2,3);
        stim_area = patch([0 0 500 500],[0 10 10 0], [.9 .9 .9],'edgecolor','w');hold on;
        plot(binranges_left{5},bincounts_left{5},'black');hold on;
        plot(binranges_left{6},bincounts_left{6},'b');hold on;
        plot(binranges_right{5},bincounts_right{5},'r');hold on;
        plot(binranges_right{6},bincounts_right{6},'color',[1,0.8,0.2]);
        title('LeftSound-ChooseRight','fontsize',12,'fontweight','bold');
        set(gca,'xlim',[-2000,5000]);
        xlabel('time (ms)');
        ylabel('licking rate (licks/second)');
        if sum(trial_is_opto_flag)~=0
            line([Time_OptoOnset Time_OptoOnset],[0 10],'color','g');
            line([Time_OptoOff Time_OptoOff],[0 10],'color','g'); 
        end

        subplot(2,2,4);
        stim_area = patch([0 0 500 500],[0 10 10 0], [.9 .9 .9],'edgecolor','w');hold on;
        plot(binranges_left{7},bincounts_left{7},'black');hold on;
        plot(binranges_left{8},bincounts_left{8},'b');hold on;
        plot(binranges_right{7},bincounts_right{7},'r');hold on;
        plot(binranges_right{8},bincounts_right{8},'color',[1,0.8,0.2]);
        title('RightSound-ChooseRight','fontsize',12,'fontweight','bold');
        set(gca,'xlim',[-2000,5000]);
        xlabel('time (ms)');
        ylabel('licking rate (licks/second)');
        if sum(trial_is_opto_flag)~=0
            line([Time_OptoOnset Time_OptoOnset],[0 10],'color','g');
            line([Time_OptoOff Time_OptoOff],[0 10],'color','g'); 
        end
        
    set(gcf,'position',[10 80 1600 450]);
    FigureName_LickTrace = [pathway '\' files(fileNumber).name(1:(end-4)) '-LickRateTrace(AlighToAns)'  '.png'];
    titleName = strrep(files(fileNumber).name,'_','-');
    suptitle(titleName);
    saveas(gcf,FigureName_LickTrace);
    saveas(gcf,'LickTrace(AlighToAns)','epsc');

    close all;
    clc;
    clear;
end
