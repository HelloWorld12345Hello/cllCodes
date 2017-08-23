% cd('E:\behavior_417\20151027\PS'); %datapath
clc;
clear;
%%
clc;
clear;
files=dir('*.mat');
for file_number= 1:length(files) 
    files=dir('*.mat'); 
    filename=files(file_number).name;
    load(filename);
    % post analysis
        trial_inds= cellfun(@(x) x.Trial_inds, SessionResults);
        trial_type= cellfun(@(x) x.Trial_Type, SessionResults);
        trial_choice=cellfun(@(x) x.Action_choice,SessionResults);
        trial_time_stimOnset= cellfun(@(x) x.Time_stimOnset, SessionResults);
        trial_time_answer=cellfun(@(x) x.Time_answer,SessionResults);
        trial_is_probe_flag = cellfun(@(x) x.Trial_isProbeTrial, SessionResults);
        trial_Stim_toneFreq =[];
%         for n=1:length(SessionResults)
%             if trial_is_probe_flag(n)==1
%                 trial_Stim_toneFreq=[trial_Stim_toneFreq SessionResults{n}.Stim_Probe_pureTone_freq];
%             else
%                 trial_Stim_toneFreq= [trial_Stim_toneFreq SessionResults{n}.Stim_toneFreq];
%             end
%         end
        trial_Stim_toneFreq = cellfun(@(x) x.Stim_toneFreq,SessionResults);
%         
        trial_correct = trial_type == trial_choice;
        trial_is_opto_flag = [];
        for m=1:length(SessionResults)
            if trial_is_probe_flag(m)==1
                trial_is_opto_flag=[trial_is_opto_flag SessionResults{m}.Trial_isOptoProbeTrial];
            else
                trial_is_opto_flag= [trial_is_opto_flag SessionResults{m}.Trial_isOptoTraingTrial];
            end
        end
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%%  get the efficient trials ( when the number of miss trials in constant 5 trials is larger than three, later trials are not count. )
        for T_eff= 1:length(trial_choice)-4
            trial_choice_tem = [];
            trial_choice_tem = trial_choice(T_eff:T_eff+4);
            if sum(trial_choice_tem==2)>=3 & T_eff >length(trial_choice)*0.7
                break
            end
        end
        trial_eff = zeros(1,length(SessionResults));
        start_trail_number =1;                                                                        
%         end_trial_number =length(trial_inds);
        end_trial_number = T_eff;
        trial_eff(start_trail_number:end_trial_number)=1;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        freq_uniq= unique(trial_Stim_toneFreq);
        freq_uniq = double(freq_uniq);
        freq_oct = log2(freq_uniq./min(freq_uniq));

        for m=1:length(freq_uniq)
            trial_freq(m,:) = trial_Stim_toneFreq == freq_uniq(m) & trial_eff;
            trial_freq_opto(m,:) = trial_Stim_toneFreq == freq_uniq(m) & trial_eff & trial_is_opto_flag;
            trial_freq_NoOpto(m,:) = trial_Stim_toneFreq == freq_uniq(m) & trial_eff & ~ trial_is_opto_flag;
            trial_freq_opto_NoMiss(m,:) = trial_Stim_toneFreq == freq_uniq(m) & trial_eff & trial_is_opto_flag & double(trial_choice) ~=2;
            trial_freq_NoOpto_NoMiss(m,:) = trial_Stim_toneFreq == freq_uniq(m) & trial_eff & ~ trial_is_opto_flag &double(trial_choice) ~=2;

            trial_freq_opto_ChooseRight(m,:) = trial_Stim_toneFreq == freq_uniq(m) & trial_eff & trial_is_opto_flag & trial_choice ==1;
            trial_freq_NoOpto_ChooseRight(m,:) = trial_Stim_toneFreq == freq_uniq(m) & trial_eff & ~ trial_is_opto_flag & trial_choice ==1;
            
            trial_freq_opto_Miss(m,:) = trial_Stim_toneFreq == freq_uniq(m) & trial_eff & trial_is_opto_flag & trial_choice ==2;
            trial_freq_NoOpto_Miss(m,:) = trial_Stim_toneFreq == freq_uniq(m) & trial_eff & ~ trial_is_opto_flag & trial_choice ==2;
        end
        results_opto = zeros(length(freq_uniq),5);
        results_NoOpto = zeros(length(freq_uniq),5);
        results_opto =[freq_uniq' sum(trial_freq_opto_NoMiss,2) sum(trial_freq_opto_ChooseRight,2) sum(trial_freq_opto_ChooseRight,2)./sum(trial_freq_opto_NoMiss,2)];
        results_NoOpto = [freq_uniq' sum(trial_freq_NoOpto_NoMiss,2) sum(trial_freq_NoOpto_ChooseRight,2) sum(trial_freq_NoOpto_ChooseRight,2)./sum(trial_freq_NoOpto_NoMiss,2)];
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % results_NoOpto(:,end)=mean(NoOpto,2);
        % results_opto(:,end)=mean(Opto,2);
        % errorbar(freq_oct,mean(Opto,2),std(Opto,0,2),'o','color','g');
        % hold on;
        % errorbar(freq_oct,mean(NoOpto,2),std(NoOpto,0,2),'o','color','b');

        if length(freq_uniq)~=2
            %%%%%%%%%%%%%%%%%%%%%%%%%%%%% without miss
            figure1= figure;
            if sum(trial_is_opto_flag)~=0
                [Qpre1,p1]=fit_logistic(freq_oct,results_opto(:,4)');
                psyc_fun1 = @(t)(p1(2)./(1 + exp(-p1(3).*(t-p1(1)))));
                t1=freq_oct(1):0.0001:freq_oct(length(freq_oct)); 
                plot(freq_oct,results_opto(:,4)','r.',t1,psyc_fun1(t1),'markersize',30, 'linewidth',3,'color','r');
%                 plot(freq_oct,results_opto(:,4)','r.','markersize',30, 'linewidth',3,'color','r');
                logFitPara = [{Qpre1;freq_oct;p1;psyc_fun1;t1},{'Qpre1';'freq_oct';'p1';'psyc_fun1';'t1'}];
                hold on;
            end
            [Qpre2,p2]=fit_logistic(freq_oct,results_NoOpto(:,4)');
            psyc_fun2= @(t)(p2(2)./(1 + exp(-p2(3).*(t-p2(1)))));
            t2=freq_oct(1):0.0001:freq_oct(length(freq_oct)); 
            plot(freq_oct,results_NoOpto(:,4)','k.',t2,psyc_fun2(t2),'markersize',30, 'linewidth',3,'color','k');
            logFitPara = [{Qpre2;freq_oct;p2;psyc_fun2;t2},{'Qpre1';'freq_oct';'p1';'psyc_fun1';'t1'}];
            % legend('NoOpto','location','southeast');
            [h1,p1]= ttest2(results_NoOpto(:,4), results_opto(:,4));
%             text(1.6,0.3,['p=' num2str(p1)],'fontsize',12,'fontweight','bold');

            hold on;
            savename=strcat( filename, '-Plot-NoMiss' , '.png');
            fileName = strrep(savename,'_','-') ;
            title(fileName, 'fontsize',10,'fontweight','bold' );
            set(gca,'ylim',[0 1.1]);
            saveas(figure1,savename);
            %%%%%%%%%%%%%%%%%%%%%%%%%%% with miss
            Num_freq= length(freq_uniq);
            if sum((trial_Stim_toneFreq > max(freq_uniq)/2 & trial_type==0) | (trial_Stim_toneFreq < max(freq_uniq)/2 & trial_type==1))==0 %% High Freq choose Right
                results_opto(1:Num_freq/2,5)= (sum(trial_freq_opto_ChooseRight(1:Num_freq/2,:),2) + sum(trial_freq_opto_Miss(1:Num_freq/2,:),2) )./sum(trial_freq_opto(1:Num_freq/2,:),2);
                results_opto(Num_freq/2+1:Num_freq ,5)= sum(trial_freq_opto_ChooseRight(Num_freq/2+1:Num_freq,:),2)./sum(trial_freq_opto(Num_freq/2+1:Num_freq,:),2);

                results_NoOpto(1:Num_freq/2,5)= (sum(trial_freq_NoOpto_ChooseRight(1:Num_freq/2,:),2) + sum(trial_freq_NoOpto_Miss(1:Num_freq/2,:),2) )./sum(trial_freq_NoOpto(1:Num_freq/2,:),2);
                results_NoOpto(Num_freq/2+1:Num_freq ,5)= sum(trial_freq_NoOpto_ChooseRight(Num_freq/2+1:Num_freq,:),2)./sum(trial_freq_NoOpto(Num_freq/2+1:Num_freq,:),2);

            else
                results_opto(1:Num_freq/2,5)= sum(trial_freq_opto_ChooseRight(1:Num_freq/2,:),2)./sum(trial_freq_opto(1:Num_freq/2,:),2);
                results_opto(Num_freq/2+1:Num_freq ,5)= (sum(trial_freq_opto_ChooseRight(Num_freq/2+1:Num_freq,:),2) + sum(trial_freq_opto_Miss(Num_freq/2+1:Num_freq,:),2) )./sum(trial_freq_opto(Num_freq/2+1:Num_freq,:),2);

                results_NoOpto(1:Num_freq/2,5)=sum(trial_freq_NoOpto_ChooseRight(1:Num_freq/2,:),2)./sum(trial_freq_NoOpto(1:Num_freq/2,:),2);
                results_NoOpto(Num_freq/2+1:Num_freq ,5)=  (sum(trial_freq_NoOpto_ChooseRight(Num_freq/2+1:Num_freq,:),2) + sum(trial_freq_NoOpto_Miss(Num_freq/2+1:Num_freq,:),2) )./sum(trial_freq_NoOpto(Num_freq/2+1:Num_freq,:),2);

            end
     
            set(gca,'ylim',[0 1.1]);
            set(gca,'xtick',0:2/7:2);
            set(gca,'xticklabel',round(freq_uniq/1000),'fontweight','bold','fontsize',18);
            xlabel('Frequency (kHz)','fontweight','bold','fontsize',18);
            ylabel('Propotion Choosing Right','fontweight','bold','fontsize',18);
            box off;
            
            figure2= figure;
            if sum(trial_is_opto_flag)~=0
                [Qpre3,p3]=fit_logistic(freq_oct,results_opto(:,5)');
                psyc_fun3 = @(t)(p3(2)./(1 + exp(-p3(3).*(t-p3(1)))));
                t3=freq_oct(1):0.0001:freq_oct(length(freq_oct)); 
                plot(freq_oct,results_opto(:,5)','r.',t1,psyc_fun3(t3),'markersize',35, 'linewidth',3,'color','r');
                logFitPara = [{Qpre3;freq_oct;p3;psyc_fun3;t3},{'Qpre3';'freq_oct';'p3';'psyc_fun3';'t3'}];
                hold on;
            end

            [Qpre4,p4]=fit_logistic(freq_oct,results_NoOpto(:,5)');
            psyc_fun4= @(t)(p4(2)./(1 + exp(-p4(3).*(t-p4(1)))));
            t4=freq_oct(1):0.0001:freq_oct(length(freq_oct)); 
            plot(freq_oct,results_NoOpto(:,5)','k.',t4,psyc_fun4(t4),'markersize',35, 'linewidth',3,'color','k');
            logFitPara = [{Qpre4;freq_oct;p4;psyc_fun4;t4},{'Qpre4';'freq_oct';'p4';'psyc_fun4';'t1'}];
            % legend('NoOpto','location','southeast');
            hold on;
            text(1.6,0.4,['TrialNumber-eff  ' num2str(T_eff)],'fontsize',10,'fontweight','bold');

            savename=strcat( filename, '-Plot-WithMiss' , '.png');
            fileName = strrep(savename,'_','-') ;
            title(fileName, 'fontsize',10,'fontweight','bold' );
            set(gca,'ylim',[0 1.1]);
            saveas(figure2,savename);
%             close all;
        end
        
        clear;
end


        %%
        title('cll-CPU06-20150828-PsychometricCurve','fontsize',15,'fontweight','bold')

        b=[];
        for a=0:0.2:2
            b=[b floor(7000*2^a/1000)];
        end
        set(gca,'XTickLabel',b)
         ylabel('Propotion Choosing Right','fontweight','bold','fontsize',18);
         xlabel('Tone Frequency(kHz)','fontweight','bold','fontsize',18);
         
         
         
         
         
         