%%  PCA analysis
close all;
dimention = 2;

frame_SoundOn = frame_SoundOnset_min;
frame_SoundOff= (min(trial_time_stimOnset)+300)/SavedCaTrials.FrameTime;
PostAnsDur=500;
frame_ans_On = frame_ans_min;
frame_ans_Off = (time_answer_min+PostAnsDur)/SavedCaTrials.FrameTime;

%%%%%%%%%%%%%  align to sound, bin the frames
for binframe = [1,5,10,20,30]
    f_SoundOn = frame_SoundOn/binframe;
    f_SoundOff= frame_SoundOff/binframe;
    
    n_frame_dff2 = floor(size(dff_2,3)/binframe)*binframe;
    n_points = n_frame_dff2/binframe;
    dff2_bined_L=[]; dff2_bined_R=[];
    for n_ROIs=1:n_roi
        a1=[]; a1= mean(squeeze(dff_2(trial_correct_L, n_ROIs,1:n_frame_dff2)));
        dff2_bined_L(n_ROIs,:)= mean(reshape(a1 , binframe, n_points),1);
        a2=[]; a2= mean(squeeze(dff_2(trial_correct_R, n_ROIs,1:n_frame_dff2)));
        dff2_bined_R(n_ROIs,:)= mean(reshape(a2 , binframe, n_points),1);
    end
    X_s_bined=[]; X_s_bined= [dff2_bined_L dff2_bined_R];
    [C_s_bined,SCORE] = princomp(X_s_bined);
    
    if dimention==3
        figure;
        plot3(C_s_bined(1,1:n_points),C_s_bined(2,1:n_points),C_s_bined(3,1:n_points),'b',C_s_bined(1,n_points+1:end),C_s_bined(2,n_points+1:end),C_s_bined(3,n_points+1:end),'r'); hold on;
        plot3(C_s_bined(1,1),         C_s_bined(2,1),         C_s_bined(3,1),'b.',        C_s_bined(1,n_points+1),    C_s_bined(2,n_points+1),    C_s_bined(3,n_points+1),    'r.','markersize',20);  %% start point
        plot3(C_s_bined(1,f_SoundOn), C_s_bined(2,f_SoundOn), C_s_bined(3,f_SoundOn),'bo', C_s_bined(1,f_SoundOn +n_points),C_s_bined(2,f_SoundOn +n_points),C_s_bined(3,f_SoundOn +n_points),'ro','markersize',8,'linewidth',2); %% end point
        plot3(C_s_bined(1,f_SoundOff),C_s_bined(2,f_SoundOff),C_s_bined(3,f_SoundOff),'bo',C_s_bined(1,f_SoundOff+n_points),C_s_bined(2,f_SoundOff+n_points),C_s_bined(3,f_SoundOff+n_points),'ro','markersize',10,'linewidth',3); %% end point
        plot3(C_s_bined(1,n_points),  C_s_bined(2,n_points),  C_s_bined(3,n_points),'go', C_s_bined(1,end),           C_s_bined(2,end),           C_s_bined(3,end),           'yo','markersize',12,'linewidth',4); %% end point
        title(['Aligh to Sound--binsize: ' num2str(binframe) ' frames']);  set(gcf,'position',[680   678   400   360]); 
    elseif dimention==2
        figure;
        plot(C_s_bined(1,1:n_points),C_s_bined(2,1:n_points),'b',C_s_bined(1,n_points+1:end),C_s_bined(2,n_points+1:end),            'r'); hold on;
        plot(C_s_bined(1,1),         C_s_bined(2,1),         'b.',        C_s_bined(1,n_points+1),    C_s_bined(2,n_points+1),       'r.','markersize',20);  %% start point
        plot(C_s_bined(1,f_SoundOn), C_s_bined(2,f_SoundOn), 'bo', C_s_bined(1,f_SoundOn +n_points),C_s_bined(2,f_SoundOn +n_points),'ro','markersize',8,'linewidth',2); %% end point
        plot(C_s_bined(1,f_SoundOff),C_s_bined(2,f_SoundOff),'bo',C_s_bined(1,f_SoundOff+n_points),C_s_bined(2,f_SoundOff+n_points), 'ro','markersize',10,'linewidth',3); %% end point
        plot(C_s_bined(1,n_points),  C_s_bined(2,n_points)  ,'go', C_s_bined(1,end),           C_s_bined(2,end),                     'yo','markersize',12,'linewidth',4); %% end point
        title(['Aligh to Sound--binsize: ' num2str(binframe) ' frames']);  set(gcf,'position',[680   678   400   360]); 
    end
    
    figure;subplot(2,1,1);imagesc(dff2_bined_L);colorbar; title(['dff2 (alignToSound,bined,L)'   'binsize: ' num2str(binframe) ' frames']);   set(gcf,'position',[6   696   400   360]); hold on;
           if binframe==1 line([frame_SoundOn,frame_SoundOn],[0,n_roi],'color','w'); line([frame_SoundOff,frame_SoundOff],[0,n_roi],'color','w'); end
           subplot(2,1,2);imagesc(dff2_bined_R);colorbar; title(['dff2 (alignToSound,bined,R)'   'binsize: ' num2str(binframe) ' frames']);   set(gcf,'position',[6   236   400   360]);  
           if binframe==1 line([frame_SoundOn,frame_SoundOn],[0,n_roi],'color','w'); line([frame_SoundOff,frame_SoundOff],[0,n_roi],'color','w'); end
           
    %%%%%%%%%%%%%  align to sound, bin the frames
    f_AnsOn=frame_ans_On/binframe;
    f_AnsOff=frame_ans_Off/binframe;
    n_frame_dff3 = floor(size(dff_3,3)/binframe)*binframe;
    n_points_3 = n_frame_dff3/binframe;
    dff3_bined_L=[]; dff3_bined_R=[];
    for n_ROIs=1:n_roi
        a1=[]; a1= mean(squeeze(dff_3(trial_correct_L, n_ROIs,1:n_frame_dff3)));
        dff3_bined_L(n_ROIs,:)= mean(reshape(a1 , binframe, n_points_3),1);
        a2=[]; a2= mean(squeeze(dff_3(trial_correct_R, n_ROIs,1:n_frame_dff3)));
        dff3_bined_R(n_ROIs,:)= mean(reshape(a2 , binframe, n_points_3),1);
    end
    X_ans_bined=[]; X_ans_bined= [dff3_bined_L dff3_bined_R];
    [C_ans_bined,SCORE] = princomp(X_ans_bined);
    if dimention==3
        figure;
        plot3(C_ans_bined(1,1:n_points_3),C_ans_bined(2,1:n_points_3),C_ans_bined(3,1:n_points_3),'b',C_ans_bined(1,n_points_3+1:end), C_ans_bined(2,n_points_3+1:end), C_ans_bined(3,n_points_3+1:end),'r'); hold on;
        plot3(C_ans_bined(1,1),           C_ans_bined(2,1),           C_ans_bined(3,1),'b.',          C_ans_bined(1,n_points_3+1),     C_ans_bined(2,n_points_3+1),     C_ans_bined(3,n_points_3+1),    'r.','markersize',20);  %% start point
        plot3(C_ans_bined(1,f_AnsOn),     C_ans_bined(2,f_AnsOn),     C_ans_bined(3,f_AnsOn),'bo',    C_ans_bined(1,f_AnsOn +n_points),C_ans_bined(2,f_AnsOn +n_points),C_ans_bined(3,f_AnsOn +n_points),'ro','markersize',8,'linewidth',2); %% end point
        plot3(C_ans_bined(1,f_AnsOff),    C_ans_bined(2,f_AnsOff),    C_ans_bined(3,f_AnsOff),'bo',   C_ans_bined(1,f_AnsOff+n_points),C_ans_bined(2,f_AnsOff+n_points),C_ans_bined(3,f_AnsOff+n_points),'ro','markersize',10,'linewidth',3); %% end point
        plot3(C_ans_bined(1,n_points_3),  C_ans_bined(2,n_points_3),  C_ans_bined(3,n_points_3),'go', C_ans_bined(1,end),              C_ans_bined(2,end),              C_ans_bined(3,end),            'yo','markersize',12,'linewidth',3); %% end point
        title(['Aligh to Answer--binsize: ' num2str(binframe) ' frames']); set(gcf,'position',[2426         631         400         360]);  
    elseif dimention==2
        figure;
        plot(C_ans_bined(1,1:n_points_3),C_ans_bined(2,1:n_points_3),'b',  C_ans_bined(1,n_points_3+1:end), C_ans_bined(2,n_points_3+1:end), 'r'); hold on;
        plot(C_ans_bined(1,1),           C_ans_bined(2,1),           'b.', C_ans_bined(1,n_points_3+1),     C_ans_bined(2,n_points_3+1),     'r.','markersize',20);  %% start point
        plot(C_ans_bined(1,f_AnsOn),     C_ans_bined(2,f_AnsOn),     'bo', C_ans_bined(1,f_AnsOn +n_points),C_ans_bined(2,f_AnsOn +n_points),'ro','markersize',8,'linewidth',2); %% end point
        plot(C_ans_bined(1,f_AnsOff),    C_ans_bined(2,f_AnsOff),    'bo', C_ans_bined(1,f_AnsOff+n_points),C_ans_bined(2,f_AnsOff+n_points),'ro','markersize',10,'linewidth',3); %% end point
        plot(C_ans_bined(1,n_points_3),  C_ans_bined(2,n_points_3),  'go', C_ans_bined(1,end),              C_ans_bined(2,end),              'yo','markersize',12,'linewidth',3); %% end point
        title(['Aligh to Answer--binsize: ' num2str(binframe) ' frames']); set(gcf,'position',[2426         631         400         360]);  
    end
    
    
    figure;subplot(2,1,1);imagesc(dff3_bined_L);colorbar;  title('dff3 (alignToAns,bined,L)');   set(gcf,'position',[ 1928         633         400         360]); hold on;
           if binframe==1 line([frame_ans_On,frame_ans_On],[0,n_roi],'color','w'); line([frame_ans_Off,frame_ans_Off],[0,n_roi],'color','w'); end
           subplot(2,1,2);imagesc(dff3_bined_R);colorbar;  title('dff3 (alignToAns,bined,R)');   set(gcf,'position',[1929         179         400         360]); 
           if binframe==1 line([frame_ans_On,frame_ans_On],[0,n_roi],'color','w'); line([frame_ans_Off,frame_ans_Off],[0,n_roi],'color','w'); end
end



%% Only the neurons with significant AUC(>0.5) of ROC are included
cd(CaTrials_pathway);
load ROCresults.mat;
Neuron_sound = find(ROCresults.ROC_sig_sound==1 & ROCresults.AUC_sound>0.5);
Neuron_ans   = find(ROCresults.ROC_sig_ans==1 & ROCresults.AUC_ans>0.5);

%%%%%%%%%%%%%  align to sound, bin the frames
for binframe = [1,5,10,20,30]
    f_SoundOn = frame_SoundOn/binframe;
    f_SoundOff= frame_SoundOff/binframe;
    
    n_frame_dff2 = floor(size(dff_2,3)/binframe)*binframe;
    n_points = n_frame_dff2/binframe;
    dff2_bined_L=[]; dff2_bined_R=[];
    for n_ROIs=1:length(Neuron_sound)
        a1=[]; a1= mean(squeeze(dff_2(trial_correct_L, Neuron_sound(n_ROIs),1:n_frame_dff2)));
        dff2_bined_L(n_ROIs,:)= mean(reshape(a1 , binframe, n_points),1);
        a2=[]; a2= mean(squeeze(dff_2(trial_correct_R, n_ROIs,1:n_frame_dff2)));
        dff2_bined_R(n_ROIs,:)= mean(reshape(a2 , binframe, n_points),1);
    end
    X_s_bined=[]; X_s_bined= [dff2_bined_L dff2_bined_R];
    [C_s_bined,SCORE] = princomp(X_s_bined);
    if dimention==3
        figure;
        plot3(C_s_bined(1,1:n_points),C_s_bined(2,1:n_points),C_s_bined(3,1:n_points),'b',C_s_bined(1,n_points+1:end),C_s_bined(2,n_points+1:end),C_s_bined(3,n_points+1:end),'r'); hold on;
        plot3(C_s_bined(1,1),         C_s_bined(2,1),         C_s_bined(3,1),'b.',        C_s_bined(1,n_points+1),    C_s_bined(2,n_points+1),    C_s_bined(3,n_points+1),    'r.','markersize',20);  %% start point
        plot3(C_s_bined(1,f_SoundOn), C_s_bined(2,f_SoundOn), C_s_bined(3,f_SoundOn),'bo', C_s_bined(1,f_SoundOn +n_points),C_s_bined(2,f_SoundOn +n_points),C_s_bined(3,f_SoundOn +n_points),'ro','markersize',8,'linewidth',2); %% end point
        plot3(C_s_bined(1,f_SoundOff),C_s_bined(2,f_SoundOff),C_s_bined(3,f_SoundOff),'bo',C_s_bined(1,f_SoundOff+n_points),C_s_bined(2,f_SoundOff+n_points),C_s_bined(3,f_SoundOff+n_points),'ro','markersize',10,'linewidth',3); %% end point
        plot3(C_s_bined(1,n_points),  C_s_bined(2,n_points),  C_s_bined(3,n_points),'go', C_s_bined(1,end),           C_s_bined(2,end),           C_s_bined(3,end),           'yo','markersize',12,'linewidth',4); %% end point
        title(['AlighToSound(Neurons with significant AUC)--binsize: ' num2str(binframe) ' frames']);  set(gcf,'position',[680   678   400   360]); 
    elseif dimention==2
        figure;
        plot(C_s_bined(1,1:n_points),C_s_bined(2,1:n_points),'b',  C_s_bined(1,n_points+1:end),     C_s_bined(2,n_points+1:end),     'r'); hold on;
        plot(C_s_bined(1,1),         C_s_bined(2,1),         'b.', C_s_bined(1,n_points+1),         C_s_bined(2,n_points+1),         'r.','markersize',20);  %% start point
        plot(C_s_bined(1,f_SoundOn), C_s_bined(2,f_SoundOn), 'bo', C_s_bined(1,f_SoundOn +n_points),C_s_bined(2,f_SoundOn +n_points),'ro','markersize',8,'linewidth',2); %% end point
        plot(C_s_bined(1,f_SoundOff),C_s_bined(2,f_SoundOff),'bo', C_s_bined(1,f_SoundOff+n_points),C_s_bined(2,f_SoundOff+n_points),'ro','markersize',10,'linewidth',3); %% end point
        plot(C_s_bined(1,n_points),  C_s_bined(2,n_points),  'go', C_s_bined(1,end),                C_s_bined(2,end),                'yo','markersize',12,'linewidth',4); %% end point
        title(['AlighToSound(Neurons with significant AUC)--binsize: ' num2str(binframe) ' frames']);  set(gcf,'position',[680   678   400   360]); 
    end
    figure;subplot(2,1,1);imagesc(dff2_bined_L);colorbar; title(['dff2 (alignToSound,bined,L)'   'binsize: ' num2str(binframe) ' frames']);   set(gcf,'position',[6   696   400   360]); hold on;
           if binframe==1 line([frame_SoundOn,frame_SoundOn],[0,n_roi],'color','w'); line([frame_SoundOff,frame_SoundOff],[0,n_roi],'color','w'); end
           subplot(2,1,2);imagesc(dff2_bined_R);colorbar; title(['dff2 (alignToSound,bined,R)'   'binsize: ' num2str(binframe) ' frames']);   set(gcf,'position',[6   236   400   360]);  
           if binframe==1 line([frame_SoundOn,frame_SoundOn],[0,n_roi],'color','w'); line([frame_SoundOff,frame_SoundOff],[0,n_roi],'color','w'); end
           
    %%%%%%%%%%%%%  align to sound, bin the frames
    f_AnsOn=frame_ans_On/binframe;
    f_AnsOff=frame_ans_Off/binframe;
    n_frame_dff3 = floor(size(dff_3,3)/binframe)*binframe;
    n_points_3 = n_frame_dff3/binframe;
    dff3_bined_L=[]; dff3_bined_R=[];
    for n_ROIs=1:length(Neuron_ans)
        a1=[]; a1= mean(squeeze(dff_3(trial_correct_L, Neuron_ans(n_ROIs),1:n_frame_dff3)));
        dff3_bined_L(n_ROIs,:)= mean(reshape(a1 , binframe, n_points_3),1);
        a2=[]; a2= mean(squeeze(dff_3(trial_correct_R, n_ROIs,1:n_frame_dff3)));
        dff3_bined_R(n_ROIs,:)= mean(reshape(a2 , binframe, n_points_3),1);
    end
    X_ans_bined=[]; X_ans_bined= [dff3_bined_L dff3_bined_R];
    [C_ans_bined,SCORE] = princomp(X_ans_bined);
    if dimention==3
        figure;
        plot3(C_ans_bined(1,1:n_points_3),C_ans_bined(2,1:n_points_3),C_ans_bined(3,1:n_points_3),'b',C_ans_bined(1,n_points_3+1:end), C_ans_bined(2,n_points_3+1:end), C_ans_bined(3,n_points_3+1:end),'r'); hold on;
        plot3(C_ans_bined(1,1),           C_ans_bined(2,1),           C_ans_bined(3,1),'b.',          C_ans_bined(1,n_points_3+1),     C_ans_bined(2,n_points_3+1),     C_ans_bined(3,n_points_3+1),    'r.','markersize',20);  %% start point
        plot3(C_ans_bined(1,f_AnsOn),     C_ans_bined(2,f_AnsOn),     C_ans_bined(3,f_AnsOn),'bo',    C_ans_bined(1,f_AnsOn +n_points),C_ans_bined(2,f_AnsOn +n_points),C_ans_bined(3,f_AnsOn +n_points),'ro','markersize',8,'linewidth',2); %% end point
        plot3(C_ans_bined(1,f_AnsOff),    C_ans_bined(2,f_AnsOff),    C_ans_bined(3,f_AnsOff),'bo',   C_ans_bined(1,f_AnsOff+n_points),C_ans_bined(2,f_AnsOff+n_points),C_ans_bined(3,f_AnsOff+n_points),'ro','markersize',10,'linewidth',3); %% end point
        plot3(C_ans_bined(1,n_points_3),  C_ans_bined(2,n_points_3),  C_ans_bined(3,n_points_3),'go', C_ans_bined(1,end),              C_ans_bined(2,end),              C_ans_bined(3,end),            'yo','markersize',12,'linewidth',3); %% end point
        title(['AlighToAnswer(Neurons with significant AUC)--binsize: ' num2str(binframe) ' frames']); set(gcf,'position',[2426         631         400         360]);  
        figure;subplot(2,1,1);imagesc(dff3_bined_L);colorbar;  title('dff3 (alignToAns,bined,L)');   set(gcf,'position',[ 1928         633         400         360]); hold on;
    elseif dimention==2
        figure;
        plot(C_ans_bined(1,1:n_points_3),C_ans_bined(2,1:n_points_3),'b',C_ans_bined(1,n_points_3+1:end), C_ans_bined(2,n_points_3+1:end),       'r'); hold on;
        plot(C_ans_bined(1,1),           C_ans_bined(2,1),           'b.',          C_ans_bined(1,n_points_3+1),     C_ans_bined(2,n_points_3+1),'r.','markersize',20);  %% start point
        plot(C_ans_bined(1,f_AnsOn),     C_ans_bined(2,f_AnsOn),     'bo',    C_ans_bined(1,f_AnsOn +n_points),C_ans_bined(2,f_AnsOn +n_points), 'ro','markersize',8,'linewidth',2); %% end point
        plot(C_ans_bined(1,f_AnsOff),    C_ans_bined(2,f_AnsOff),    'bo',   C_ans_bined(1,f_AnsOff+n_points),C_ans_bined(2,f_AnsOff+n_points),  'ro','markersize',10,'linewidth',3); %% end point
        plot(C_ans_bined(1,n_points_3),  C_ans_bined(2,n_points_3),  'go', C_ans_bined(1,end),              C_ans_bined(2,end),                  'yo','markersize',12,'linewidth',3); %% end point
        title(['AlighToAnswer(Neurons with significant AUC)--binsize: ' num2str(binframe) ' frames']); set(gcf,'position',[2426         631         400         360]);  
        figure;subplot(2,1,1);imagesc(dff3_bined_L);colorbar;  title('dff3 (alignToAns,bined,L)');   set(gcf,'position',[ 1928         633         400         360]); hold on;
    end
           if binframe==1 line([frame_ans_On,frame_ans_On],[0,n_roi],'color','w'); line([frame_ans_Off,frame_ans_Off],[0,n_roi],'color','w'); end
           subplot(2,1,2);imagesc(dff3_bined_R);colorbar;  title('dff3 (alignToAns,bined,R)');   set(gcf,'position',[1929         179         400         360]); 
           if binframe==1 line([frame_ans_On,frame_ans_On],[0,n_roi],'color','w'); line([frame_ans_Off,frame_ans_Off],[0,n_roi],'color','w'); end
end



