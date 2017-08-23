%%
%%%%%%%%%%%%%%%%%%%%%%%%% Single cell ROC 
tic
PostSoundDur=300; frame_sound_delta = PostSoundDur/SavedCaTrials.FrameTime;
PostAnsDur=500;   shuffle_times =100; 
rng shuffle; 
threshold =0;  alpha = 0.05; verbose = 1;

dff_2_correct = dff_2(find(trial_type==trial_choice),:,:);  %%%% only the correct trials are used, so the trial type==choice
dff_3_correct = dff_3(find(trial_type==trial_choice),:,:);
LR_correct = trial_type(find(trial_type==trial_choice));
choice_correct= trial_choice(find(trial_type==trial_choice));
%%%%%%%%%%%%%%%%% get the AUC of each neuron (from soundOnset)
AUC_c_sound=[]; AUC_c_sound_ci=[];AUC_c_sound_SE=[];
mean_SoundOn300=[]; ROC_c_sig_sound=[]; 
for N_roi =1:n_roi
    mean_SoundOn300= double(mean(squeeze(dff_2_correct(:,N_roi,frame_SoundOnset_min: frame_SoundOnset_min + PostSoundDur/SavedCaTrials.FrameTime )),2)*1000);
    x=double([mean_SoundOn300,LR_correct']);
    ROCout=[];
    ROCout=rocOnline(x,threshold,alpha,verbose);
    AUC_c_sound(N_roi)=ROCout.AUC;
    AUC_c_sound_ci(N_roi,1) = ROCout.ci(1);   AUC_c_sound_ci(N_roi,2) = ROCout.ci(2); 
    AUC_c_sound_SE(N_roi) =  ROCout.SE;
%     if ROCout.AUC < 0.5
%         area = 1-ROCout.AUC;
%     else
%         area = ROCout.AUC;
%     end
%     AUCs=[];a=[];
%     parfor n_shuffle = 1:shuffle_times
%         a= randperm(size(LR_correct,2));
%         shuffled_trialType = LR_correct(a);
%         x=double([mean_SoundOn300,shuffled_trialType']);
%         ROCout=rocOnline(x,threshold,alpha,verbose);
%         AUCs(n_shuffle)=ROCout.AUC;
%     end
%     if area > prctile(AUCs,95)
%         ROC_c_sig_sound(1,N_roi) = 1;
%     else
%         ROC_c_sig_sound(1,N_roi) = 0;
%     end
%     if area > prctile(AUCs,99)
%         ROC_c_sig_sound(2,N_roi) = 1;
%     else
%         ROC_c_sig_sound(2,N_roi) = 0;
%     end
end   
ROCresults.AUC_c_sound = AUC_c_sound;
% ROCresults.ROC_c_sig_sound_95 = ROC_c_sig_sound(1,:);
% ROCresults.ROC_c_sig_sound_99 = ROC_c_sig_sound(2,:);



% %%%%%%%%%%%%%%%%% get the AUC of each neuron (from answerTime)
% AUC_ans=[]; AUC_ans_ci=[];AUC_ans_SE=[];
% mean_Ans500=[]; ROC_sig_ans=[];
% for N_roi =1:n_roi
%     mean_Ans500= double(mean(squeeze(dff_3_correct(:,N_roi,time_answer_min/SavedCaTrials.FrameTime: (time_answer_min + PostAnsDur)/SavedCaTrials.FrameTime )),2)*1000);
%     x=double([mean_Ans500,LR_correct']);
%     ROCout=[];
%     ROCout=rocOnline(x,threshold,alpha,verbose);
%     AUC_ans(N_roi)=ROCout.AUC;
%     AUC_ans_ci(N_roi,1) = ROCout.ci(1);  AUC_ans_ci(N_roi,2) = ROCout.ci(2); 
%     AUC_ans_SE(N_roi) =  ROCout.SE;
%     if ROCout.AUC < 0.5
%         area = 1-ROCout.AUC;
%     else
%         area = ROCout.AUC;
%     end
%     AUCs=[];a=[];
%     parfor n_shuffle = 1:shuffle_times
%         a= randperm(size(LR_correct,2));
%         shuffled_trialType = LR_correct(a);
%         x=double([mean_Ans500,shuffled_trialType']);
%         ROCout=rocOnline(x,threshold,alpha,verbose);
%         AUCs(n_shuffle)=ROCout.AUC;
%     end
%     if area > prctile(AUCs,95)
%         ROC_sig_ans(1,N_roi) = 1;
%     else
%         ROC_sig_ans(1,N_roi) = 0;
%     end
%     
%     if area > prctile(AUCs,99)
%         ROC_sig_ans(2,N_roi) = 1;
%     else
%         ROC_sig_ans(2,N_roi) = 0;
%     end
% end   
% ROCresults.AUC_ans = AUC_ans;
% ROCresults.ROC_sig_ans_95 = ROC_sig_ans(1,:);
% ROCresults.ROC_sig_ans_99 = ROC_sig_ans(2,:);
%%
dff_2_error =   dff_2     (find(trial_type~=trial_choice & trial_choice~=2  ),:,:);  %%%% only the correct trials are used, so the trial type==choice
dff_3_error =   dff_3     (find(trial_type~=trial_choice & trial_choice~=2  ),:,:);
LH_error = trial_type     (find(trial_type~=trial_choice & trial_choice~=2  ));
choice_error= trial_choice(find(trial_type~=trial_choice & trial_choice~=2  ));
%%%%%%%%%%%%%%%%% get the AUC of each neuron (from soundOnset)
AUC_e_sound=[]; AUC_e_sound_ci=[];AUC_e_sound_SE=[];
mean_SoundOn300=[]; ROC_c_sig_sound=[]; 
for N_roi =1:n_roi
    mean_SoundOn300= double(mean(squeeze(dff_2_error(:,N_roi,frame_SoundOnset_min: frame_SoundOnset_min + PostSoundDur/SavedCaTrials.FrameTime )),2)*1000);
    x=double([mean_SoundOn300,LH_error']);
    ROCout=[];
    ROCout=rocOnline(x,threshold,alpha,verbose);
    AUC_e_sound(N_roi)=ROCout.AUC;
    AUC_e_sound_ci(N_roi,1) = ROCout.ci(1);   AUC_e_sound_ci(N_roi,2) = ROCout.ci(2); 
    AUC_e_sound_SE(N_roi) =  ROCout.SE;
%     if ROCout.AUC < 0.5
%         area = 1-ROCout.AUC;
%     else
%         area = ROCout.AUC;
%     end
%     AUCs=[];a=[];
%     parfor n_shuffle = 1:shuffle_times
%         a= randperm(size(LH_error,2));
%         shuffled_trialType = LH_error(a);
%         x=double([mean_SoundOn300,shuffled_trialType']);
%         ROCout=rocOnline(x,threshold,alpha,verbose);
%         AUCs(n_shuffle)=ROCout.AUC;
%     end
%     if area > prctile(AUCs,95)
%         ROC_c_sig_sound(1,N_roi) = 1;
%     else
%         ROC_c_sig_sound(1,N_roi) = 0;
%     end
%     if area > prctile(AUCs,99) 
%         ROC_c_sig_sound(2,N_roi) = 1;
%     else
%         ROC_c_sig_sound(2,N_roi) = 0;
%     end
end   
ROCresults.AUC_c_sound = AUC_e_sound;
% ROCresults.ROC_c_sig_sound_95 = ROC_c_sig_sound(1,:);
% ROCresults.ROC_c_sig_sound_99 = ROC_c_sig_sound(2,:);

figure;
plot((AUC_c_sound-0.5).*2,(AUC_e_sound-0.5)*2,'bo');hold on;
xlabel('preference in correct trials');ylabel('preference in error trials');
title([ CaTrials_filename(13:25)  'Population analysis of direction selectivity'] );
line([-1,1],[0,0],'color','k','linestyle','--');line([0,0],[-1,1],'color','k','linestyle','--');
x1=(AUC_c_sound-0.5).*2;  y1=(AUC_e_sound-0.5)*2;
[R,p]= corrcoef(x1,y1);
text(-0.8,-0.2,  ['n = ' num2str(n_roi) ' neurons'],'color','k','fontsize',12 ); 
text(-0.8,-0.4,['R^2= ' num2str(R(1,2)^2)],'color','k','fontsize',12 );  
text(-0.8,-0.6, ['p= ' num2str(p(2,1))],'color','k','fontsize',12 );  
[p_1 S1] = polyfit(x1,y1,1);
fit_1 = polyval(p_1,x1); plot(x1,fit_1,'k');



%%
%%%%%%%%%%%%%%%%%%%%%%%% plot the AUCs aligned to sound and alighed to answer
ROC_c_sig_sound = ROCresults.ROC_sig_sound_99;
ROC_sig_ans = ROCresults.ROC_sig_ans_99;
figure;
hold on;
plot(AUC_c_sound (find(ROC_c_sig_sound==1 & ROC_sig_ans==1)),  AUC_ans (find(ROC_c_sig_sound==1 & ROC_sig_ans==1)),'ko','markersize',10,'linewidth',1.5);
plot(AUC_c_sound (find(ROC_c_sig_sound==1 & ROC_sig_ans==0)),  AUC_ans (find(ROC_c_sig_sound==1 & ROC_sig_ans==0)),'ro','markersize',10,'linewidth',1.5);
plot(AUC_c_sound (find(ROC_c_sig_sound==0 & ROC_sig_ans==1)),  AUC_ans (find(ROC_c_sig_sound==0 & ROC_sig_ans==1)),'bo','markersize',10,'linewidth',1.5);
plot(AUC_c_sound (find(ROC_c_sig_sound==0 & ROC_sig_ans==0)),  AUC_ans (find(ROC_c_sig_sound==0 & ROC_sig_ans==0)),'go','markersize',10,'linewidth',1.5);
% line([0.5,0.5],[min(AUC_ans)-0.1,max(AUC_ans)+0.2],'color','r','linewidth',1.4); line([min(AUC_sound)-0.05,max(AUC_sound)+0.1],[0.5,0.5],'color','b','linewidth',1.4);
line([0.5,0.5],[0,1.2],'color','r','linewidth',1.4); line([0,1.2],[0.5,0.5],'color','b','linewidth',1.4);
type1 = find(ROC_c_sig_sound==1 & ROC_sig_ans==1);
type2 = find(ROC_c_sig_sound==1 & ROC_sig_ans==0);
type3 = find(ROC_c_sig_sound==0 & ROC_sig_ans==1);
type4 = find(ROC_c_sig_sound==0 & ROC_sig_ans==0);
text(min(AUC_c_sound)-0.04,max(AUC_ans)+0.19,['sound & ans ('                     num2str(length(type1)) '): ' num2str(type1)],'color','k');
text(min(AUC_c_sound)-0.04,max(AUC_ans)+0.16,['sound ' num2str(PostSoundDur) ' (' num2str(length(type2)) '): ' num2str(type2)],'color','r');
text(min(AUC_c_sound)-0.04,max(AUC_ans)+0.13,['ans '   num2str(PostAnsDur) ' ('   num2str(length(type3)) '): ' num2str(type3)],'color','b');
text(min(AUC_c_sound)-0.04,max(AUC_ans)+0.10,['neither ('                         num2str(length(type4)) '): ' num2str(type4)],'color','g');
% xlim([min(AUC_sound)-0.05,max(AUC_sound)+0.1]); ylim([min(AUC_ans)-0.1,max(AUC_ans)+0.2]);
xlim([0.3,1.2]); ylim([0.3,1.2]); xlabel('AUC(sound)','fontsize',15,'fontweight','bold'); ylabel('AUC(ans)','fontsize',15,'fontweight','bold');
title([strrep(CaTrials_filename(13:28),'_','-') '  (CorrectTrials, shuffle' num2str(shuffle_times) ],'fontsize',15,'fontweight','bold');
set(gcf,'position',[  536   633   595   483]);
lengend_str={};
if length(find(ROC_c_sig_sound==1 & ROC_sig_ans==1))~=0
    lengend_str={lengend_str{:} 'sound & ans'};
end
if length(find(ROC_c_sig_sound==1 & ROC_sig_ans==0))~=0
    lengend_str={lengend_str{:} 'sound'};
end

if length(find(ROC_c_sig_sound==0 & ROC_sig_ans==1))~=0
    lengend_str={lengend_str{:} 'ans'};
end
if length(find(ROC_c_sig_sound==0 & ROC_sig_ans==0))~=0
    lengend_str={lengend_str{:} 'neither'};
end
legend({lengend_str{:}});

% save(gcf,)

ROInumAUC.SoundAndAns =  find(ROC_c_sig_sound==1 & ROC_sig_ans==1);
ROInumAUC.SoundOnly =  find(ROC_c_sig_sound==1 & ROC_sig_ans==0);
ROInumAUC.AnsOnly =  find(ROC_c_sig_sound==0 & ROC_sig_ans==1);
ROInumAUC.neither =  find(ROC_c_sig_sound==0 & ROC_sig_ans==0);
cd(CaTrials_pathway);
save ROInumAUC.mat ROInumAUC

fileName = ['AUC  ' CaTrials_filename(13:35) ]; 
filename = strrep(['AUC  ' CaTrials_filename(13:35) ], fileName,'_','-') ;
title(filename,'fontsize',18,'fontweight','bold');
saveas(gcf,filename,'epsc');



%%%%%%%%%%%% plot with errorbar
figure;
hold on;
errorbarxy(AUC_c_sound,AUC_ans,AUC_c_sound_SE,AUC_ans_SE);
plot(AUC_c_sound (find(ROC_c_sig_sound==1 & ROC_sig_ans==1)),  AUC_ans (find(ROC_c_sig_sound==1 & ROC_sig_ans==1)),'k.','markersize',25,'linewidth',1.5);
plot(AUC_c_sound (find(ROC_c_sig_sound==1 & ROC_sig_ans==0)),  AUC_ans (find(ROC_c_sig_sound==1 & ROC_sig_ans==0)),'r.','markersize',25,'linewidth',1.5);
plot(AUC_c_sound (find(ROC_c_sig_sound==0 & ROC_sig_ans==1)),  AUC_ans (find(ROC_c_sig_sound==0 & ROC_sig_ans==1)),'b.','markersize',25,'linewidth',1.5);
plot(AUC_c_sound (find(ROC_c_sig_sound==0 & ROC_sig_ans==0)),  AUC_ans (find(ROC_c_sig_sound==0 & ROC_sig_ans==0)),'g.','markersize',25,'linewidth',1.5);
line([0.5,0.5],[0,1],'color','r','linewidth',1.4); line([0,1],[0.5,0.5],'color','b','linewidth',1.4);
% ROI_sig_num = ['sound & ans:'                          num2str(find(ROC_sig_sound==1 & ROC_sig_ans==1))  '/////      ' ...
%                'sound(' num2str(PostSoundDur) '):    ' num2str(find(ROC_sig_sound==1 & ROC_sig_ans==0))   '/////     ' ...      
%                'ans('   num2str(PostAnsDur) '):      ' num2str(find(ROC_sig_sound==0 & ROC_sig_ans==1))   '/////     ' ...
%                'neither          ' num2str(find(ROC_sig_sound==0 & ROC_sig_ans==0))];
% annotation('textbox',[0.6,0.18,0.3,0.2],'string',ROI_sig_num);
xlim([0.3,1]); ylim([0.3,1]); xlabel('AUC(sound)','fontsize',15,'fontweight','bold'); ylabel('AUC(ans)','fontsize',15,'fontweight','bold');
title([strrep(CaTrials_filename(13:28),'_','-') '  (CorrectTrials, shuffle' num2str(shuffle_times) ],'fontsize',15,'fontweight','bold');
set(gcf,'position',[  537    57   596   475]);
lengend_str={' '};
if length(find(ROC_c_sig_sound==1 & ROC_sig_ans==1))~=0
    lengend_str={lengend_str{:} 'sound & ans'};
end
if length(find(ROC_c_sig_sound==1 & ROC_sig_ans==0))~=0
    lengend_str={lengend_str{:} 'sound'};
end

if length(find(ROC_c_sig_sound==0 & ROC_sig_ans==1))~=0
    lengend_str={lengend_str{:} 'ans'};
end
if length(find(ROC_c_sig_sound==0 & ROC_sig_ans==0))~=0
    lengend_str={lengend_str{:} 'neither'};
end
legend({lengend_str{:} 'ErrorBar(Sound)' 'ErrorBar(Ans)'});

%%
%%% colorplot of zscore classfied by significance of AUC (align to sound)
ROC_c_sig_sound = ROCresults.ROC_sig_sound_99;
ROC_sig_ans = ROCresults.ROC_sig_ans_99;
trial_correct_L = find(trial_type==0 & trial_choice==trial_type);
trial_correct_R = find(trial_type==1 & trial_choice==trial_type);

figure;  
subplot(4,2,1);
imagesc(zscore(squeeze(mean(     dff_2(trial_correct_L,   find(ROC_c_sig_sound==1 & ROC_sig_ans==1)   ,: )      ,1))')',[0,3]); ylabel('sound & ans','fontsize',12,'fontweight','bold'); title('Left Trials','fontsize',12,'fontweight','bold');
line([frame_SoundOnset_min, frame_SoundOnset_min],[0, num_roi], 'color','w');  
line([frame_SoundOnset_min+frame_sound_delta, frame_SoundOnset_min+frame_sound_delta],[0, num_roi], 'color','w');
subplot(4,2,3);
imagesc(zscore(squeeze(mean(     dff_2(trial_correct_L,   find(ROC_c_sig_sound==1 & ROC_sig_ans==0)   ,: )      ,1))')',[0,3]);  ylabel('sound','fontsize',12,'fontweight','bold');
line([frame_SoundOnset_min, frame_SoundOnset_min],[0, num_roi], 'color','w');  
line([frame_SoundOnset_min+frame_sound_delta, frame_SoundOnset_min+frame_sound_delta],[0, num_roi], 'color','w');
subplot(4,2,5);
imagesc(zscore(squeeze(mean(     dff_2(trial_correct_L,   find(ROC_c_sig_sound==0 & ROC_sig_ans==1)   ,: )      ,1))')',[0,3]);  ylabel('ans','fontsize',12,'fontweight','bold');
line([frame_SoundOnset_min, frame_SoundOnset_min],[0, num_roi], 'color','w');  
line([frame_SoundOnset_min+frame_sound_delta, frame_SoundOnset_min+frame_sound_delta],[0, num_roi], 'color','w');
subplot(4,2,7);
imagesc(zscore(squeeze(mean(     dff_2(trial_correct_L,   find(ROC_c_sig_sound==0 & ROC_sig_ans==0)   ,: )      ,1))')',[0,3]);  ylabel('neither','fontsize',12,'fontweight','bold');
line([frame_SoundOnset_min, frame_SoundOnset_min],[0, num_roi], 'color','w');  
line([frame_SoundOnset_min+frame_sound_delta, frame_SoundOnset_min+frame_sound_delta],[0, num_roi], 'color','w');
subplot(4,2,2);
imagesc(zscore(squeeze(mean(     dff_2(trial_correct_R,   find(ROC_c_sig_sound==1 & ROC_sig_ans==1)   ,: )      ,1))')',[0,3]);  title('Right Trials','fontsize',12,'fontweight','bold');
line([frame_SoundOnset_min, frame_SoundOnset_min],[0, num_roi], 'color','w');  
line([frame_SoundOnset_min+frame_sound_delta, frame_SoundOnset_min+frame_sound_delta],[0, num_roi], 'color','w');
subplot(4,2,4);
imagesc(zscore(squeeze(mean(     dff_2(trial_correct_R,   find(ROC_c_sig_sound==1 & ROC_sig_ans==0)   ,: )      ,1))')',[0,3]); 
line([frame_SoundOnset_min, frame_SoundOnset_min],[0, num_roi], 'color','w');  
line([frame_SoundOnset_min+frame_sound_delta, frame_SoundOnset_min+frame_sound_delta],[0, num_roi], 'color','w');
subplot(4,2,6);
imagesc(zscore(squeeze(mean(     dff_2(trial_correct_R,   find(ROC_c_sig_sound==0 & ROC_sig_ans==1)   ,: )      ,1))')',[0,3]); 
line([frame_SoundOnset_min, frame_SoundOnset_min],[0, num_roi], 'color','w');  
line([frame_SoundOnset_min+frame_sound_delta, frame_SoundOnset_min+frame_sound_delta],[0, num_roi], 'color','w');
subplot(4,2,8);
imagesc(zscore(squeeze(mean(     dff_2(trial_correct_R,   find(ROC_c_sig_sound==0 & ROC_sig_ans==0)   ,: )      ,1))')',[0,3]); 
line([frame_SoundOnset_min, frame_SoundOnset_min],[0, num_roi], 'color','w');  
line([frame_SoundOnset_min+frame_sound_delta, frame_SoundOnset_min+frame_sound_delta],[0, num_roi], 'color','w');
suptitle('Zscore of Neurons(only correct trials,aligh to sound)');
set(gcf,'position',[1147         629         604         485]);

%%% colorplot of zscore classfied by significance of AUC (align to answer)
figure; 
frame_ans_delta = PostAnsDur/SavedCaTrials.FrameTime;
subplot(4,2,1);
imagesc(zscore(squeeze(mean(     dff_3(trial_correct_L,   find(ROC_c_sig_sound==1 & ROC_sig_ans==1)   ,: )      ,1))')',[-1,3]); ylabel('sound & ans','fontsize',12,'fontweight','bold'); title('Left Trials','fontsize',12,'fontweight','bold');
line([frame_ans_min, frame_ans_min],[0, num_roi], 'color','w');  
line([frame_ans_min+frame_ans_delta, frame_ans_min+frame_ans_delta],[0, num_roi], 'color','w');
subplot(4,2,3);
imagesc(zscore(squeeze(mean(     dff_3(trial_correct_L,   find(ROC_c_sig_sound==1 & ROC_sig_ans==0)   ,: )      ,1))')',[-1,3]);  ylabel('sound','fontsize',12,'fontweight','bold');
line([frame_ans_min, frame_ans_min],[0, num_roi], 'color','w');  
line([frame_ans_min+frame_ans_delta, frame_ans_min+frame_ans_delta],[0, num_roi], 'color','w');
subplot(4,2,5);
imagesc(zscore(squeeze(mean(     dff_3(trial_correct_L,   find(ROC_c_sig_sound==0 & ROC_sig_ans==1)   ,: )      ,1))')',[-1,3]);  ylabel('ans','fontsize',12,'fontweight','bold');
line([frame_ans_min, frame_ans_min],[0, num_roi], 'color','w');  
line([frame_ans_min+frame_ans_delta, frame_ans_min+frame_ans_delta],[0, num_roi], 'color','w');
subplot(4,2,7);
imagesc(zscore(squeeze(mean(     dff_3(trial_correct_L,   find(ROC_c_sig_sound==0 & ROC_sig_ans==0)   ,: )      ,1))')',[-1,3]);  ylabel('neither','fontsize',12,'fontweight','bold');
line([frame_ans_min, frame_ans_min],[0, num_roi], 'color','w');  
line([frame_ans_min+frame_ans_delta, frame_ans_min+frame_ans_delta],[0, num_roi], 'color','w');
subplot(4,2,2);
imagesc(zscore(squeeze(mean(     dff_3(trial_correct_R,   find(ROC_c_sig_sound==1 & ROC_sig_ans==1)   ,: )      ,1))')',[-1,3]);  title('Right Trials','fontsize',12,'fontweight','bold');
line([frame_ans_min, frame_ans_min],[0, num_roi], 'color','w');  
line([frame_ans_min+frame_ans_delta, frame_ans_min+frame_ans_delta],[0, num_roi], 'color','w');
subplot(4,2,4);
imagesc(zscore(squeeze(mean(     dff_3(trial_correct_R,   find(ROC_c_sig_sound==1 & ROC_sig_ans==0)   ,: )      ,1))')',[-1,3]); 
line([frame_ans_min, frame_ans_min],[0, num_roi], 'color','w');  
line([frame_ans_min+frame_ans_delta, frame_ans_min+frame_ans_delta],[0, num_roi], 'color','w');
subplot(4,2,6);
imagesc(zscore(squeeze(mean(     dff_3(trial_correct_R,   find(ROC_c_sig_sound==0 & ROC_sig_ans==1)   ,: )      ,1))')',[-1,3]); 
line([frame_ans_min, frame_ans_min],[0, num_roi], 'color','w');  
line([frame_ans_min+frame_ans_delta, frame_ans_min+frame_ans_delta],[0, num_roi], 'color','w');
subplot(4,2,8);
imagesc(zscore(squeeze(mean(     dff_3(trial_correct_R,   find(ROC_c_sig_sound==0 & ROC_sig_ans==0)   ,: )      ,1))')',[-1,3]); 
line([frame_ans_min, frame_ans_min],[0, num_roi], 'color','w');  
line([frame_ans_min+frame_ans_delta, frame_ans_min+frame_ans_delta],[0, num_roi], 'color','w');
suptitle('Zscore of Neurons(only correct trials,align to answer)');
set(gcf,'position',[ 1152          59         604         480]);

%%   plot neurons' dff according to the AUC values
ROC_c_sig_sound = ROCresults.ROC_sig_sound_99;
ROC_sig_ans = ROCresults.ROC_sig_ans_99;

figure;
a=dff_2(:,find(ROC_c_sig_sound==1 & AUC_ans<0.5),:);
n=size(a,2);
for i=1:n
    subplot(n,3,i*3-2); imagesc(squeeze(a(find(trial_type==0),i,:)),[0,1]); 
    if i==1 title('Low'); end
    if i~=n set(gca,'xticklabel',[]); end
    subplot(n,3,i*3-1);   imagesc(squeeze(a(find(trial_type==1),i,:)),[0,1]); 
    if i==1 title('High'); end
    if i~=n set(gca,'xticklabel',[]); end
    subplot(n,3,i*3); hold on;  
    plot(mean(squeeze(a(find(trial_type==0),i,:))));  plot(mean(squeeze(a(find(trial_type==1),i,:))),'r');  xlim([0,250]);
    line([frame_SoundOnset_min,frame_SoundOnset_min],[-0.1,0.5],'color','black'); 
    line([frame_SoundOnset_min+frame_sound_delta,frame_SoundOnset_min+frame_sound_delta],[-0.1,0.5],'color','black');
    if i==1 title('Average'); end
    if i~=n set(gca,'xticklabel',[]); end
end
suptitle('ROCsig(sound)==1 & AUC(ans)<0.5'); set(gcf,'position',[ 0          50       640        1060]);

figure;
a=dff_2(:,find(ROC_c_sig_sound==1 & AUC_ans>0.5),:);
n=size(a,2);
for i=1:n
    subplot(n,3,i*3-2); imagesc(squeeze(a(find(trial_type==0),i,:)),[0,1]); 
    if i==1 title('Low'); end
    if i~=n set(gca,'xticklabel',[]); end
    subplot(n,3,i*3-1);   imagesc(squeeze(a(find(trial_type==1),i,:)),[0,1]); 
    if i==1 title('High'); end
    if i~=n set(gca,'xticklabel',[]); end
    subplot(n,3,i*3); hold on;  
    plot(mean(squeeze(a(find(trial_type==0),i,:))));  plot(mean(squeeze(a(find(trial_type==1),i,:))),'r');  xlim([0,250]);
    line([frame_SoundOnset_min,frame_SoundOnset_min],[-0.1,0.5],'color','black'); 
    line([frame_SoundOnset_min+frame_sound_delta,frame_SoundOnset_min+frame_sound_delta],[-0.1,0.5],'color','black');
    if i==1 title('Average'); end
    if i~=n set(gca,'xticklabel',[]); end
end
suptitle('ROCsig(sound)==1 & AUC(ans)>0.5'); set(gcf,'position',[  640          50        640        1060]); 

figure;
a=dff_2(:,find(ROC_c_sig_sound==0),:);
n=size(a,2);
for i=1:n
    subplot(n,3,i*3-2); imagesc(squeeze(a(find(trial_type==0),i,:)),[0,1]); 
    if i==1 title('Low'); end
    if i~=n set(gca,'xticklabel',[]); end
    subplot(n,3,i*3-1);   imagesc(squeeze(a(find(trial_type==1),i,:)),[0,1]); 
    if i==1 title('High'); end
    if i~=n set(gca,'xticklabel',[]); end
    subplot(n,3,i*3); hold on;  
    plot(mean(squeeze(a(find(trial_type==0),i,:))));  plot(mean(squeeze(a(find(trial_type==1),i,:))),'r');  xlim([0,250]);
    line([frame_SoundOnset_min,frame_SoundOnset_min],[-0.1,0.5],'color','black'); 
    line([frame_SoundOnset_min+frame_sound_delta,frame_SoundOnset_min+frame_sound_delta],[-0.1,0.5],'color','black');
    if i==1 title('Average'); end
    if i~=n set(gca,'xticklabel',[]); end
end
suptitle('ROCsig(sound)==0'); set(gcf,'position',[  1280          50        640        1060]); 


figure;
a=dff_3(:,find(ROC_sig_ans==1 & AUC_ans<0.5),:);
n=size(a,2);
for i=1:n
    subplot(n,3,i*3-2); imagesc(squeeze(a(find(trial_choice==0),i,:)),[0,1]); 
    if i==1 title('Left'); end
    if i~=n set(gca,'xticklabel',[]); end
    subplot(n,3,i*3-1);   imagesc(squeeze(a(find(trial_choice==1),i,:)),[0,1]); 
    if i==1 title('Right'); end
    if i~=n set(gca,'xticklabel',[]); end
    subplot(n,3,i*3); hold on;  
    plot(mean(squeeze(a(find(trial_choice==0),i,:))));  plot(mean(squeeze(a(find(trial_choice==1),i,:))),'r');  xlim([0,250]);
    line([frame_ans_min,frame_ans_min],[-0.1,0.5],'color','black'); 
    line([frame_ans_min+frame_ans_delta,frame_ans_min+frame_ans_delta],[-0.1,0.5],'color','black');
    if i==1 title('Average'); end
    if i~=n set(gca,'xticklabel',[]); end
end
suptitle('ROCsig(ans)==1 & AUC(ans)<0.5'); set(gcf,'position',[ 1920          50       640        1060]);

figure;
a=dff_3(:,find(ROC_sig_ans==1 & AUC_ans>0.5),:);
n=size(a,2);
for i=1:n
    subplot(n,3,i*3-2); imagesc(squeeze(a(find(trial_choice==0),i,:)),[0,1]); 
    if i==1 title('Left'); end
    if i~=n set(gca,'xticklabel',[]); end
    subplot(n,3,i*3-1);   imagesc(squeeze(a(find(trial_choice==1),i,:)),[0,1]); 
    if i==1 title('Right'); end
    if i~=n set(gca,'xticklabel',[]); end
    subplot(n,3,i*3); hold on;  
    plot(mean(squeeze(a(find(trial_choice==0),i,:))));  plot(mean(squeeze(a(find(trial_choice==1),i,:))),'r');  xlim([0,250]);
    line([frame_ans_min,frame_ans_min],[-0.1,0.5],'color','black'); 
    line([frame_ans_min+frame_ans_delta,frame_ans_min+frame_ans_delta],[-0.1,0.5],'color','black');
    if i==1 title('Average'); end
    if i~=n set(gca,'xticklabel',[]); end
end
suptitle('ROCsig(ans)==1 & AUC(ans)>0.5'); set(gcf,'position',[  2560          50        640        1060]); 

figure;
a=dff_3(:,find(ROC_sig_ans==0),:);
n=size(a,2);
for i=1:n
    subplot(n,3,i*3-2); imagesc(squeeze(a(find(trial_choice==0),i,:)),[0,1]); 
    if i==1 title('Left'); end     
    if i~=n set(gca,'xticklabel',[]); end
    line([frame_ans_min,frame_ans_min],[0,100],'color','w'); line([frame_ans_min+frame_ans_delta,frame_ans_min+frame_ans_delta],[0,100],'color','w');
    subplot(n,3,i*3-1);   imagesc(squeeze(a(find(trial_choice==1),i,:)),[0,1]); 
    if i==1 title('Right'); end   
    if i~=n set(gca,'xticklabel',[]); end
    line([frame_ans_min,frame_ans_min],[0,100],'color','w'); line([frame_ans_min+frame_ans_delta,frame_ans_min+frame_ans_delta],[0,100],'color','w');
    subplot(n,3,i*3); hold on;  
    plot(mean(squeeze(a(find(trial_choice==0),i,:))));  plot(mean(squeeze(a(find(trial_choice==1),i,:))),'r');  xlim([0,250]);
    line([frame_ans_min,frame_ans_min],[-0.1,0.5],'color','black'); line([frame_ans_min+frame_ans_delta,frame_ans_min+frame_ans_delta],[-0.1,0.5],'color','black');
    if i==1 title('Average'); end
    if i~=n set(gca,'xticklabel',[]); end
end
suptitle('ROCsig(ans)==0'); set(gcf,'position',[  3200          50        640        1060]); 