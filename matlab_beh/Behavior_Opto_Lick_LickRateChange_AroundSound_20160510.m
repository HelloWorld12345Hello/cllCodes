%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% get the opto effects on lick rate                                
%%%% need function 'OptoLickRate.m'(C:\Users\Administor\Documents\MATLAB)
%%%% Section 1 __ three repeats of one manipulation on one mouse (each color represents one day's result)
%%%% Section 2 __ several repeats of one manipulation on several mice (each color represents the results of one mouse)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Section 1  %%%%
clc;
clear;
% cd('E:\behavior_417\cll_CPU04')
% fn_str_c1 = {'cll_CPU04_20150902_opto','cll_CPU04_20150904_PosteriorLeftOpto','cll_CPU04_20150906_PosteriorLeftOpto'};
% cd('E:\behavior_417\cll_CPU04')
% fn_str_c1 = {'cll_CPU04_20150903_opto','cll_CPU04_20150905_PosteriorRightOpto','cll_CPU04_20150907_PosteriorRightOpto'};
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% cd('E:\behavior_417\cll_CPU04')
% fn_str_c1 = {'cll_CPU04_20150908_AnteriorLeftOpto','cll_CPU04_20150910_AnteriorLeftOpto','cll_CPU04_20150912_AnteriorLeftOpto_30mW','cll_CPU04_20151020_AnteriorLeftOpto_30mW_1000ms'};
% cd('E:\behavior_417\cll_CPU04')
% fn_str_c1 = {'cll_CPU04_20150909_AnteriorRightOpto','cll_CPU04_20150911_AnteriorRightOpto','cll_CPU04_20150913_AnteriorRightOpto','cll_CPU04_20151021_AnteriorRightOpto_30mW_1000ms'};
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;

% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% cd('E:\behavior_417\cll_CPU05')
% fn_str_c1 = {'cll_CPU05_20150903_PosteriorLeftOpto','cll_CPU05_20150905_PosteriorLeftOpto','cll_CPU05_20150907_PosteriorLeftOpto'};
% cd('E:\behavior_417\cll_CPU05')
% fn_str_c1 = {'cll_CPU05_20150904_PosteriorRightOpto','cll_CPU05_20150906_PosteriorRightOpto','cll_CPU05_20150908_PosteriorRightOpto'};
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% cd('E:\behavior_417\cll_CPU05')
% fn_str_c1 = {'cll_CPU05_20150909_AnteriorLeftOpto','cll_CPU05_20150911_AnteriorLeftOpto','cll_CPU05_20150913_AnteriorLeftOpto','cll_CPU05_20151020_AnteriorLeftOpto_30mW_1000ms'};
% cd('E:\behavior_417\cll_CPU05')
% fn_str_c1 = {'cll_CPU05_20150910_AnteriorRightOpto','cll_CPU05_20150912_AnteriorRightOpto_30mW','cll_CPU05_20150914_AnteriorRightOpto_30mW','cll_CPU05_20151021_AnteriorRightOpto_30mW_1000ms'};

% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% cd('E:\behavior_417\cll_CPU06')
% fn_str_c1 = {'cll_CPU06_20150902','cll_CPU06_20150904_PosteriorRightOpto','cll_CPU06_20150906_PosteriorRightOpto'};
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% cd('E:\behavior_417\cll_CPU06')
% fn_str_c1 = {'cll_CPU06_20150901','cll_CPU06_20150903_PosteriorLeftOpto','cll_CPU06_20150905_PosteriorLeftOpto'};
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% cd('E:\behavior_417\cll_CPU06')
% fn_str_c1 = {'cll_CPU06_20150907_AnteriorLeftOpto','cll_CPU06_20150909_AnteriorLeftOpto','cll_CPU06_20150911_AnteriorLeftOpto'};
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% cd('E:\behavior_417\cll_CPU06')
% fn_str_c1 = {'cll_CPU06_20150908_AnteriorRightOpto','cll_CPU06_20150910_AnteriorRightOpto','cll_CPU06_20150912_AnteriorRightOpto'};

% cd('E:\behavior_417\cll_CPU07')
% fn_str_c1 = {'cll_CPU07_20151027_PosteriorLeftOpto_30mW_3300ms','cll_CPU07_20151029_PosteriorLeftOpto_30mW_3300ms','cll_CPU07_20151101_PosteriorLeftOpto_30mW_3300ms'};
% cd('E:\behavior_417\cll_CPU07')
% fn_str_c1 = {'cll_CPU07_20151026_PosteriorRightOpto_30mW_3300ms','cll_CPU07_20151028_PosteriorRightOpto_30mW_3300ms','cll_CPU07_20151030_PosteriorRightOpto_30mW_3300ms'};
% Time_OptoOnset = -300;
% Time_OptoOff = 3000;

% cd('E:\behavior_417\cll_CPU09')
% fn_str_c1 = {'cll_CPU09_20151027_PosteriorLeftOpto_30mW_1000ms','cll_CPU09_20151029_PosteriorLeftOpto_30mW_1000ms','cll_CPU09_20151101_PosteriorLeftOpto_30mW_1000ms'};
% cd('E:\behavior_417\cll_CPU09')
% fn_str_c1 = {'cll_CPU09_20151026_PosteriorRightOpto_30mW_1000ms','cll_CPU09_20151028_PosteriorRightOpto_30mW_1000ms','cll_CPU09_20151030_PosteriorRightOpto_30mW_1000ms'};
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;

% cd('E:\behavior_417\cll_CPU11')
% fn_str_c1 = {'cll_CPU11_20151027_PosteriorLeft_30mW_3300ms','cll_CPU11_20151029_PosteriorLeftOpto_30mW_3300ms','cll_CPU11_20151101_PosteriorLeftOpto_30mW_3300ms'};
% cd('E:\behavior_417\cll_CPU11')
% fn_str_c1 = {'cll_CPU11_20151026_PosteriorRight_30mW_3300ms','cll_CPU11_20151028_PosteriorRightOpto_30mW_3300ms','cll_CPU11_20151030_PosteriorRightOpto_30mW_3300ms'};
% Time_OptoOnset = -300;
% Time_OptoOff = 3000;

% fn_str_c1 = {'E:\behavior_417\cll_CPU13\cll_CPU13_20151027_PosteriorLeftOpto_20mW_1000ms','E:\behavior_417\cll_CPU13\cll_CPU13_20151029_PosteriorLeftOpto_20mW_1000ms','E:\behavior_417\cll_CPU13\cll_CPU13_20151101_PosteriorLeftOpto_20mW_1000ms'};
% % fn_str_c1 = {'E:\behavior_417\cll_CPU13\cll_CPU13_20151026_PosteriorRightOpto_20mW_1000ms','E:\behavior_417\cll_CPU13\cll_CPU13_20151028_PosteriorRightOpto_20mW_1000ms','E:\behavior_417\cll_CPU13\cll_CPU13_20151102_PosteriorRightOpto_20mW_1000ms'};
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;

% cd('E:\behavior_417\cll_PS01')
% fn_str_c1 = {'cll_PS01_20150917_PosteriorLeftOpto_15mW_preSound350ms','cll_PS01_20150919_PosteriorLeftOpto_15mW_preSound350ms'};
% cd('E:\behavior_417\cll_PS01')
% fn_str_c1 = {'cll_PS01_20150916_PosteriorRightOpto_15mW_preSound350ms','cll_PS01_20150918_PosteriorRightOpto_15mW_preSound350ms','cll_PS01_20150920_PosteriorRightOpto_15mW_preSound350ms'};
% Time_OptoOnset = -350;
% Time_OptoOff = 150;
% cd('E:\behavior_417\cll_PS01')
% fn_str_c1 = {'cll_PS01_20151020_PosteriorLeftOpto_15mW_1000ms','cll_PS01_20151022_PosteriorLeftOpto_15mW_1000ms','cll_PS01_20151026_PosteriorLeftOpto_15mW_1000ms'};
% cd('E:\behavior_417\cll_PS01')
% fn_str_c1 = {'cll_PS01_20151021_PosteriorRightOpto_15mW_1000ms','cll_PS01_20151025_PosteriorRightOpto_15mW_1000ms','cll_PS01_20151027_PosteriorRightOpto_15mW_1000ms'};
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;

% cd('E:\behavior_417\cll_PS02')
% fn_str_c1 = {'cll_PS02_20151020_PosteriorLeftOpto_15mW_1000ms','cll_PS02_20151022_PosteriorLeftOpto_15mW_1000ms','cll_PS02_20151026_PosteriorLeftOpto_15mW_1000ms','cll_PS02_20151117_PosteriorLeftOpto_10mW_1000ms'};
% cd('E:\behavior_417\cll_PS02')
% fn_str_c1 = {'cll_PS02_20151021_PosteriorRightOpto_15mW_1000ms','cll_PS02_20151025_PosteriorRightOpto_15mW_1000ms','cll_PS02_20151027_PosteriorRightOpto_15mW_1000ms'};
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% cd('E:\behavior_417\cll_PS02');
% fn_str_c1 = {'cll_PS02_20151115_RightOut_15mW_3300ms'};

% cd('E:\behavior_417\cll_PS03')
% fn_str_c1 = {'cll_PS03_20150920_PosteriorLeftOpto_15mW_1000ms','cll_PS03_20151020_PosteriorLeftOpto_15mW_1000ms','cll_PS03_20151022_PosteriorLeftOpto_15mW_1000ms'};
% cd('E:\behavior_417\cll_PS03')
% fn_str_c1 = {'cll_PS03_20150919_PosteriorRightOpto_15mW_1000ms','cll_PS03_20151019_PosteriorRightOpto_15mW_1000ms','cll_PS03_20151021_PosteriorRightOpto_15mW_1000ms'};
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% cd('E:\behavior_417\cll_PS03')
% fn_str_c1 = {'cll_PS03_20151024_PosteriorLeftOpto_15mW10Hz20ms_1000ms','cll_PS03_20151026_PosteriorLeftOpto_15mW10Hz20ms_1000ms','cll_PS03_20151028_PosteriorLeftOpto_15mW10Hz20ms_1000ms'};
% cd('E:\behavior_417\cll_PS03')
% fn_str_c1 = {'cll_PS03_20151023_PosteriorRightOpto_15mW10Hz20ms_1000ms','cll_PS03_20151025_PosteriorRightOpto_15mW10Hz20ms_1000ms','cll_PS03_20151027_PosteriorRightOpto_15mW10Hz20ms_1000ms'};
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;

% cd('E:\behavior_417\cll_PS04')
% fn_str_c1 = {'cll_PS04_20150918_PosteriorRightOpto_15mW_1000ms','cll_PS04_20150919_PosteriorRightOpto_15mW_1000ms','cll_PS04_20150920_PosteriorRightOpto_15mW_1000ms'};
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% cd('E:\behavior_417\cll_PS04')
% fn_str_c1 = {'cll_PS04_20151016_PosteriorLeftOpto_15mW_1000ms_SinglePuls','cll_PS04_20151021_PosteriorLeftOpto_15mW_1000ms_SinglePuls','cll_PS04_20151022_PosteriorLeftOpto_15mW_1000ms_SinglePuls'};
% cd('E:\behavior_417\cll_PS04')
% fn_str_c1 = {'cll_PS04_20151015_PosteriorRightOpto_15mW_1000ms_SinglePuls','cll_PS04_20151017_PosteriorRightOpto_15mW_1000ms_SinglePuls','cll_PS04_20151019_PosteriorLeftOpto_15mW_1000ms_SinglePuls'};
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;


% fn_str_c1 = {'E:\behavior_417\cll_CPU14\cll_CPU14_rig03_20160111_PosteriorLeftOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU14\cll_CPU14_rig03_20160113_PosteriorLeftOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU14\cll_CPU14_rig03_20160115_PosterioLeftOpto_Laser18_20mW1000ms'};
% fn_str_c1 = {'E:\behavior_417\cll_CPU14\cll_CPU14_rig03_20160110_PosteriorRightOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU14\cll_CPU14_rig03_20160112_PosteriorRightOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU14\cll_CPU14_rig03_20160114_PosterioRightOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU14\cll_CPU14_rig03_20160116_PosterioRightOpto_Laser18_20mW1000ms'};

% fn_str_c1 = {'E:\behavior_417\cll_CPU15\cll_CPU15_rig04_20160113_PosteriorLeft_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU15\cll_CPU15_rig04_20160115_PosteriorLeft_Laser18_20mW1000ms', ...
%              'E:\behavior_417\cll_CPU15\cll_CPU15_rig04_20160117_PosteriorLeft_Laser18_15mW1000ms',...
%              'E:\behavior_417\cll_CPU15\cll_CPU15_rig04_20160120_PosteriorLeft_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU15\cll_CPU15_rig04_20160122_PosteriorLeft_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU15\cll_CPU15_rig04_20160124_PosteriorLeft_Laser18_20mW1000ms_2'};
% fn_str_c1 = {'E:\behavior_417\cll_CPU15\cll_CPU15_rig04_20160114_PosteriorRight_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU15\cll_CPU15_rig04_20160116_PosteriorRight_Laser18_18mW1000ms',...
%              'E:\behavior_417\cll_CPU15\cll_CPU15_rig04_20160119_PosteriorRight_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU15\cll_CPU15_rig04_20160121_PosteriorRight_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU15\cll_CPU15_rig04_20160123_PosteriorRight_Laser18_20mW1000ms'};      

% fn_str_c1 = {'E:\behavior_417\cll_CPU16\cll_CPU16_rig03_20160116_PosteriorLeftOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\cll_CPU16\cll_CPU16_rig03_20160119_PosteriorLeftOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\cll_CPU16\cll_CPU16_rig03_20160121_PosteriorLeftOpto_Laser18_20mW1000ms'};
% fn_str_c1 = {'E:\behavior_417\cll_CPU16\cll_CPU16_rig03_20160117_PosteriorRightOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU16\cll_CPU16_rig03_20160120_PosteriorRightOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU16\cll_CPU16_rig03_20160122_PosteriorRightOpto_Laser18_20mW1000ms'};

% fn_str_c1 = {'E:\behavior_417\cll_CPU17\cll_CPU17_rig04_20160107_PosteriorLeftOpto_20mW_1000ms',...
%              'E:\behavior_417\cll_CPU17\cll_CPU17_rig04_20160109_PosteriorLeftOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU17\cll_CPU17_rig04_20160111_PosteriorLeftOpto_Laser18_20mW1000ms'};
% fn_str_c1 = {'E:\behavior_417\cll_CPU17\cll_CPU17_rig04_20160108_PosteriorRightOpto_20mW_1000ms',...
%              'E:\behavior_417\cll_CPU17\cll_CPU17_rig04_20160110_PosteriorRightOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU17\cll_CPU17_rig04_20160112_PosteriorRightOpto_Laser18_20mW1000ms'};

% fn_str_c1 = {'E:\behavior_417\cll_CPU18\cll_CPU18_rig03_20160112_PosteriorLeftOpto_Laser10_20mW3300ms',...
%              'E:\behavior_417\cll_CPU18\cll_CPU18_rig03_20160114_PosteriorLeftOpto_Laser18_20mW3300ms',...
%              'E:\behavior_417\cll_CPU18\cll_CPU18_rig03_20160116_PosteriorLeftOpto_Laser18_20mW3300ms',...
%              'E:\behavior_417\cll_CPU18\cll_CPU18_rig03_20160119_PosteriorLeftOpto_Laser18_20mW3300ms'};
% fn_str_c1 = {'E:\behavior_417\cll_CPU18\cll_CPU18_rig03_20160113_PosteriorRightOpto_Laser18_20mW3300ms',...
%              'E:\behavior_417\cll_CPU18\cll_CPU18_rig03_20160115_PosteriorRightOpto_Laser18_20mW3300ms',...
%              'E:\behavior_417\cll_CPU18\cll_CPU18_rig03_20160117_PosteriorRightOpto_Laser18_20mW3300ms',...
%              'E:\behavior_417\cll_CPU18\cll_CPU18_rig03_20160120_PosteriorRightOpto_Laser18_20mW3300ms'};

% fn_str_c1 = {'E:\behavior_417\cll_CPU19\cll_CPU19_rig04_20160106_PosteriorLeftOpto_20mW1000ms',...
%              'E:\behavior_417\cll_CPU19\cll_CPU19_rig04_20160108_PosteriorLeftOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU19\cll_CPU19_rig04_20160110_PosteriorLeftOpto_Laser18_20mW1000ms'};
% fn_str_c1 = {'E:\behavior_417\cll_CPU19\cll_CPU19_rig04_20160107_PosteriorRightOpto_20mW1000ms',...
%              'E:\behavior_417\cll_CPU19\cll_CPU19_rig04_20160109_PosteriorRightOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU19\cll_CPU19_rig04_20160111_PosteriorRightOpto_Laser18_20mW1000ms'};

% fn_str_c1 = {'E:\behavior_417\cll_CPU20\cll_CPU20_rig03_20160110_PosteriorLeftOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU20\cll_CPU20_rig03_20160112_PosteriorLeftOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU20\cll_CPU20_rig03_20160113_PosteriorLeftOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU20\cll_CPU20_rig03_20160116_PosteriorLeftOpto_Laser18_20mW1000ms'};
% fn_str_c1 = {'E:\behavior_417\cll_CPU20\cll_CPU20_rig03_20160112_PosteriorRightOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU20\cll_CPU20_rig03_20160115_PosteriorRightOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU20\cll_CPU20_rig03_20160117_PosteriorRightOpto_Laser18_20mW1000ms'};
         
% fn_str_c1 = {'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160112_PosteriorLeftOpto_Laser08_20mW300ms_1000ms',...
%              'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160114_PosteriorLeftOpto_Laser08_20mW1000ms',...
%              'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160116_PosteriorLeftOpto_Laser08_14mW1000ms',...
%              'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160119_PosteriorLeftOpto_Laser08_20mW1000ms'};
% fn_str_c1 = {'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160113_PosteriorRightOpto_Laser08_20mW1000ms',...
%              'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160115_PosteriorRightOpto_Laser08_20mW1000ms',...
%              'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160117_PosteriorRightOpto_Laser08_13mW1000ms',...
%              'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160120_PosteriorRightOpto_Laser08_20mW1000ms'};

% fn_str_c1 = {'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160108_PosteriorLeftOpto_Laser10_20mW1000ms',...
%              'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160110_PosteriorLeftOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160112_PosteriorLeftOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160114_PosteriorLeftOpto_Laser18_20mW1000ms'};
% fn_str_c1 = {'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160109_PosteriorRightOpto_Laser10_20mW1000ms',...
%              'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160111_PosteriorRightOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160113_PosteriorRightOpto_Laser18_20mW1000ms',...
%              'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160115_PosteriorRightOpto_Laser18_20mW1000ms'};
% fn_str_c = fn_str_c1;
% fn_str_c1 = {};         
         
for n=1:length(fn_str_c) %n=1:length(files)
    load(fn_str_c{n});
%     trial_is_probe_flag = [];
%     trial_is_probe_flag = cellfun(@(x) x.Trial_isProbeTrial, SessionResults);
%     trial_time_stimOnset = [];
%     trial_time_stimOnset= cellfun(@(x) x.Time_stimOnset, SessionResults);
%     %%%%%% find the opto_Onset and the Opto_Offset
%     trial_is_opto_flag = [];
%     for m=1:length(SessionResults)
%         if trial_is_probe_flag(m)==1
%             trial_is_opto_flag=[trial_is_opto_flag SessionResults{m}.Trial_isOptoProbeTrial];
%         else
%             trial_is_opto_flag= [trial_is_opto_flag SessionResults{m}.Trial_isOptoTraingTrial];
%         end
%     end   
%     if sum(trial_is_opto_flag)~=0
%         trial_is_opto = find(trial_is_opto_flag==1);
%         trial_time_optoStimOnset = cellfun(@(x) x.Time_optoStimOnset,SessionResults);
%         trial_time_optoStimOffTime = cellfun(@(x) x.Time_optoStimOffTime,SessionResults);
%         Time_OptoOnset = trial_time_optoStimOnset(trial_is_opto(1))- trial_time_stimOnset(trial_is_opto(1)) ;
%         Time_OptoOff = trial_time_optoStimOffTime(trial_is_opto(1))- trial_time_stimOnset(trial_is_opto(1)) ;
%     end
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    [lickRateLeft_NoOpto_duringOpto(n),  lickRateLeft_opto_duringOpto(n), lickRateRight_NoOpto_duringOpto(n) lickRateRight_opto_duringOpto(n)] = OptoLickRate_AroundSound( SessionResults);
end
figure;
ylim_max =  max([lickRateLeft_NoOpto_duringOpto lickRateLeft_opto_duringOpto lickRateRight_NoOpto_duringOpto lickRateRight_opto_duringOpto]);
colorString = {'r','g','b','k','c','m'};
subplot(1,2,1);
for file_num = 1:length(fn_str_c)
    plot([lickRateLeft_NoOpto_duringOpto(file_num);lickRateLeft_opto_duringOpto(file_num)],'color',colorString{file_num},'linewidth',2);   
    
    hold on;
end
% plot([lickRateLeft_NoOpto_duringOpto;lickRateLeft_opto_duringOpto]); 


set(gca,'xlim',[0,3]);
set(gca,'ylim',[0,ylim_max]);
title('lickRateLeft(NoOpto,Opto)');

subplot(1,2,2);

for file_num = 1:length(fn_str_c)
    plot([lickRateRight_NoOpto_duringOpto(file_num);lickRateRight_opto_duringOpto(file_num)],'color',colorString{file_num},'linewidth',2);   
    hold on;
end

set(gca,'xlim',[0,3]);
set(gca,'ylim',[0,ylim_max]);
title('lickRateRight(NoOpto,Opto)');
title_name = [fn_str_c{2}(27:41) fn_str_c{2}(51:end)];
% suptitle_name = strrep(title_name,'_','-');
% suptitle(suptitle_name);
suptitle(file_name);

%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Section 2  %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% CPU04,05,06_ Posterior_1000ms_20/30mW
% file_name = 'CPU04,05,06-PosteriorLeftOpto';
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 =               {'E:\behavior_417\cll_CPU04\cll_CPU04_20150902_opto','E:\behavior_417\cll_CPU04\cll_CPU04_20150904_PosteriorLeftOpto','E:\behavior_417\cll_CPU04\cll_CPU04_20150906_PosteriorLeftOpto'};
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU05\cll_CPU05_20150903_PosteriorLeftOpto','E:\behavior_417\cll_CPU05\cll_CPU05_20150905_PosteriorLeftOpto','E:\behavior_417\cll_CPU05\cll_CPU05_20150907_PosteriorLeftOpto'};
% fn_str_c = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU06\cll_CPU06_20150901','E:\behavior_417\cll_CPU06\cll_CPU06_20150903_PosteriorLeftOpto','E:\behavior_417\cll_CPU06\cll_CPU06_20150905_PosteriorLeftOpto'};

% file_name = 'CPU04,05,06-PosteriorRightOpto';
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {              'E:\behavior_417\cll_CPU04\cll_CPU04_20150903_opto','E:\behavior_417\cll_CPU04\cll_CPU04_20150905_PosteriorRightOpto','E:\behavior_417\cll_CPU04\cll_CPU04_20150907_PosteriorRightOpto'};
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU05\cll_CPU05_20150904_PosteriorRightOpto','E:\behavior_417\cll_CPU05\cll_CPU05_20150906_PosteriorRightOpto','E:\behavior_417\cll_CPU05\cll_CPU05_20150908_PosteriorRightOpto'};
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU06\cll_CPU06_20150902','E:\behavior_417\cll_CPU06\cll_CPU06_20150904_PosteriorRightOpto','E:\behavior_417\cll_CPU06\cll_CPU06_20150906_PosteriorRightOpto'};

% file_name = 'CPU04,05,06-AnteriorLeftOpto';
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {              'E:\behavior_417\cll_CPU04\cll_CPU04_20150908_AnteriorLeftOpto','E:\behavior_417\cll_CPU04\cll_CPU04_20150910_AnteriorLeftOpto','E:\behavior_417\cll_CPU04\cll_CPU04_20150912_AnteriorLeftOpto_30mW'};
% %%%% ,'cll_CPU04_20151020_AnteriorLeftOpto_30mW_1000ms'
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU05\cll_CPU05_20150909_AnteriorLeftOpto','E:\behavior_417\cll_CPU05\cll_CPU05_20150911_AnteriorLeftOpto','E:\behavior_417\cll_CPU05\cll_CPU05_20150913_AnteriorLeftOpto'};
% %%%%  ,'E:\behavior_417\cll_CPU05\cll_CPU05_20151020_AnteriorLeftOpto_30mW_1000ms'
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU06\cll_CPU06_20150907_AnteriorLeftOpto','E:\behavior_417\cll_CPU06\cll_CPU06_20150909_AnteriorLeftOpto','E:\behavior_417\cll_CPU06\cll_CPU06_20150911_AnteriorLeftOpto'};

% file_name = 'CPU04,05,06-AnteriorRightOpto';
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {              'E:\behavior_417\cll_CPU04\cll_CPU04_20150909_AnteriorRightOpto','E:\behavior_417\cll_CPU04\cll_CPU04_20150911_AnteriorRightOpto','E:\behavior_417\cll_CPU04\cll_CPU04_20150913_AnteriorRightOpto'};
% %%% ,'E:\behavior_417\cll_CPU04\cll_CPU04_20151021_AnteriorRightOpto_30mW_1000ms'
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU05\cll_CPU05_20150910_AnteriorRightOpto','E:\behavior_417\cll_CPU05\cll_CPU05_20150912_AnteriorRightOpto_30mW','E:\behavior_417\cll_CPU05\cll_CPU05_20150914_AnteriorRightOpto_30mW'};
% %%% ,'E:\behavior_417\cll_CPU05\cll_CPU05_20151021_AnteriorRightOpto_30mW_1000ms'
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU06\cll_CPU06_20150908_AnteriorRightOpto','E:\behavior_417\cll_CPU06\cll_CPU06_20150910_AnteriorRightOpto','E:\behavior_417\cll_CPU06\cll_CPU06_20150912_AnteriorRightOpto'};


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% CPU07,08,10,11,13 _Posterior_20mW
% file_name = 'CPU07,08,10-PosteriorLeftOpto-20mW-3300ms';
% Time_OptoOnset = -300;
% Time_OptoOff = 3000;
% fn_str_c1 = {              'E:\behavior_417\cll_CPU07\cll_CPU07_20151102_PosteriorRightOpto_20mW_3300ms','E:\behavior_417\cll_CPU07\cll_CPU07_20151118_PosteriorRightOpto_20mW_3300ms','E:\behavior_417\cll_CPU07\cll_CPU07_20151120_PosteriorRightOpto_20mW_3300ms'};
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU08\cll_CPU08_20151029_PosteriorLeftOpto_20mW_3300ms','E:\behavior_417\cll_CPU08\cll_CPU08_20151101_PosteriorLeftOpto_20mW_3300ms','E:\behavior_417\cll_CPU08\cll_CPU08_20151103_PosteriorLeftOpto_20mW_3300ms' };
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU10\cll_CPU10_20151029_PosteriorLeftOpto_20mW_3300ms','E:\behavior_417\cll_CPU10\cll_CPU10_20151101_PosteriorLeftOpto_20mW_3300ms','E:\behavior_417\cll_CPU10\cll_CPU10_20151103_PosteriorLeftOpto_20mW_3300ms'};
% %%%%, 'E:\behavior_417\cll_CPU10\cll_CPU10_20151119_PosteriorLeftOpto_20mW_3300ms'
% file_name = 'CPU07,08,10-PosteriorRightOpto-20mW-3300ms';
% Time_OptoOnset = -300;
% Time_OptoOff = 3000;
% fn_str_c1 = {              'E:\behavior_417\cll_CPU07\cll_CPU07_20151103_PosteriorLeftOpto_20mW_3300ms','E:\behavior_417\cll_CPU07\cll_CPU07_20151119_PosteriorLeftOpto_20mW_3300ms','E:\behavior_417\cll_CPU07\cll_CPU07_20151123_PosteriorLeftOpto_20mW_3300ms'};
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU08\cll_CPU08_20151030_PosteriorRightOpto_20mW_3300ms','E:\behavior_417\cll_CPU08\cll_CPU08_20151102_PosteriorRightOpto_20mW_3300ms','E:\behavior_417\cll_CPU08\cll_CPU08_20151120_PosteriorRightOpto_20mW_3300ms' };
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU10\cll_CPU10_20151030_PosteriorRightOpto_20mW_3300ms','E:\behavior_417\cll_CPU10\cll_CPU10_20151102_PosteriorRightOpto_20mW_3300ms','E:\behavior_417\cll_CPU10\cll_CPU10_20151118_PosteriorRightOpto_20mW_3300ms'};
% %%%%%% ,'E:\behavior_417\cll_CPU10\cll_CPU10_20151119_PosteriorRightOpto_20mW_3300ms'


% file_name = 'CPU07,10,11-PosteriorLeftOpto-20mW-1000ms(1day)';
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {'E:\behavior_417\cll_CPU07\cll_CPU07_20151025_PosteriorLeftOpto_20mW_1000ms','E:\behavior_417\cll_CPU10\cll_CPU10_20151027_PosteriorLeftOpto_20mW_1000ms', 'E:\behavior_417\cll_CPU11\cll_CPU11_20151025_PosteriorLeft_20mW_1000ms'};
% plot([lickRateLeft_NoOpto_duringOpto;lickRateLeft_opto_duringOpto]); 
% plot([lickRateRight_NoOpto_duringOpto;lickRateRight_opto_duringOpto]); 
% file_name = 'CPU07,10,11-PosteriorRightOpto-20mW-1000ms(1day)';
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {'E:\behavior_417\cll_CPU07\cll_CPU07_20151024_PosteriorRightOpto_20mW_1000ms','E:\behavior_417\cll_CPU10\cll_CPU10_20151026_PosteriorRightOpto_20mW_1000ms','E:\behavior_417\cll_CPU11\cll_CPU11_20151024_PosteriorRight_20mW_1000ms'};
% plot([lickRateLeft_NoOpto_duringOpto;lickRateLeft_opto_duringOpto]); 
% plot([lickRateRight_NoOpto_duringOpto;lickRateRight_opto_duringOpto]); 

% file_name = 'CPU13-PosteriorLeftOpto-20mW-1000ms(3Repeats)';
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {'E:\behavior_417\cll_CPU13\cll_CPU13_20151027_PosteriorLeftOpto_20mW_1000ms','E:\behavior_417\cll_CPU13\cll_CPU13_20151029_PosteriorLeftOpto_20mW_1000ms','E:\behavior_417\cll_CPU13\cll_CPU13_20151101_PosteriorLeftOpto_20mW_1000ms'};
% file_name = 'CPU13-PosteriorRightOpto-20mW-1000ms(3Repeats)';
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {'E:\behavior_417\cll_CPU13\cll_CPU13_20151026_PosteriorRightOpto_20mW_1000ms','E:\behavior_417\cll_CPU13\cll_CPU13_20151028_PosteriorRightOpto_20mW_1000ms','E:\behavior_417\cll_CPU13\cll_CPU13_20151102_PosteriorRightOpto_20mW_1000ms'};

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% CPU07,09,11_ Posterior_30mW
% file_name = 'CPU09-PosteriorLeftOpto-30mW-1000ms(3day)';
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {'E:\behavior_417\cll_CPU09\cll_CPU09_20151027_PosteriorLeftOpto_30mW_1000ms', 'E:\behavior_417\cll_CPU09\cll_CPU09_20151029_PosteriorLeftOpto_30mW_1000ms', 'E:\behavior_417\cll_CPU09\cll_CPU09_20151101_PosteriorLeftOpto_30mW_1000ms'};
% file_name = 'CPU09-PosteriorRightOpto-30mW-1000ms(3day)';
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {'E:\behavior_417\cll_CPU09\cll_CPU09_20151026_PosteriorRightOpto_30mW_1000ms','E:\behavior_417\cll_CPU09\cll_CPU09_20151028_PosteriorRightOpto_30mW_1000ms','E:\behavior_417\cll_CPU09\cll_CPU09_20151030_PosteriorRightOpto_30mW_1000ms'};


% file_name = 'CPU07,11-PosteriorLeftOpto-30mW-3300ms(3day)';
% Time_OptoOnset = -300;
% Time_OptoOff = 3000;
% fn_str_c1 = {              'E:\behavior_417\cll_CPU07\cll_CPU07_20151027_PosteriorLeftOpto_30mW_3300ms', 'E:\behavior_417\cll_CPU07\cll_CPU07_20151029_PosteriorLeftOpto_30mW_3300ms', 'E:\behavior_417\cll_CPU07\cll_CPU07_20151101_PosteriorLeftOpto_30mW_3300ms' };
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU11\cll_CPU11_20151027_PosteriorLeft_30mW_3300ms','E:\behavior_417\cll_CPU11\cll_CPU11_20151029_PosteriorLeftOpto_30mW_3300ms','E:\behavior_417\cll_CPU11\cll_CPU11_20151101_PosteriorLeftOpto_30mW_3300ms'};
% file_name = 'CPU07,11-PosteriorRightOpto-30mW-3300ms(3day)';
% Time_OptoOnset = -300;
% Time_OptoOff = 3000;
% fn_str_c1 = {              'E:\behavior_417\cll_CPU07\cll_CPU07_20151026_PosteriorRightOpto_30mW_3300ms','E:\behavior_417\cll_CPU07\cll_CPU07_20151028_PosteriorRightOpto_30mW_3300ms','E:\behavior_417\cll_CPU07\cll_CPU07_20151030_PosteriorRightOpto_30mW_3300ms' };
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU11\cll_CPU11_20151026_PosteriorRight_30mW_3300ms','E:\behavior_417\cll_CPU11\cll_CPU11_20151028_PosteriorRightOpto_30mW_3300ms','E:\behavior_417\cll_CPU11\cll_CPU11_20151030_PosteriorRightOpto_30mW_3300ms'};

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PS01,02,03,04_Posterior_15mW40Hz5ms_1000ms
% file_name = 'Ps01,02,03-PosteriorLeftOpto-15mW-1000ms';
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {              'E:\behavior_417\cll_PS01\cll_PS01_20151020_PosteriorLeftOpto_15mW_1000ms', 'E:\behavior_417\cll_PS01\cll_PS01_20151022_PosteriorLeftOpto_15mW_1000ms', 'E:\behavior_417\cll_PS01\cll_PS01_20151026_PosteriorLeftOpto_15mW_1000ms'};
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_PS02\cll_PS02_20151020_PosteriorLeftOpto_15mW_1000ms','E:\behavior_417\cll_PS02\cll_PS02_20151022_PosteriorLeftOpto_15mW_1000ms', 'E:\behavior_417\cll_PS02\cll_PS02_20151026_PosteriorLeftOpto_15mW_1000ms' ,'E:\behavior_417\cll_PS02\cll_PS02_20151117_PosteriorLeftOpto_10mW_1000ms'};  % 
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_PS03\cll_PS03_20150920_PosteriorLeftOpto_15mW_1000ms', 'E:\behavior_417\cll_PS03\cll_PS03_20151020_PosteriorLeftOpto_15mW_1000ms', 'E:\behavior_417\cll_PS03\cll_PS03_20151022_PosteriorLeftOpto_15mW_1000ms'};
% file_name = 'Ps01,02,03,04-PosteriorRightOpto-15mW-1000ms';
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {              'E:\behavior_417\cll_PS01\cll_PS01_20151021_PosteriorRightOpto_15mW_1000ms','E:\behavior_417\cll_PS01\cll_PS01_20151025_PosteriorRightOpto_15mW_1000ms','E:\behavior_417\cll_PS01\cll_PS01_20151027_PosteriorRightOpto_15mW_1000ms'};
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_PS02\cll_PS02_20151021_PosteriorRightOpto_15mW_1000ms','E:\behavior_417\cll_PS02\cll_PS02_20151025_PosteriorRightOpto_15mW_1000ms','E:\behavior_417\cll_PS02\cll_PS02_20151027_PosteriorRightOpto_15mW_1000ms'};
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_PS03\cll_PS03_20150919_PosteriorRightOpto_15mW_1000ms','E:\behavior_417\cll_PS03\cll_PS03_20151019_PosteriorRightOpto_15mW_1000ms','E:\behavior_417\cll_PS03\cll_PS03_20151021_PosteriorRightOpto_15mW_1000ms'};
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_PS04\cll_PS04_20150918_PosteriorRightOpto_15mW_1000ms','E:\behavior_417\cll_PS04\cll_PS04_20150919_PosteriorRightOpto_15mW_1000ms','E:\behavior_417\cll_PS04\cll_PS04_20150920_PosteriorRightOpto_15mW_1000ms'};

% fn_str_c1 = {'E:\behavior_417\cll_PS02\cll_PS02_20151115_RightOut_15mW_3300ms'};

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% try 10Hz, singlePulse
% file_name = 'Ps01-PosteriorLeftOpto-15mW-Pre350Sound150';
% Time_OptoOnset = -350;
% Time_OptoOff = 150;
% fn_str_c1 = {'E:\behavior_417\cll_PS01\cll_PS01_20150917_PosteriorLeftOpto_15mW_preSound350ms','E:\behavior_417\cll_PS01\cll_PS01_20150919_PosteriorLeftOpto_15mW_preSound350ms'};
% file_name = 'Ps01-PosteriorRightOpto-15mW-Pre350Sound150';
% Time_OptoOnset = -350;
% Time_OptoOff = 150;
% fn_str_c1 = {'E:\behavior_417\cll_PS01\cll_PS01_20150916_PosteriorRightOpto_15mW_preSound350ms','E:\behavior_417\cll_PS01\cll_PS01_20150918_PosteriorRightOpto_15mW_preSound350ms','E:\behavior_417\cll_PS01\cll_PS01_20150920_PosteriorRightOpto_15mW_preSound350ms'};

% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {'E:\behavior_417\cll_PS03\cll_PS03_20151024_PosteriorLeftOpto_15mW10Hz20ms_1000ms','E:\behavior_417\cll_PS03\cll_PS03_20151026_PosteriorLeftOpto_15mW10Hz20ms_1000ms','E:\behavior_417\cll_PS03\cll_PS03_20151028_PosteriorLeftOpto_15mW10Hz20ms_1000ms'};
% fn_str_c1 = {'E:\behavior_417\cll_PS03\cll_PS03_20151023_PosteriorRightOpto_15mW10Hz20ms_1000ms','E:\behavior_417\cll_PS03\cll_PS03_20151025_PosteriorRightOpto_15mW10Hz20ms_1000ms','E:\behavior_417\cll_PS03\cll_PS03_20151027_PosteriorRightOpto_15mW10Hz20ms_1000ms'};

% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {'E:\behavior_417\cll_PS04\cll_PS04_20151016_PosteriorLeftOpto_15mW_1000ms_SinglePuls','E:\behavior_417\cll_PS04\cll_PS04_20151021_PosteriorLeftOpto_15mW_1000ms_SinglePuls','E:\behavior_417\cll_PS04\cll_PS04_20151022_PosteriorLeftOpto_15mW_1000ms_SinglePuls'};
% fn_str_c1 = {'E:\behavior_417\cll_PS04\cll_PS04_20151015_PosteriorRightOpto_15mW_1000ms_SinglePuls','E:\behavior_417\cll_PS04\cll_PS04_20151017_PosteriorRightOpto_15mW_1000ms_SinglePuls','E:\behavior_417\cll_PS04\cll_PS04_20151019_PosteriorLeftOpto_15mW_1000ms_SinglePuls'};

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PS05.06.07.08.09 %%%%%%%%%%%%%%%%%%%%
% file_name = 'PS05.06.07.09-PosteriorLeftOpto-15mW40Hz5ms';
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {              'E:\behavior_417\cll_PS05\cll_PS05_20151028_PosteriorLeftOpto_40Hz5ms_1000ms','E:\behavior_417\cll_PS05\cll_PS05_20151030_PosteriorLeftOpto_40Hz5ms_1000ms','E:\behavior_417\cll_PS05\cll_PS05_20151102_PosteriorLeftOpto_40Hz5ms_1000ms' };
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_PS06\cll_PS06_20151030_PosteriorLeftOpto_40Hz5ms_1000ms','E:\behavior_417\cll_PS06\cll_PS06_20151102_PosteriorLeftOpto_40Hz5ms_1000ms' };
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_PS07\cll_PS07_20151029_PosteriorLeftOpto_40Hz5ms_1000ms','E:\behavior_417\cll_PS07\cll_PS07_20151030_PosteriorLeftOpto_40Hz5ms_1000ms','E:\behavior_417\cll_PS07\cll_PS07_20151102_PosteriorLeftOpto_40Hz5ms_1000ms'};
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_PS09\cll_PS09_20151028_PosteriorLeftOpto_40Hz5ms_1000ms','E:\behavior_417\cll_PS09\cll_PS09_20151030_PosteriorLeftOpto_40Hz5ms_1000ms','E:\behavior_417\cll_PS09\cll_PS09_20151102_PosteriorLeftOpto_40Hz5ms_1000ms'};

% file_name = 'PS05.06.07.09-PosteriorRightOpto-15mW40Hz5ms';
% Time_OptoOnset = 0;
% Time_OptoOff = 1000;
% fn_str_c1 = {              'E:\behavior_417\cll_PS05\cll_PS05_20151029_PosteriorRightOpto_40Hz5ms_1000ms','E:\behavior_417\cll_PS05\cll_PS05_20151101_PosteriorRightOpto_40Hz5ms_1000ms','E:\behavior_417\cll_PS05\cll_PS05_20151103_PosteriorRightOpto_40Hz5ms_1000ms' };
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_PS06\cll_PS06_20151101_PosteriorRightOpto_40Hz5ms_1000ms','E:\behavior_417\cll_PS06\cll_PS06_20151103_PosteriorRightOpto_40Hz5ms_1000ms' };
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_PS07\cll_PS07_20151028_PosteriorRightOpto_40Hz5ms_1000ms','E:\behavior_417\cll_PS07\cll_PS07_20151101_PosteriorRightOpto_40Hz5ms_1000ms','E:\behavior_417\cll_PS07\cll_PS07_20151103_PosteriorRightOpto_40Hz5ms_1000ms'};
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_PS09\cll_PS09_20151029_PosteriorRightOpto_40Hz5ms_1000ms','E:\behavior_417\cll_PS09\cll_PS09_20151101_PosteriorRightOpto_40Hz5ms_1000ms','E:\behavior_417\cll_PS09\cll_PS09_20151103_PosteriorRightOpto_40Hz5ms_1000ms'};

% file_name = 'PS08-PosteriorLeftOpto-15mW40Hz5ms';
% Time_OptoOnset = 0;
% Time_OptoOff = 3300;
% fn_str_c1 = {'E:\behavior_417\cll_PS08\cll_PS08_20151028_PosteriorLeftOpto_15mW100Hz5ms_3300ms', 'E:\behavior_417\cll_PS08\cll_PS08_20151030_PosteriorLeftOpto_15mW100Hz5ms_3300ms' ,'E:\behavior_417\cll_PS08\cll_PS08_20151102_PosteriorLeftOpto_15mW100Hz5ms_3300ms'};
% file_name = 'PS08-PosteriorRightOpto-15mW40Hz5ms';
% Time_OptoOnset = 0;
% Time_OptoOff = 3300;
% fn_str_c1 = {'E:\behavior_417\cll_PS08\cll_PS08_20151027_PosteriorRightOpto_15mW100Hz5ms_3300ms','E:\behavior_417\cll_PS08\cll_PS08_20151029_PosteriorRightOpto_15mW100Hz5ms_3300ms','E:\behavior_417\cll_PS08\cll_PS08_20151101_PosteriorRightOpto_15mW100Hz5ms_3300ms' };


%%%%%%%%%%%%%%%%%  CPU14-22  %%%%%%%%%%%%%%%%%%%
% fn_str_c1 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU14_rig03_20160111_PosteriorLeftOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU16_rig03_20160116_PosteriorLeftOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU18_rig03_20160112_PosteriorLeftOpto_Laser10_20mW3300ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU20_rig03_20160110_PosteriorLeftOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU22_rig03_20160108_PosteriorLeftOpto_Laser10_20mW1000ms'};
% fn_str_c2 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU15_rig04_20160113_PosteriorLeft_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU17_rig04_20160107_PosteriorLeftOpto_20mW_1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU19_rig04_20160106_PosteriorLeftOpto_20mW1000ms', ...
%              'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160112_PosteriorLeftOpto_Laser08_20mW300ms_1000ms'};         
% fn_str_c3 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU14_rig03_20160110_PosteriorRightOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU16_rig03_20160117_PosteriorRightOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU18_rig03_20160113_PosteriorRightOpto_Laser18_20mW3300ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU20_rig03_20160112_PosteriorRightOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU22_rig03_20160109_PosteriorRightOpto_Laser10_20mW1000ms'};
% fn_str_c4 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU15_rig04_20160114_PosteriorRight_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU17_rig04_20160108_PosteriorRightOpto_20mW_1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU19_rig04_20160107_PosteriorRightOpto_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU21_rig04_20160113_PosteriorRightOpto_Laser08_20mW1000ms'};    
% file_name = 'LickRate-CPU14~22-LeftOpto-20mW1000ms';          fn_str_c = {fn_str_c1{:},fn_str_c2{:}};
% file_name = 'LickRate-CPU14,16,18,20,22-LeftOpto-20mW1000ms'; fn_str_c = {fn_str_c1{:}};
% file_name = 'LickRate-CPU15,17,19,21-LeftOpto-20mW1000ms';    fn_str_c = {fn_str_c2{:}};
% file_name = 'LickRate-CPU14~22-RightOpto-20mW1000ms'; fn_str_c = {fn_str_c3{:},fn_str_c4{:}};
% file_name = 'LickRate-CPU14,16,18,20,22-RightOpto-20mW1000ms'; fn_str_c = {fn_str_c3{:}};
% file_name = 'LickRate-CPU15,17,19,21-RightOpto-20mW1000ms'; fn_str_c = {fn_str_c4{:}};

%%%%%%%%%%%%%%%%%  CPU16,17,19,20,21,22 (Pre50Sound150) PsychometricCurve %%%%%%%%%%%%%%%%%%%
% fn_str_CPU1_pre_L = {'E:\behavior_417\cll_CPU16\cll_CPU16_rig03_20160123_PosteriorLeftOpto_Laser18_20mWPre50Sound150',...
%                      'E:\behavior_417\cll_CPU20\cll_CPU20_rig03_20160119_PosteriorLeftOpto_Laser18_20mW1000ms',...
%                      'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160116_PosteriorLeftOpto_Laser18_20mW_Pre50Sound150ms'};
% fn_str_CPU2_pre_L = {'E:\behavior_417\cll_CPU17\cll_CPU17_rig04_20160113_PosteriorLeftOpto_Laser18_20mWPre50Sound150',...
%                      'E:\behavior_417\cll_CPU19\cll_CPU19_rig04_20160112_PosteriorLeftOpto_Laser18_20mWPre50Sound100_sound150',...
%                      'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160121_PosteriorLeftOpto_Laser08_20mWPre50Sound150'};
% fn_str_CPU1_pre_R = {'E:\behavior_417\cll_CPU16\cll_CPU16_rig03_20160124_PosteriorRightOpto_Laser18_20mWPre50Sound150',...
%                      'E:\behavior_417\cll_CPU20\cll_CPU20_rig03_20160120_PosteriorRightOpto_Laser18_20mWPre50Sound150',...
%                      'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160119_PosteriorRightOpto_Laser18_20mW_Pre50Sound150ms'};
% fn_str_CPU2_pre_R = {'E:\behavior_417\cll_CPU17\cll_CPU17_rig04_20160114_PosteriorRightOpto_Laser18_20mWPre50Sound150',...
%                      'E:\behavior_417\cll_CPU19\cll_CPU19_rig04_20160116_PosteriorRightOpto_Laser18_14mWPre50sound150',...
%                      'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160122_PosteriorRightOpto_Laser08_20mWPre50Sound150'};
% file_name = 'CPU16,17,19,20,21,22-LickRate-LeftStriatum-Pre50Sound150';fn_str_c = [fn_str_CPU1_pre_L(:);fn_str_CPU2_pre_L(:)]; 
% file_name = 'CPU16,20,22-LickRate-LeftStriatum-Pre50Sound150';fn_str_c = [fn_str_CPU1_pre_L(:)]; 
% file_name = 'CPU17,19,21-LickRate-LeftStriatum-Pre50Sound150';fn_str_c = [fn_str_CPU2_pre_L(:)];
% file_name = 'CPU16,17,19,20,21,22-LickRate-RightStriatum-Pre50Sound150';fn_str_c = [fn_str_CPU1_pre_R(:);fn_str_CPU2_pre_R(:)]; 
% file_name = 'CPU16,20,22-LickRate-RightStriatum-Pre50Sound150';fn_str_c = [fn_str_CPU1_pre_R(:)]; 
% file_name = 'CPU17,19,21-LickRate-RightStriatum-Pre50Sound150';fn_str_c = [fn_str_CPU2_pre_R(:)];
         
%%%%%%%%%%%%%%%%    D1_01-06 (ChR2)  %%%%%%%%%%%%%%%%   
% fn_str_c5 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1_1000ms\chosen_D1_ChR2_1000ms_Left\cll_D1_01_rig04_20160114_PosteriorLeftOpto_2mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1_1000ms\chosen_D1_ChR2_1000ms_Left\cll_D1_03_rig06_20160119_PosteriorLeftOpto_2mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1_1000ms\chosen_D1_ChR2_1000ms_Left\cll_D1_05_rig04_20160325_PosteriorLeftOpto_Laser07_2mW_1000ms'};   
% fn_str_c6 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1_1000ms\chosen_D1_ChR2_1000ms_Left\cll_D1_02_rig05_20160127_PosteriorLeftOpto_Laser08_3mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1_1000ms\chosen_D1_ChR2_1000ms_Left\cll_D1_04_rig03_20160310_PosteriiorLeftOpto_Laser08_2mW_1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1_1000ms\chosen_D1_ChR2_1000ms_Left\cll_D1_06_rig05_20160310_PosteriorLeftOpto_Laser22_2mW_1000ms'};  
% fn_str_c7 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1_1000ms\chosen_D1_ChR2_1000ms_Right\cll_D1_01_rig04_20160115_PosteriorRightOpto_2mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1_1000ms\chosen_D1_ChR2_1000ms_Right\cll_D1_03_rig06_20160120_PosteriorRightOpto_2mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1_1000ms\chosen_D1_ChR2_1000ms_Right\cll_D1_05_rig04_20160326_PosteriorRightOpto_Laser07_2mW_1000ms'};   
% fn_str_c8 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1_1000ms\chosen_D1_ChR2_1000ms_Right\cll_D1_02_rig05_20160128_PosteriorRightOpto_Laser08_3mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1_1000ms\chosen_D1_ChR2_1000ms_Right\cll_D1_04_rig03_20160309_PosteriiorRightOpto_Laser08_2mW_1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1_1000ms\chosen_D1_ChR2_1000ms_Right\cll_D1_06_rig05_20160309_PosteriorRightOpto_Laser22_2mW_1000ms'}; 
% file_name = 'LickRate-D1-01~06-LeftOpto-2mW1000ms';       fn_str_c = {fn_str_c5{:},fn_str_c6{:}};
% file_name = 'LickRate-D1-01,03,05-LeftOpto-2mW1000ms';    fn_str_c = {fn_str_c5{:}};
% file_name = 'LickRate-D1-02,04,06-LeftOpto-2mW1000ms';    fn_str_c = {fn_str_c6{:}};
% file_name = 'LickRate-D1-01~06-RightOpto-2mW1000ms';      fn_str_c = {fn_str_c7{:},fn_str_c8{:}};
% file_name = 'LickRate-D1-01,03,05-RightOpto-2mW1000ms';   fn_str_c = {fn_str_c7{:}};
% file_name = 'LickRate-D1-02,04,06-RightOpto-2mW1000ms';   fn_str_c = {fn_str_c8{:}};         



%%%%%%%%%%%%%%%%%    D1_07,08,10,11 (ArchT) PsychometricCurve  %%%%%%%%%%%%%%%%   
% fn_str_c13 = {'E:\behavior_417\cll_D1_07\cll_D1_07_rig05_20160422_PosteriorLeft_LG01_20mW_1000ms',...
%               'E:\behavior_417\cll_D1_08\cll_D1_08_rig06_20160422_PosteriorLeft_LG04_1000ms_20mW',...
%               'E:\behavior_417\cll_D1_10\cll_D1_10_rig06_20160426_PosteriorLeft_LG04_1000ms_20mW',...
%               'E:\behavior_417\cll_D1_11\cll_D1_11_rig05_20160505_PosteriorLeftOpto_LG03_20mW_1000ms'};
% fn_str_c14 = {'E:\behavior_417\cll_D1_07\cll_D1_07_rig05_20160423_PosteriorRight_LG01_20mW_1000ms',...
%               'E:\behavior_417\cll_D1_08\cll_D1_08_rig06_20160423_PosteriorRight_LG04_1000ms_20mW',...
%               'E:\behavior_417\cll_D1_10\cll_D1_10_rig06_20160427_PosteriorRight_LG04_1000ms_20mW',...
%               'E:\behavior_417\cll_D1_11\cll_D1_11_rig05_20160506_PosteriorRightOpto_LG03_20mW_1000ms'};
% file_name = 'LickRate-D1-07,08,10,11(ArchT)-LeftStriatum-1000ms';fn_str_c = [fn_str_c13(:)]; 
% file_name = 'LickRate-D1-07,08,10,11(ArchT)-RightStriatum-1000ms';fn_str_c = [fn_str_c14(:)]; 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  D2_ 01-08  (ChR2) 给光第一天 %%%%%%%%%%%%%%%%%%%%%%%%%%%
% fn_str_c9 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\EachAnimalOneSession_1000ms\EachAnimalOneSession_1000ms_D2_ChR2_Left\cll_D2_01_rig05_20160112_PosteriorLeft_Laser08_2mW1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\EachAnimalOneSession_1000ms\EachAnimalOneSession_1000ms_D2_ChR2_Left\cll_D2_03_rig05_20160113_PosteriorLeftOpto_2mW1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\EachAnimalOneSession_1000ms\EachAnimalOneSession_1000ms_D2_ChR2_Left\cll_D2_05_rig03_20160308_PosteriorLeftOpto_Laser08_2mW_1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\EachAnimalOneSession_1000ms\EachAnimalOneSession_1000ms_D2_ChR2_Left\cll_D2_07_rig05_20160318_PosteriorLeftOpto_laser22_2mW_1000ms'};
% fn_str_c10= {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\EachAnimalOneSession_1000ms\EachAnimalOneSession_1000ms_D2_ChR2_Left\cll_D2_02_rig06_20160120_PosteriorLeftOpto_2mW1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\EachAnimalOneSession_1000ms\EachAnimalOneSession_1000ms_D2_ChR2_Left\cll_D2_06_rig04_20160308_PosteriorLeftOpto_Laser07_2mW_1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\EachAnimalOneSession_1000ms\EachAnimalOneSession_1000ms_D2_ChR2_Left\cll_D2_08_rig06_20160320_PosteriorLeftOpto_Laser03_2mW_1000ms'};
% fn_str_c11= {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\EachAnimalOneSession_1000ms\EachAnimalOneSession_1000ms_D2_ChR2_Right\cll_D2_01_rig05_20160113_PosteriorRight_Laser08_2mW1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\EachAnimalOneSession_1000ms\EachAnimalOneSession_1000ms_D2_ChR2_Right\cll_D2_03_rig05_20160112_PosteriorRightOpto_2mW1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\EachAnimalOneSession_1000ms\EachAnimalOneSession_1000ms_D2_ChR2_Right\cll_D2_05_rig03_20160309_PosteriorRightOpto_Laser08_2mW_1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\EachAnimalOneSession_1000ms\EachAnimalOneSession_1000ms_D2_ChR2_Right\cll_D2_07_rig05_20160319_PosteriorRightOpto_laser22_2mW_1000ms'};
% fn_str_c12= {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\EachAnimalOneSession_1000ms\EachAnimalOneSession_1000ms_D2_ChR2_Right\cll_D2_02_rig06_20160121_PosteriorRightOpto_Laser07_2mW1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\EachAnimalOneSession_1000ms\EachAnimalOneSession_1000ms_D2_ChR2_Right\cll_D2_06_rig04_20160309_PosteriorRightOpto_Laser07_2mW_1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\EachAnimalOneSession_1000ms\EachAnimalOneSession_1000ms_D2_ChR2_Right\cll_D2_08_rig06_20160321_PosteriorRightOpto_Laser03_2mW_1000ms'};
% file_name = 'LickRate-D2-01,02,03,05,06,07,08-LeftOpto-2mW1000ms'; fn_str_c = {fn_str_c9{:},fn_str_c10{:}};
% file_name = 'LickRate-D2-01,03,05,07-LeftOpto-2mW1000ms'; fn_str_c = {fn_str_c9{:}};
% file_name = 'LickRate-D2-02,06,08-LeftOpto-2mW1000ms'; fn_str_c = {fn_str_c10{:}};
% file_name = 'LickRate-D2-01,02,03,05,06,07,08-RightOpto-2mW1000ms'; fn_str_c = {fn_str_c11{:},fn_str_c12{:}};
% file_name = 'LickRate-D2-01,03,05,07-RightOpto-2mW1000ms';          fn_str_c = {fn_str_c11{:}};
% file_name = 'LickRate-D2-02,06,08-RightOpto-2mW1000ms';             fn_str_c = {fn_str_c12{:}};


%%%%%%%%%%%%%%%%    D2_01,02,03,05,07,08 (ChR2) Pre50Sound150， PsychometricCurve  %%%%%%%%%%%%%%%%   
% fn_str_D2_HR_pre_L = {'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160121_PosteriorLeft_Laser08_2mWPre50Sound150_waterDelay300',...
%                       'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160313_PosteriorLeftOpto_Laser08_2mW_Pre50Sound150',...
%                       'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160320_PosteriorLeftOpto_laser22_2mW_Pre50Sound300'};   
%                       %%%%% 'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160119_PosteriorLeftOpto_2mWPostPre50Sound150ms_waterDelay300'后来照光结果全都反过来了
% fn_str_D2_HL_pre_L = {'E:\behavior_417\cll_D2_02\cll_D2_02_rig06_20160126_PosteriorLeftOpto_Laser07_5mWPre50Sound150',...
%                       'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160322_PosteriorLeftOpto_Laser03_2mW_Pre50Sound150'};
% fn_str_D2_HR_pre_R = {'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160122_PosteriorRight_Laser08_2mWPre50Sound150_waterDelay300',...
%                       'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160314_PosteriorRightOpto_Laser08_2mW_Pre50Sound150',...
%                       'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160321_PosteriorRightOpto_laser22_2mW_Pre50Sound300'};
%                       %%%%% 'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160120_PosteriorRightOpto_2mWPre50Sound150ms_waterDelay300',...
% fn_str_D2_HL_pre_R = {'E:\behavior_417\cll_D2_02\cll_D2_02_rig06_20160127_PosteriorRightOpto_Laser07_5mWPre50Sound150',...
%                       'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160323_PosteriorRightOpto_Laser03_2mW_Pre50Sound150'};
% file_name = 'D2-01,02,05,07,08(ChR2)-LickRate-LeftStriatum-Pre50Sound150';fn_str_c = [fn_str_D2_HR_pre_L(:);fn_str_D2_HL_pre_L(:)]; 
% file_name = 'D2-01,05,07(ChR2)-LickRate-LeftStriatum-Pre50Sound150';fn_str_c = [fn_str_D2_HR_pre_L(:)]; 
% file_name = 'D2-02,08(ChR2)-LickRate-LeftStriatum-Pre50Sound150';fn_str_c = [fn_str_D2_HL_pre_L(:)];
% file_name = 'D2-01,02,05,07,08(ChR2)-LickRate-RightStriatum-Pre50Sound150';fn_str_c = [fn_str_D2_HR_pre_R(:);fn_str_D2_HL_pre_R(:)]; 
% file_name = 'D2-01,05,07(ChR2)-LickRate-RightStriatum-Pre50Sound150';fn_str_c = [fn_str_D2_HR_pre_R(:)]; 
% file_name = 'D2-02,08(ChR2)-LickRate-RightStriatum-Pre50Sound150';fn_str_c = [fn_str_D2_HL_pre_R(:)];


%%%%%%%%%%%%%%%%%    D2_11-16 (ChR2) PsychometricCurve 有效的一天 %%%%%%%%%%%%%%%%   
% fn_str_D2_HR_1000ms_L = {'E:\behavior_417\cll_D2_11\cll_D2_11_rig03_20161109_probe_PosteriorLeftOpto_LB03_2mW1000ms',...
%                       'E:\behavior_417\cll_D2_13\cll_D2_13_rig03_20161129_PosteriorLeftOpto_LB03_4mW1000ms',...
%                       'E:\behavior_417\cll_D2_14\cll_D2_14_Rig04_20161125_PosteriorLeftOpto_LB08_2mW1000ms',...
%                       'E:\behavior_417\cll_D2_15\cll_D2_15_rig03_20161125_PosteriorLeftOpto_LB03_2mW1000ms'};   
% file_name = 'D2-11,13,14,15(ChR2)-PsychoCurve-LeftStriatum-1000ms';fn_str_c = [fn_str_D2_HR_1000ms_L(:)]; 
% fn_str_D2_HR_1000ms_R = {'E:\behavior_417\cll_D2_11\cll_D2_11_rig03_20161108_probe_PosteriorRightOpto_LB03_2mW1000ms',...
%                       'E:\behavior_417\cll_D2_13\cll_D2_13_rig03_20161128_PosteriorRightOpto_LB03_2mW1000ms',...
%                       'E:\behavior_417\cll_D2_14\cll_D2_14_Rig04_20161126_PosteriorRightOpto_LB08_2mW1000ms',...
%                       'E:\behavior_417\cll_D2_15\cll_D2_15_rig03_20161126_PosteriorRightOpto_LB03_2mW1000ms'};   
% file_name = 'D2-11,13,14,15(ChR2)-PsychoCurve-RightStriatum-1000ms';fn_str_c = [fn_str_D2_HR_1000ms_R(:)]; 

%%%%%%%%%%%%%%%%%    D2_11-16 (ChR2) 给光第一天  PsychometricCurve %%%%%%%%%%%%%%%%   
% fn_str_D2_HR_1000ms_L = {'E:\behavior_417\cll_D2_11\cll_D2_11_rig03_20161109_probe_PosteriorLeftOpto_LB03_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_12\cll_D2_12_Rig04_20161203_PosteriorLeftOpto_LB08_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_13\cll_D2_13_rig03_20161126_PosteriorLeftOpto_LB03_2mW1000ms',...          %%cll_D2_13_rig03_20161129_PosteriorLeftOpto_LB03_4mW1000ms
%                          'E:\behavior_417\cll_D2_14\cll_D2_14_Rig04_20161125_PosteriorLeftOpto_LB08_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_15\cll_D2_15_rig03_20161125_PosteriorLeftOpto_LB03_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_16\cll_D2_16_Rig04_20161203_PosteriorLeftOpto_LB08_2mW1000ms'};   
% file_name = 'D2-11-16(ChR2)-PsychoCurve-LeftStriatum-1000ms';fn_str_c = [fn_str_D2_HR_1000ms_L(:)]; 
% fn_str_D2_HR_1000ms_R = {'E:\behavior_417\cll_D2_11\cll_D2_11_rig03_20161108_probe_PosteriorRightOpto_LB03_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_12\cll_D2_12_Rig04_20161204_PosteriorRightOpto_LB08_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_13\cll_D2_13_rig03_20161128_PosteriorRightOpto_LB03_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_14\cll_D2_14_Rig04_20161126_PosteriorRightOpto_LB08_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_15\cll_D2_15_rig03_20161126_PosteriorRightOpto_LB03_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_16\cll_D2_16_Rig04_20161204_PosteriorRightOpto_LB08_2mW1000ms'};   
% file_name = 'D2-11-16(ChR2)-PsychoCurve-RightStriatum-1000ms';fn_str_c = [fn_str_D2_HR_1000ms_R(:)]; 

%%%%%%%%%%%%%%%%%    D2_11-16 (ChR2)-150ms PsychometricCurve %%%%%%%%%%%%%%%%   
% file_str_c1 = {'E:\behavior_417\cll_D2_13\cll_D2_13_rig03_20161130_PosteriorRightOpto_LB03_2mW150ms',...
%                'E:\behavior_417\cll_D2_13\cll_D2_13_rig03_20161202_PosteriorRightOpto_LB03_2mW150ms',...
%                'E:\behavior_417\cll_D2_14\cll_D2_14_Rig04_20161129_PosteriorRightOpto_LB08_2mW150ms',...
%                'E:\behavior_417\cll_D2_14\cll_D2_14_Rig04_20161201_PosteriorRightOpto_LB08_2mW150ms',...
%                'E:\behavior_417\cll_D2_14\cll_D2_14_Rig04_20161207_PosteriorRightOpto_LB08_2mW150ms',...
%                'E:\behavior_417\cll_D2_16\cll_D2_16_Rig04_20161211_PosteriorRightOpto_LB08_2mW150ms',...
%                'E:\behavior_417\cll_D2_16\cll_D2_16_Rig04_20161213_PosteriorRightOpto_LB08_2mW150ms'};
% file_name = 'D2-13,14,16-LickRate-RightStriatum-Sound150ms';fn_str_c = [file_str_c1(:)]; 

% file_str_c1 = {'E:\behavior_417\cll_D2_13\cll_D2_13_rig03_20161204_PosteriorRightOpto_LB03_2mWPre650_opto150',...
%                'E:\behavior_417\cll_D2_13\cll_D2_13_rig03_20161206_PosteriorRightOpto_LB03_2mWPre650_Opto150',...
%                'E:\behavior_417\cll_D2_14\cll_D2_14_Rig04_20161203_PosteriorRightOpto_LB08_2mWPre650_Opto150',...
%                'E:\behavior_417\cll_D2_14\cll_D2_14_Rig04_20161205_PosteriorRightOpto_LB08_2mWPre650_Opto150'};
% file_name = 'D2-13,14-LickRate-RightStriatum-Pre650-Opto150';fn_str_c = [file_str_c1(:)]; 




lickRateLeft_NoOpto_duringOpto = [];
lickRateLeft_opto_duringOpto =[];
lickRateRight_NoOpto_duringOpto = [];
lickRateRight_opto_duringOpto = [];

for n=1:length(fn_str_c) %n=1:length(files)
    load(fn_str_c{n});
    [lickRateLeft_NoOpto_duringOpto(n),  lickRateLeft_opto_duringOpto(n), lickRateRight_NoOpto_duringOpto(n) lickRateRight_opto_duringOpto(n)] = OptoLickRate_AroundSound( SessionResults);
end
figure;
% ylim_max =  max([lickRateLeft_NoOpto_duringOpto lickRateLeft_opto_duringOpto lickRateRight_NoOpto_duringOpto lickRateRight_opto_duringOpto]);
ylim_max =  max([lickRateLeft_NoOpto_duringOpto lickRateLeft_opto_duringOpto lickRateRight_NoOpto_duringOpto lickRateRight_opto_duringOpto]);
subplot(1,2,1);
% plot([lickRateLeft_NoOpto_duringOpto(1:3);lickRateLeft_opto_duringOpto(1:3)],'color',[1,0,0]);      hold on;
% plot([lickRateLeft_NoOpto_duringOpto(4:6);lickRateLeft_opto_duringOpto(4:6)],'color',[0,1,0]);      hold on;
% plot([lickRateLeft_NoOpto_duringOpto(7:9);lickRateLeft_opto_duringOpto(7:9)],'color',[0,0,1]);      hold on;
% plot([lickRateLeft_NoOpto_duringOpto(10:12);lickRateLeft_opto_duringOpto(10:12)],'color',[0,0,0]); 
color_string = hsv(length (fn_str_c));
for i=1:length (fn_str_c)
    line([1,2],[lickRateLeft_NoOpto_duringOpto(i),lickRateLeft_opto_duringOpto(i)],'color',color_string(i,:),'linewidth',3)
end
% plot([lickRateLeft_NoOpto_duringOpto;lickRateLeft_opto_duringOpto],'k','linewidth',3); % 
[h1,p1] = ttest(lickRateLeft_NoOpto_duringOpto,lickRateLeft_opto_duringOpto);
text(2,ylim_max+0.1,['p= ' num2str(p1)],'fontweight','bold','fontsize',12);
set(gca,'xlim',[0,3]);set(gca,'ylim',[0,ylim_max+0.2]);title('Left Licking','fontweight','bold','fontsize',18);
a={' ','Control','Opto',' '};
set(gca,'xticklabel',a,'fontsize',13,'fontweight','bold');
ylabel('lick number / trial','fontsize',12,'fontweight','bold');
subplot(1,2,2);
% plot([lickRateRight_NoOpto_duringOpto(1:3);lickRateRight_opto_duringOpto(1:3)],'color',[1,0,0]);    hold on;
% plot([lickRateRight_NoOpto_duringOpto(4:6);lickRateRight_opto_duringOpto(4:6)],'color',[0,1,0]); hold on;
% plot([lickRateRight_NoOpto_duringOpto(7:9);lickRateRight_opto_duringOpto(7:9)],'color',[0,0,1]); hold on;
% plot([lickRateRight_NoOpto_duringOpto(10:12);lickRateRight_opto_duringOpto(10:12)],'color',[0,0,0]); 
color_string = hsv(length (fn_str_c));
for i=1:length (fn_str_c)
    line([1,2],[lickRateRight_NoOpto_duringOpto(i),lickRateRight_opto_duringOpto(i)],'color',color_string(i,:),'linewidth',3)
end
% plot([lickRateRight_NoOpto_duringOpto;lickRateRight_opto_duringOpto],'r','linewidth',3);
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

%%
figure;














