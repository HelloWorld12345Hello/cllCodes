    clc;
    clear;
%%%%%%%%%%%%%%%%%     CPU04~06-PsychoCurve  %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%% posterior
% file_name = 'CPU04~06-CorrectRate-PosteriorLeftStriatum-1000ms';
% fn_str_c1 =               {'E:\behavior_417\cll_CPU04\cll_CPU04_20150902_opto','E:\behavior_417\cll_CPU04\cll_CPU04_20150904_PosteriorLeftOpto','E:\behavior_417\cll_CPU04\cll_CPU04_20150906_PosteriorLeftOpto'};
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU05\cll_CPU05_20150903_PosteriorLeftOpto','E:\behavior_417\cll_CPU05\cll_CPU05_20150905_PosteriorLeftOpto','E:\behavior_417\cll_CPU05\cll_CPU05_20150907_PosteriorLeftOpto'};
% fn_str = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU06\cll_CPU06_20150901','E:\behavior_417\cll_CPU06\cll_CPU06_20150903_PosteriorLeftOpto','E:\behavior_417\cll_CPU06\cll_CPU06_20150905_PosteriorLeftOpto'};
% file_name = 'CPU04,05,06-PosteriorRightOpto';
% fn_str_c1 = {              'E:\behavior_417\cll_CPU04\cll_CPU04_20150903_opto','E:\behavior_417\cll_CPU04\cll_CPU04_20150905_PosteriorRightOpto','E:\behavior_417\cll_CPU04\cll_CPU04_20150907_PosteriorRightOpto'};
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU05\cll_CPU05_20150904_PosteriorRightOpto','E:\behavior_417\cll_CPU05\cll_CPU05_20150906_PosteriorRightOpto','E:\behavior_417\cll_CPU05\cll_CPU05_20150908_PosteriorRightOpto'};
% fn_str = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU06\cll_CPU06_20150902','E:\behavior_417\cll_CPU06\cll_CPU06_20150904_PosteriorRightOpto','E:\behavior_417\cll_CPU06\cll_CPU06_20150906_PosteriorRightOpto'};
% file_name = 'CPU04,05,06-AnteriorLeftOpto';
% fn_str_c1 = {              'E:\behavior_417\cll_CPU04\cll_CPU04_20150908_AnteriorLeftOpto','E:\behavior_417\cll_CPU04\cll_CPU04_20150910_AnteriorLeftOpto','E:\behavior_417\cll_CPU04\cll_CPU04_20150912_AnteriorLeftOpto_30mW'};
% %%%% ,'cll_CPU04_20151020_AnteriorLeftOpto_30mW_1000ms'
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU05\cll_CPU05_20150909_AnteriorLeftOpto','E:\behavior_417\cll_CPU05\cll_CPU05_20150911_AnteriorLeftOpto','E:\behavior_417\cll_CPU05\cll_CPU05_20150913_AnteriorLeftOpto'};
% %%%%  ,'E:\behavior_417\cll_CPU05\cll_CPU05_20151020_AnteriorLeftOpto_30mW_1000ms'
% fn_str = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU06\cll_CPU06_20150907_AnteriorLeftOpto','E:\behavior_417\cll_CPU06\cll_CPU06_20150909_AnteriorLeftOpto','E:\behavior_417\cll_CPU06\cll_CPU06_20150911_AnteriorLeftOpto'};
% file_name = 'CPU04,05,06-AnteriorRightOpto';
% fn_str_c1 = {              'E:\behavior_417\cll_CPU04\cll_CPU04_20150909_AnteriorRightOpto','E:\behavior_417\cll_CPU04\cll_CPU04_20150911_AnteriorRightOpto','E:\behavior_417\cll_CPU04\cll_CPU04_20150913_AnteriorRightOpto'};
% %%% ,'E:\behavior_417\cll_CPU04\cll_CPU04_20151021_AnteriorRightOpto_30mW_1000ms'
% fn_str_c1 = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU05\cll_CPU05_20150910_AnteriorRightOpto','E:\behavior_417\cll_CPU05\cll_CPU05_20150912_AnteriorRightOpto_30mW','E:\behavior_417\cll_CPU05\cll_CPU05_20150914_AnteriorRightOpto_30mW'};
% %%% ,'E:\behavior_417\cll_CPU05\cll_CPU05_20151021_AnteriorRightOpto_30mW_1000ms'
% fn_str = {fn_str_c1{:}, 'E:\behavior_417\cll_CPU06\cll_CPU06_20150908_AnteriorRightOpto','E:\behavior_417\cll_CPU06\cll_CPU06_20150910_AnteriorRightOpto','E:\behavior_417\cll_CPU06\cll_CPU06_20150912_AnteriorRightOpto'};   

%%%%%%%%%%%%%%%%%  CPU14-22 PsychometricCurve %%%%%%%%%%%%%%%%%%%
%%%% Posterior
% fn_str_c1 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU14_rig03_20160111_PosteriorLeftOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU16_rig03_20160116_PosteriorLeftOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU18_rig03_20160112_PosteriorLeftOpto_Laser10_20mW3300ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU20_rig03_20160110_PosteriorLeftOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU22_rig03_20160108_PosteriorLeftOpto_Laser10_20mW1000ms'};
% fn_str_c1_02 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU14_rig03_20160111_PosteriorLeftOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\cll_CPU16\cll_CPU16_rig03_20160119_PosteriorLeftOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU18_rig03_20160112_PosteriorLeftOpto_Laser10_20mW3300ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU20_rig03_20160110_PosteriorLeftOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU22_rig03_20160108_PosteriorLeftOpto_Laser10_20mW1000ms'};
% fn_str_c2 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU15_rig04_20160113_PosteriorLeft_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU17_rig04_20160107_PosteriorLeftOpto_20mW_1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU19_rig04_20160106_PosteriorLeftOpto_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU21_rig04_20160112_PosteriorLeftOpto_Laser08_20mW300ms_1000ms'};
% fn_str_c3 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU14_rig03_20160110_PosteriorRightOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU16_rig03_20160117_PosteriorRightOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU18_rig03_20160113_PosteriorRightOpto_Laser18_20mW3300ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU20_rig03_20160112_PosteriorRightOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU22_rig03_20160109_PosteriorRightOpto_Laser10_20mW1000ms'};
% fn_str_c3_02 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU14_rig03_20160110_PosteriorRightOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\cll_CPU16\cll_CPU16_rig03_20160120_PosteriorRightOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU18_rig03_20160113_PosteriorRightOpto_Laser18_20mW3300ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU20_rig03_20160112_PosteriorRightOpto_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU22_rig03_20160109_PosteriorRightOpto_Laser10_20mW1000ms'};
% fn_str_c4 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU15_rig04_20160114_PosteriorRight_Laser18_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU17_rig04_20160108_PosteriorRightOpto_20mW_1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU19_rig04_20160107_PosteriorRightOpto_20mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\CPU\cll_CPU21_rig04_20160113_PosteriorRightOpto_Laser08_20mW1000ms'};  
% file_name = 'CPU14~22-PsychoCurve-LeftStriatum-1000ms';fn_str = [fn_str_c1(:);fn_str_c2(:)]; 
% file_name = 'CPU14,16,18,20,22-PsychoCurve-LeftStriatum-1000ms';fn_str = [fn_str_c1(:)]; 
% file_name = 'CPU15,17,19,21-PsychoCurve-LeftStriatum-1000ms';fn_str = [fn_str_c2(:)]; 
% file_name = 'CPU14~22-PsychoCurve-RighttStriatum-1000ms';fn_str = [fn_str_c3(:);fn_str_c4(:)]; 
% file_name = 'CPU14,16,18,20,22-PsychoCurve-RightStriatum-1000ms';fn_str = [fn_str_c3(:)]; 
% file_name = 'CPU15,17,19,21-PsychoCurve-RighttStriatum-1000ms';fn_str = [fn_str_c4(:)]; 

% file_name = 'CPU14~22-PsychoCurve-LeftStriatum-1000ms';fn_str = [fn_str_c1_02(:);fn_str_c2(:)]; 
% file_name = 'CPU14~22-PsychoCurve-RighttStriatum-1000ms';fn_str = [fn_str_c3_02(:);fn_str_c4(:)]; 

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
% file_name = 'CPU16,17,19,20,21,22-PsychoCurve-LeftStriatum-Pre50Sound150';fn_str = [fn_str_CPU1_pre_L(:);fn_str_CPU2_pre_L(:)]; 
% file_name = 'CPU16,20,22-PsychoCurve-LeftStriatum-Pre50Sound150';fn_str = [fn_str_CPU1_pre_L(:)]; 
% file_name = 'CPU17,19,21-PsychoCurve-LeftStriatum-Pre50Sound150';fn_str = [fn_str_CPU2_pre_L(:)];
% 
% file_name = 'CPU16,17,19,20,21,22-PsychoCurve-RightStriatum-Pre50Sound150';fn_str = [fn_str_CPU1_pre_R(:);fn_str_CPU2_pre_R(:)]; 
% file_name = 'CPU16,20,22-PsychoCurve-RightStriatum-Pre50Sound150';fn_str = [fn_str_CPU1_pre_R(:)]; 
% file_name = 'CPU17,19,21-PsychoCurve-RightStriatum-Pre50Sound150';fn_str = [fn_str_CPU2_pre_R(:)];

%%%%%%%%%%%%%%%%%    D1_01-06 (ChR2) PsychometricCurve  %%%%%%%%%%%%%%%%   
% fn_str_c5 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1\cll_D1_01_rig04_20160114_PosteriorLeftOpto_2mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1\cll_D1_03_rig06_20160119_PosteriorLeftOpto_2mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1\cll_D1_05_rig04_20160325_PosteriorLeftOpto_Laser07_2mW_1000ms'};   
% fn_str_c6 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1\cll_D1_02_rig05_20160127_PosteriorLeftOpto_Laser08_3mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1\cll_D1_04_rig03_20160310_PosteriiorLeftOpto_Laser08_2mW_1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1\cll_D1_06_rig05_20160310_PosteriorLeftOpto_Laser22_2mW_1000ms'};  
% fn_str_c6_02 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1\cll_D1_02_rig05_20160127_PosteriorLeftOpto_Laser08_3mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1\cll_D1_04_rig03_20160310_PosteriiorLeftOpto_Laser08_2mW_1000ms', ...
%              'E:\behavior_417\cll_D1_06\cll_D1_06_rig05_20160313_PosteriorLeftOpto_Laser22_2mW_1000ms'};  
% fn_str_c7 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1\cll_D1_01_rig04_20160115_PosteriorRightOpto_2mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1\cll_D1_03_rig06_20160120_PosteriorRightOpto_2mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1\cll_D1_05_rig04_20160326_PosteriorRightOpto_Laser07_2mW_1000ms'};   
% fn_str_c8 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1\cll_D1_02_rig05_20160128_PosteriorRightOpto_Laser08_3mW1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1\cll_D1_04_rig03_20160309_PosteriiorRightOpto_Laser08_2mW_1000ms', ...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D1\cll_D1_06_rig05_20160309_PosteriorRightOpto_Laser22_2mW_1000ms'};  
% file_name = 'D1-LeftStriatum';  fn_str = [fn_str_c5(:);fn_str_c6(:)]; %% D1_Left
% file_name = 'D1-LeftStriatum';  fn_str = [fn_str_c5(:);fn_str_c6_02(:)]; %% D1_Left
% file_name = 'D1-RightStriatum'; fn_str = [fn_str_c7(:);fn_str_c8(:)]; %% D1_Right
% file_name = 'D1-LeftStriatum';  fn_str = [fn_str_c6(3)]; %% D1_Left
         
%%%%%%%%%%%%%%%%%    D1_07,08,10,11 (ArchT) PsychometricCurve  %%%%%%%%%%%%%%%%   
% fn_str_c13 = {'E:\behavior_417\cll_D1_07\cll_D1_07_rig05_20160422_PosteriorLeft_LG01_20mW_1000ms',...
%               'E:\behavior_417\cll_D1_08\cll_D1_08_rig06_20160422_PosteriorLeft_LG04_1000ms_20mW',...
%               'E:\behavior_417\cll_D1_10\cll_D1_10_rig06_20160426_PosteriorLeft_LG04_1000ms_20mW',...
%               'E:\behavior_417\cll_D1_11\cll_D1_11_rig05_20160505_PosteriorLeftOpto_LG03_20mW_1000ms'};
% fn_str_c14 = {'E:\behavior_417\cll_D1_07\cll_D1_07_rig05_20160423_PosteriorRight_LG01_20mW_1000ms',...
%               'E:\behavior_417\cll_D1_08\cll_D1_08_rig06_20160423_PosteriorRight_LG04_1000ms_20mW',...
%               'E:\behavior_417\cll_D1_10\cll_D1_10_rig06_20160427_PosteriorRight_LG04_1000ms_20mW',...
%               'E:\behavior_417\cll_D1_11\cll_D1_11_rig05_20160506_PosteriorRightOpto_LG03_20mW_1000ms'};
% file_name = 'D1-07,08,10,11(ArchT)-PsychoCurve-LeftStriatum-1000ms';fn_str = [fn_str_c13(:)]; 
% file_name = 'D1-07,08,10,11(ArchT)-PsychoCurve-RightStriatum-1000ms';fn_str = [fn_str_c14(:)]; 


%%%%%%%%%%%%%%%%%    D2_01-08 (ChR2) PsychometricCurve  %%%%%%%%%%%%%%%%   
% fn_str_c9 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_01_rig05_20160112_PosteriorLeft_Laser08_2mW1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_03_rig05_20160113_PosteriorLeftOpto_2mW1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_05_rig03_20160308_PosteriorLeftOpto_Laser08_2mW_1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_07_rig05_20160318_PosteriorLeftOpto_laser22_2mW_1000ms'};
% fn_str_c9_02 = {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_01_rig05_20160112_PosteriorLeft_Laser08_2mW1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_03_rig05_20160113_PosteriorLeftOpto_2mW1000ms',...
%              'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160308_PosteriorLeftOpto_Laser08_2mW_1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_07_rig05_20160318_PosteriorLeftOpto_laser22_2mW_1000ms'};
% fn_str_c10= {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_02_rig06_20160120_PosteriorLeftOpto_2mW1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_06_rig04_20160308_PosteriorLeftOpto_Laser07_2mW_1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_08_rig06_20160320_PosteriorLeftOpto_Laser03_2mW_1000ms'};
% fn_str_c11= {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_01_rig05_20160113_PosteriorRight_Laser08_2mW1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_03_rig05_20160112_PosteriorRightOpto_2mW1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_05_rig03_20160309_PosteriorRightOpto_Laser08_2mW_1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_07_rig05_20160319_PosteriorRightOpto_laser22_2mW_1000ms'};
% fn_str_c11_2= {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_01_rig05_20160113_PosteriorRight_Laser08_2mW1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_03_rig05_20160112_PosteriorRightOpto_2mW1000ms',...
%              'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160327_PosteriorRightOpto_Laser08_2mW_1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_07_rig05_20160319_PosteriorRightOpto_laser22_2mW_1000ms'};
% fn_str_c12= {'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_02_rig06_20160121_PosteriorRightOpto_Laser07_2mW1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_06_rig04_20160309_PosteriorRightOpto_Laser07_2mW_1000ms',...
%              'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\D2\cll_D2_08_rig06_20160321_PosteriorRightOpto_Laser03_2mW_1000ms'};
% fn_str = [fn_str_c9(:);fn_str_c10(:)]; %% D2_Left
% % fn_str = [fn_str_c11(:);fn_str_c12(:)]; %% D2_Right
% % file_name = 'D2-Left'; fn_str = [fn_str_c9_02(:);fn_str_c10(:)]; 
% file_name = 'D2-Right'; fn_str = [fn_str_c11_2(:);fn_str_c12(:)];

%%%%%%%%%%%%%%%%%    D2_01,02,03,05,07,08 (ChR2) PreSound150 PsychometricCurve  %%%%%%%%%%%%%%%%   
% fn_str_D2_HR_pre_L = {'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160121_PosteriorLeft_Laser08_2mWPre50Sound150_waterDelay300',...
%                       'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160313_PosteriorLeftOpto_Laser08_2mW_Pre50Sound150',...
%                       'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160320_PosteriorLeftOpto_laser22_2mW_Pre50Sound300'};   
%                       %%%%%% 'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160119_PosteriorLeftOpto_2mWPostPre50Sound150ms_waterDelay300'后来照光结果全都反过来了
% fn_str_D2_HL_pre_L = {'E:\behavior_417\cll_D2_02\cll_D2_02_rig06_20160126_PosteriorLeftOpto_Laser07_5mWPre50Sound150',...
%                       'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160322_PosteriorLeftOpto_Laser03_2mW_Pre50Sound150'};
% fn_str_D2_HR_pre_R = {'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160122_PosteriorRight_Laser08_2mWPre50Sound150_waterDelay300',...
%                       'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160314_PosteriorRightOpto_Laser08_2mW_Pre50Sound150',...
%                       'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160321_PosteriorRightOpto_laser22_2mW_Pre50Sound300'};
%                       %%%%%% 'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160120_PosteriorRightOpto_2mWPre50Sound150ms_waterDelay300',...
% fn_str_D2_HL_pre_R = {'E:\behavior_417\cll_D2_02\cll_D2_02_rig06_20160127_PosteriorRightOpto_Laser07_5mWPre50Sound150',...
%                       'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160323_PosteriorRightOpto_Laser03_2mW_Pre50Sound150'};
% file_name = 'D2-01,02,05,07,08(ChR2)-PsychoCurve-LeftStriatum-Pre50Sound150';fn_str = [fn_str_D2_HR_pre_L(:);fn_str_D2_HL_pre_L(:)]; 
% file_name = 'D2-01,05,07(ChR2)-PsychoCurve-LeftStriatum-Pre50Sound150';fn_str = [fn_str_D2_HR_pre_L(:)]; 
% file_name = 'D2-02,08(ChR2)-PsychoCurve-LeftStriatum-Pre50Sound150';fn_str = [fn_str_D2_HL_pre_L(:)];
% file_name = 'D2-01,02,05,07,08(ChR2)-PsychoCurve-RightStriatum-Pre50Sound150';fn_str = [fn_str_D2_HR_pre_R(:);fn_str_D2_HL_pre_R(:)]; 
% file_name = 'D2-01,05,07(ChR2)-PsychoCurve-RightStriatum-Pre50Sound150';fn_str = [fn_str_D2_HR_pre_R(:)]; 
% file_name = 'D2-02,08(ChR2)-PsychoCurve-RightStriatum-Pre50Sound150';fn_str = [fn_str_D2_HL_pre_R(:)];


%%%%%%%%%%%%%%%%%    D2_11-16 (ChR2) PsychometricCurve  %%%%%%%%%%%%%%%%   
% fn_str_D2_HR_1000ms_L = {'E:\behavior_417\cll_D2_11\cll_D2_11_rig03_20161109_probe_PosteriorLeftOpto_LB03_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_12\cll_D2_12_Rig04_20161203_PosteriorLeftOpto_LB08_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_13\cll_D2_13_rig03_20161126_PosteriorLeftOpto_LB03_2mW1000ms',...          %%cll_D2_13_rig03_20161129_PosteriorLeftOpto_LB03_4mW1000ms
%                          'E:\behavior_417\cll_D2_14\cll_D2_14_Rig04_20161125_PosteriorLeftOpto_LB08_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_15\cll_D2_15_rig03_20161125_PosteriorLeftOpto_LB03_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_16\cll_D2_16_Rig04_20161203_PosteriorLeftOpto_LB08_2mW1000ms'};   
% file_name = 'D2-11-16(ChR2)-PsychoCurve-LeftStriatum-1000ms';fn_str = [fn_str_D2_HR_1000ms_L(:)]; 
% fn_str_D2_HR_1000ms_R = {'E:\behavior_417\cll_D2_11\cll_D2_11_rig03_20161108_probe_PosteriorRightOpto_LB03_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_12\cll_D2_12_Rig04_20161204_PosteriorRightOpto_LB08_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_13\cll_D2_13_rig03_20161128_PosteriorRightOpto_LB03_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_14\cll_D2_14_Rig04_20161126_PosteriorRightOpto_LB08_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_15\cll_D2_15_rig03_20161126_PosteriorRightOpto_LB03_2mW1000ms',...
%                          'E:\behavior_417\cll_D2_16\cll_D2_16_Rig04_20161204_PosteriorRightOpto_LB08_2mW1000ms'};   
% file_name = 'D2-11-16(ChR2)-PsychoCurve-RightStriatum-1000ms';fn_str = [fn_str_D2_HR_1000ms_R(:)]; 


%%%%%%%    D2_11-16 (ChR2)  150ms PsychometricCurve  %%%%%%%%%
% fn_str = {'E:\behavior_417\cll_D2_13\cll_D2_13_rig03_20161130_PosteriorRightOpto_LB03_2mW150ms',...
%                'E:\behavior_417\cll_D2_13\cll_D2_13_rig03_20161202_PosteriorRightOpto_LB03_2mW150ms',...
%                'E:\behavior_417\cll_D2_14\cll_D2_14_Rig04_20161129_PosteriorRightOpto_LB08_2mW150ms',...
%                'E:\behavior_417\cll_D2_14\cll_D2_14_Rig04_20161201_PosteriorRightOpto_LB08_2mW150ms',...
%                'E:\behavior_417\cll_D2_14\cll_D2_14_Rig04_20161207_PosteriorRightOpto_LB08_2mW150ms',...
%                'E:\behavior_417\cll_D2_16\cll_D2_16_Rig04_20161211_PosteriorRightOpto_LB08_2mW150ms',...
%                'E:\behavior_417\cll_D2_16\cll_D2_16_Rig04_20161213_PosteriorRightOpto_LB08_2mW150ms'};
% file_name = 'D2-13,14,16-LickRate-RightStriatum-Sound150ms';fn_str = [file_str_c1(:)]; 



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   D2 After Answer %%%%%%%%%%%%%%%%%
% fn_str_01 = { 'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160127_PosteriorLeft_Laser08_2mWPostAnswer_waterDelay300',...
%               'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160125_PosteriorLeftOpto_2mWPostAnswer700ms_waterDelay300',...
%               'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160324_PosteriorLeftOpto_Laser08_2mW_PostAnswer700',...
%               'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160324_PosteriorLeftOpto_laser22_2mW_PostAnswer700'};
% fn_str_02 = { 'E:\behavior_417\cll_D2_02\cll_D2_02_rig06_20160129_PosteriorLeftOpto_Laser07_5mWPostAnswer700',...
%               'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160324_PosteriorLeftOpto_Laser03_2mW_PostAnswer700'};        
% file_name = 'D2-01,02,03,05,07,08-PsychoCurve-LeftStriatum-AfterAnswer';fn_str = [fn_str_01(:);fn_str_02(:)]; 
% file_name = 'D2-01,03,05,07-PsychoCurve-LeftStriatum-AfterAnswer';fn_str = [fn_str_01(:)]; 
% file_name = 'D2-02,08-PsychoCurve-LeftStriatum-AfterAnswer';fn_str = [fn_str_02(:)]; 

% fn_str_03 = { 'E:\behavior_417\cll_D2_01\cll_D2_01_rig05_20160128_PosteriorRight_Laser08_2mWPostAnswer_waterDelay300',...
%               'E:\behavior_417\cll_D2_03\cll_D2_03_rig05_20160124_PosteriorRightOpto_2mWPostAnswer700ms_waterDelay300',...
%               'E:\behavior_417\cll_D2_05\cll_D2_05_rig03_20160319_PosteriorRightOpto_Laser08_2mW_PostAnswer700',...
%               'E:\behavior_417\cll_D2_07\cll_D2_07_rig05_20160325_PosteriorRightOpto_laser22_2mW_PostAnswer700'}; 
% fn_str_04 = { 'E:\behavior_417\cll_D2_02\cll_D2_02_rig06_20160128_PosteriorRightOpto_Laser07_5mWPostAnswer700',...
%               'E:\behavior_417\cll_D2_08\cll_D2_08_rig06_20160325_PosteriorRightOpto_Laser03_2mW_PostAnswer700'}; 
% file_name = 'D2-01,02,03,05,07,08-PsychoCurve-RightStriatum-AfterAnswer';fn_str = [fn_str_03(:);fn_str_04(:)]; 
% file_name = 'D2-01,03,05,07-PsychoCurve-RightStriatum-AfterAnswer';fn_str = [fn_str_03(:)]; 
% file_name = 'D2-02,08-PsychoCurve-RightStriatum-AfterAnswer';fn_str = [fn_str_04(:)]; 

%%%%%%%%%%%%%%%%%%%%%   CPU psychometric Curve,After Answer     %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fn_str_05 = { 'E:\behavior_417\cll_CPU17\cll_CPU17_rig04_20160125_PosteriorLeftOpto_Laser18_20mWPostAnswer700',...
%               'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160125_PosteriorLeftOpto_Laser08_20mWPostAnswer700'};
% fn_str_06 = { 'E:\behavior_417\cll_CPU20\cll_CPU20_rig03_20160125_PosteriorLeftOpto_Laser18_20mWPostAnswer700',...
%               'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160126_PosteriorLeftOpto_Laser18_20mW_PostAnswer700ms'}; 
% file_name = 'CPU17,20,21,22-PsychCurve-LeftStriatum-AfterAnswer';fn_str = {fn_str_05{:},fn_str_06{:}};
% file_name = 'CPU17,21-PsychCurve-LeftStriatum-AfterAnswer';fn_str = {fn_str_05{:}};
% file_name = 'CPU20,22-PsychCurve-LeftStriatum-AfterAnswer';fn_str = {fn_str_06{:}};

% fn_str_07 = { 'E:\behavior_417\cll_CPU17\cll_CPU17_rig04_20160124_PosteriorRightOpto_Laser18_20mWPostAnswer700',...
%               'E:\behavior_417\cll_CPU19\cll_CPU19_rig04_20160126_PosteriorRightOpto_Laser18_20mWPostAnswer700_waterDelay300',...
%               'E:\behavior_417\cll_CPU21\cll_CPU21_rig04_20160126_PosteriorRightOpto_Laser08_20mWPostAnswer700_WaterDelay300'};
% fn_str_08 = { 'E:\behavior_417\cll_CPU20\cll_CPU20_rig03_20160126_PosteriorRightOpto_Laser18_20mWPostAnswer700',...
%               'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160125_PosteriorRightOpto_Laser18_20mW_PostAnswer700ms'};
% file_name = 'CPU17,19,20,21,22-PsychCurve-RightStriatum-AfterAnswer';fn_str = {fn_str_07{:},fn_str_08{:}};
% file_name = 'CPU17,19,21-PsychCurve-RightStriatum-AfterAnswer';fn_str = {fn_str_07{:}};
% file_name = 'CPU20,22-PsychCurve-RightStriatum-AfterAnswer';fn_str = {fn_str_08{:}};


%%% for Zhang Zhaoran
% fn_str_07 = { 'E:\behavior_417\FromZZR\R43\ZZR_R43_rig11_20161214',...
%               'E:\behavior_417\FromZZR\R43\ZZR_R43_rig11_20161216',...
%               'E:\behavior_417\FromZZR\R43\ZZR_R43_rig11_20161220'};
% fn_str_08 = { 'E:\behavior_417\cll_CPU20\cll_CPU20_rig03_20160126_PosteriorRightOpto_Laser18_20mWPostAnswer700',...
%               'E:\behavior_417\cll_CPU22\cll_CPU22_rig03_20160125_PosteriorRightOpto_Laser18_20mW_PostAnswer700ms'};
% file_name = 'CPU17,19,20,21,22-PsychCurve-RightStriatum-AfterAnswer';fn_str = {fn_str_07{:},fn_str_08{:}};
% file_name = 'R43-PsychCurve-RightStriatum-1000ms';fn_str = {fn_str_07{:}};
% file_name = 'CPU20,22-PsychCurve-RightStriatum-AfterAnswer';fn_str = {fn_str_08{:}};
%%  Correct Rate Change (NoOpto-Opto)

% CRs_NoOpto =[];
% CRs_Opto = [];
% file_num = length (fn_str);
% for n = 1:length (fn_str)
%     load (fn_str{n});
%     [CRs_NoOpto(n),CRs_Opto(n)] = Function_Behavior_CorrectRate(SessionResults);
% end

clc;clear;
file_name =strrep('D1NphR1000ms_Right','_','-') ;
files = dir('*.mat');
file_num = length (files);
for n = 1:file_num-1
    load (files(n).name);
    [CRs_NoOpto(n),CRs_Opto(n),Num_trial(n),T_eff(n),CR(n,:)] = Function_Behavior_CorrectRate(SessionResults);
    % [MR_BeforeEff_NoOpto(n),MR_BeforeEff_Opto(n),MR_AfterEff_NoOpto(n),MR_AfterEff_Opto(n),Num_trial(n),T_eff(n),MR_AfterEff_LR(n,:), CR_AfterEff_LR(n,:) ] = Function_Behavior_ChoiceAfterMiss(SessionResults); 

    [Num_trial(n),T_eff(n),MR_BeforeAfterEff(n,:),MR_BeforeEff_LR(n,:), MR_AfterEff_LR(n,:),CR_BeforeEff_LR(n,:), CR_AfterEff_LR(n,:)] = Function_Behavior_ChoiceAfterMiss(SessionResults);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure('Color',[1 1 1]);
plot([CRs_NoOpto;CRs_Opto],'linewidth',2);
xlim([0,3]);
title(file_name,'fontsize',12);
% color_string = hsv(length (fn_str)*2);
% for i=1:3 %length (fn_str)
% %     line([1,2],[CRs_NoOpto(i),CRs_Opto(i)],'color',color_string(4,:),'linewidth',3);
%     line([1,2],[CRs_NoOpto(i),CRs_Opto(i)],'color',[0,0,1],'linewidth',3);
%     hold on;
% end
[h1,p1] = ttest(CRs_NoOpto,CRs_Opto); text(1.8,0.95,['p= ' num2str(p1)],'fontweight','bold','fontsize',12);
set(gca,'ylim',[0.2,1]);a={' ','Control','Opto',' '}; set(gca,'xlim',[0.5,2.5]); set(gca,'xtick',0:1:3); set(gca,'xticklabel',a,'fontsize',18,'fontweight','bold'); 
ylabel('Correct Rate','fontsize',18,'fontweight','bold');title(file_name,'fontsize',10); 
set(gcf,'position',[2076  429  325    420]); box off;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Miss Rate %%%%%%%%%%%%%%%%%%%%%%%
% display (['Num_trial  ' num2str(Num_trial(:)')]);
% display (['T_eff      ' num2str(T_eff(:)')]);
f_EffNum = figure('Color',[1 1 1]);
plot(Num_trial,'ko');
hold on;plot(T_eff,'ro');
legend('Num-trial','T-eff');title(file_name,'fontsize',12,'fontweight','bold');
set(gcf,'position',[ 14    85   560   420]);

f_MR_BeforeAfter= figure('Color',[1 1 1]);
subplot(1,2,1);
plot([MR_BeforeAfterEff(:,1)';MR_BeforeAfterEff(:,2)'],'linewidth',2);
a={' ','Control','Opto',' '};set(gca,'xlim',[0.5,2.5]);set(gca,'xtick',0:1:3);set(gca,'xticklabel',a,'fontsize',18,'fontweight','bold');ylabel('Miss Rate','fontsize',14,'fontweight','bold');
title('Before Eff','fontsize',12,'fontweight','bold');
[h4,p4] = ttest(MR_BeforeAfterEff(:,1),MR_BeforeAfterEff(:,2));
text(1.8,max([MR_BeforeAfterEff(:,1);MR_BeforeAfterEff(:,2)])-0.01,['p= ' num2str(p4)],'fontweight','bold','fontsize',12);
subplot(1,2,2);
plot([MR_BeforeAfterEff(:,3)';MR_BeforeAfterEff(:,4)'],'linewidth',2);
a={' ','Control','Opto',' '};set(gca,'xlim',[0.5,2.5]);set(gca,'xtick',0:1:3);set(gca,'xticklabel',a,'fontsize',18,'fontweight','bold');
title('After Eff','fontsize',12,'fontweight','bold');
suptitle([file_name '   MissRate' ]);
[h5,p5] = ttest(MR_BeforeAfterEff(:,3),MR_BeforeAfterEff(:,4));
text(1.8,0.95,['p= ' num2str(p5)],'fontweight','bold','fontsize',12);
set(gcf,'position',[20   671   560   420]);

%%%%%%%%%%%%  Miss Rate  %%%%%%%%%%%%%
f_MR_LR = figure('Color',[1 1 1]);
subplot(1,5,1);
plot([MR_BeforeEff_LR(:,1)';MR_BeforeEff_LR(:,2)'],'linewidth',3);
[h51,p51] = ttest(MR_BeforeEff_LR(:,1),MR_BeforeEff_LR(:,2)); text(1.8,0.25,['p= ' num2str(p51)],'fontweight','bold','fontsize',12);
set(gca,'xlim',[0,3]);a={' ','Control','Opto',' '};set(gca,'xlim',[0.5,2.5]);set(gca,'ylim',[-0.1,0.5]);set(gca,'xtick',0:1:3);set(gca,'xticklabel',a,'fontsize',15,'fontweight','bold');
title('BeforeEff-LeftSound','fontsize',15); ylabel('Miss Rate'); box off;
subplot(1,5,2);
plot([MR_BeforeEff_LR(:,3)';MR_BeforeEff_LR(:,4)'],'linewidth',3);
[h52,p52] = ttest(MR_BeforeEff_LR(:,3),MR_BeforeEff_LR(:,4)); text(1.8,0.25,['p= ' num2str(p52)],'fontweight','bold','fontsize',12);
set(gca,'xlim',[0,3]);a={' ','Control','Opto',' '};set(gca,'xlim',[0.5,2.5]);set(gca,'ylim',[-0.1,0.5]);set(gca,'xtick',0:1:3);set(gca,'xticklabel',a,'fontsize',15,'fontweight','bold');
title('BeforeEff-RightSound','fontsize',15); box off;
subplot(1,5,4);
plot([MR_AfterEff_LR(:,1)';MR_AfterEff_LR(:,2)'],'linewidth',3);
[h54,p54] = ttest(MR_AfterEff_LR(:,1),MR_AfterEff_LR(:,2)); text(1.8,0.95,['p= ' num2str(p54)],'fontweight','bold','fontsize',12);
set(gca,'xlim',[0,3]);a={' ','Control','Opto',' '};set(gca,'xlim',[0.5,2.5]);set(gca,'ylim',[-0.1,1.1]);set(gca,'xtick',0:1:3);set(gca,'xticklabel',a,'fontsize',15,'fontweight','bold');
title('AfterEff-LeftSound','fontsize',15);ylabel('Miss Rate'); box off;
subplot(1,5,5);
plot([MR_AfterEff_LR(:,3)';MR_AfterEff_LR(:,4)'],'linewidth',3);
[h55,p55] = ttest(MR_AfterEff_LR(:,3),MR_AfterEff_LR(:,4)); text(1.8,0.95,['p= ' num2str(p55)],'fontweight','bold','fontsize',12);
set(gca,'xlim',[0,3]);a={' ','Control','Opto',' '};set(gca,'xlim',[0.5,2.5]);set(gca,'ylim',[-0.1,1.1]);set(gca,'xtick',0:1:3);set(gca,'xticklabel',a,'fontsize',15,'fontweight','bold');
title('AfterEff-RightSound','fontsize',15); box off;
set(gcf,'position',[ 600          610        1300        500]);
suptitle([file_name '--MissRate' ]);

%%%%%%%%%%%%  Correct Rate  %%%%%%%%%%%%%
f_CR_LR = figure('Color',[1 1 1]);
subplot(1,5,1);
plot([CR_BeforeEff_LR(:,1)';CR_BeforeEff_LR(:,2)'],'linewidth',3);
[h51,p51] = ttest(CR_BeforeEff_LR(:,1),CR_BeforeEff_LR(:,2)); text(1.8,0.95,['p= ' num2str(p51)],'fontweight','bold','fontsize',12);
set(gca,'xlim',[0,3]);a={' ','Control','Opto',' '};set(gca,'xlim',[0.5,2.5]);set(gca,'ylim',[-0.1,1.1]);set(gca,'xtick',0:1:3);set(gca,'xticklabel',a,'fontsize',15,'fontweight','bold');
title('BeforeEff-LeftSound','fontsize',15); ylabel('Correct Rate'); box off;
subplot(1,5,2);
plot([CR_BeforeEff_LR(:,3)';CR_BeforeEff_LR(:,4)'],'linewidth',3);
[h52,p52] = ttest(CR_BeforeEff_LR(:,3),CR_BeforeEff_LR(:,4)); text(1.8,0.95,['p= ' num2str(p52)],'fontweight','bold','fontsize',12);
set(gca,'xlim',[0,3]);a={' ','Control','Opto',' '};set(gca,'xlim',[0.5,2.5]);set(gca,'ylim',[-0.1,1.1]);set(gca,'xtick',0:1:3);set(gca,'xticklabel',a,'fontsize',15,'fontweight','bold');
title('BeforeEff-RightSound','fontsize',15);box off;
subplot(1,5,4);
plot([CR_AfterEff_LR(:,1)';CR_AfterEff_LR(:,2)'],'linewidth',3);
[h54,p54] = ttest(CR_AfterEff_LR(:,1),CR_AfterEff_LR(:,2)); text(1.8,0.95,['p= ' num2str(p54)],'fontweight','bold','fontsize',12);
set(gca,'xlim',[0,3]);a={' ','Control','Opto',' '};set(gca,'xlim',[0.5,2.5]);set(gca,'ylim',[-0.10,1.1]);set(gca,'xtick',0:1:3);set(gca,'xticklabel',a,'fontsize',15,'fontweight','bold');
title('AfterEff-LeftSound','fontsize',15);ylabel('Correct Rate');box off;
subplot(1,5,5);
plot([CR_AfterEff_LR(:,3)';CR_AfterEff_LR(:,4)'],'linewidth',3);
[h55,p55] = ttest(CR_AfterEff_LR(:,3),CR_AfterEff_LR(:,4)); text(1.8,0.95,['p= ' num2str(p55)],'fontweight','bold','fontsize',12);
set(gca,'xlim',[0,3]);a={' ','Control','Opto',' '};set(gca,'xlim',[0.5,2.5]);set(gca,'ylim',[-0.1,1.1]);set(gca,'xtick',0:1:3);set(gca,'xticklabel',a,'fontsize',15,'fontweight','bold');
title('AfterEff-RightSound','fontsize',15);box off;
set(gcf,'position',[ 600          40        1300        500]);
suptitle([file_name '--CorrectRate' ]);

%%%%%%%%   Correct Rate (seperate training and probe)  %%%%%%%%%%%%
figure;
plot([1,2],[CR(:,1:2)], [3,4],[CR(:,3:4)],[5,6],[CR(:,5:6)],[7,8],[CR(:,7:8)],'linewidth',2); 
ylim([0.2,1.1]);
set(gca,'xticklabel',{'L-tr-NoOpto','L-tr-Opto','L-pro-NoOpto','L-pro-Opto','R-pro-NoOpto','R-pro-Opto','R-tr-NoOpto','R-tr-Opto'  },'fontsize',12,'fontweight','bold');
set(gcf,'position',[3   579   907   537]);
title(file_name,'fontsize',15 );







% exportToPPTX('new','Dimensions',[10 7.5], ...
%     'Title','Example Presentation', ...
%     'Author','MatLab', ...
%     'Subject','Automatically generated PPTX file', ...
%     'Comments','This file has been automatically generated by exportToPPTX');
% % exportToPPTX('open',file_name);
% exportToPPTX('addslide','Position',1);
% exportToPPTX('addpicture',f_EffNum,'Position',[0,4.5,3,2.5]  );
% exportToPPTX('addpicture',f_MR_BeforeAfter,'Position',[0,1.5,3,2.5]  );
% exportToPPTX('addpicture',f_MR_LR,'Position',[3,1.5,7,2.5]  );
% exportToPPTX('addpicture',f_CR_LR,'Position',[3,4.5,7,2.5]  );
% newFile = exportToPPTX('saveandclose',file_name);


[T_eff' (Num_trial-T_eff)']






%%
clc;clear;
files = dir('*.mat');
file_num = length (files);

for n =1:file_num
    
%     load (fn_str{n});
    load (files(n).name);
    
    results_opto = [];
    results_NoOpto = [];
    HighFreqRight = [];
    [results_opto, results_NoOpto, freq_uniq, HighFreqRight,ChooseRightFrac] = Function_Behavior_getOptoResults (SessionResults);
    freq_oct = log2(freq_uniq./min(freq_uniq));
    %%%% for psychometric curve
    RightProba_opto_withoutMiss(:,n) = results_opto(:,4);
    RightProba_NoOpto_withoutMiss(:,n) = results_NoOpto(:,4);
    %%%% for Index 01  and Index 03
    HighFreqChooseRight(n) = HighFreqRight;
    if HighFreqRight == 1
        CategIndex1_Opto(n) = mean(results_opto(5:8,4))- mean(results_opto(1:4,4));             %% for Index 02, RightTrial_ChooseRight - LeftTrial_ChooseRight
        CategIndex1_NoOpto(n) = mean(results_NoOpto(5:8,4))- mean(results_NoOpto(1:4,4));
        
        CategIndex2_Opto(n) = mean(results_opto(5:8,4))- mean(   results_opto(1:4,7)./  (results_opto(1:4,2)-results_opto(1:4,6))  );   %% for Index03, RightCorrectRate - LeftCorrectRate
        CategIndex2_NoOpto(n) = mean(results_NoOpto(5:8,4))- mean(   results_NoOpto(1:4,7)./  (results_NoOpto(1:4,2)-results_NoOpto(1:4,6))  );
    elseif HighFreqRight == 0 
        CategIndex1_Opto(n) = mean(results_opto(1:4,4))- mean(results_opto(5:8,4));
        CategIndex1_NoOpto(n) = mean(results_NoOpto(1:4,4))- mean(results_NoOpto(5:8,4));
        
        CategIndex2_Opto(n) = mean(results_opto(1:4,4))- mean(   results_opto(5:8,7)./  (results_opto(5:8,2)-results_opto(5:8,6))  );
        CategIndex2_NoOpto(n) = mean(results_NoOpto(1:4,4))- mean(   results_NoOpto(5:8,7)./  (results_NoOpto(5:8,2)-results_NoOpto(5:8,6))  ); 
    end
    %%%% for Index 02
    RightProba_allFreq_opto_withoutMiss(n) = sum(results_opto(:,3))/(sum(results_opto(:,2))-sum(results_opto(:,6)));
    RightProba_allFreq_NoOpto_withoutMiss(n) = sum(results_NoOpto(:,3))/(sum(results_NoOpto(:,2))-sum(results_NoOpto(:,6)));
    %%%% for Index 04
    RightProba_NoOpto(n) = mean(results_NoOpto(:,4));
    RightProba_Opto(n) = mean(results_opto(:,4));

    
%     RightFrac(n).type = file_name;
%     RightFrac(n).EachFreq_NoOpto =  results_NoOpto(:,4);
%     RightFrac(n).EachFreq_Opto   =  results_opto(:,4);
%     RightFrac(n).NoOpto       =  ChooseRightFrac(1);
%     RightFrac(n).Opto         =  ChooseRightFrac(2);
    
%     a=pwd;
%     RightFrac{n,1} = a(end-21:end-7);
%     RightFrac{n,2} = files(n).name(1:9);
%     RightFrac{n,3} = results_NoOpto(:,4);
%     RightFrac{n,4} = results_opto(:,4);
%     RightFrac{n,5} = ChooseRightFrac(1);
%     RightFrac{n,6} = ChooseRightFrac(2);

end


% file_name =strrep(a(end-21:end-7),'_','-') ;
% save 'E:\behavior_417\BehaviorData_UsedToAnalysis\Striatum\RightFrac_NoOpto_Opto(D2_Right).mat' RightFrac;


%% psychometric curve
figure1= figure;
color_string = hsv(file_num);
for plot_num=1:file_num
%     color_num = fn_str_c1.*0.2;
    plot(freq_oct,RightProba_opto_withoutMiss(:,plot_num),'o','MarkerEdgeColor','w','MarkerFaceColor',color_string(plot_num,:));
    hold on;
    [Qpre1,p1]=fit_logistic(freq_oct,RightProba_opto_withoutMiss(:,plot_num)');
    psyc_fun1 = @(t)(p1(2)./(1 + exp(-p1(3).*(t-p1(1)))));
    t1=freq_oct(1):0.0001:freq_oct(length(freq_oct)); 
    plot(t1,psyc_fun1(t1),'linewidth',3,'color',color_string(plot_num,:));
    % logFitPara = [{Qpre1;freq_oct;p1;psyc_fun1;t1},{'Qpre1';'freq_oct';'p1';'psyc_fun1';'t1'}];
    hold on;
    
    plot(freq_oct,RightProba_NoOpto_withoutMiss(:,plot_num),'o','color',color_string(plot_num,:));
    hold on;
    [Qpre1,p1]=fit_logistic(freq_oct,RightProba_NoOpto_withoutMiss(:,plot_num)');
    psyc_fun1 = @(t)(p1(2)./(1 + exp(-p1(3).*(t-p1(1)))));
    t1=freq_oct(1):0.0001:freq_oct(length(freq_oct)); 
    plot(t1,psyc_fun1(t1),'--','linewidth',3,'color',color_string(plot_num,:));
    hold on; 
end
set(gca,'ylim',[0 1.1]);
title(file_name,'fontsize',13,'fontweight','bold');
set(gca,'xtick',0:2/7:2);
set(gca,'xticklabel',freq_uniq,'fontweight','bold','fontsize',10);
xlabel('Frequency (Hz)','fontweight','bold','fontsize',12);
ylabel('Propotion reported high','fontweight','bold','fontsize',12);
%%
figure1= figure;
color_string = hsv(file_num);
for plot_num=1:file_num
%     color_num = fn_str_c1.*0.2;
    plot(freq_oct,RightProba_opto_withoutMiss(:,plot_num),'o','MarkerEdgeColor','w','MarkerFaceColor','b');
    hold on;
    [Qpre1,p1]=fit_logistic(freq_oct,RightProba_opto_withoutMiss(:,plot_num)');
    psyc_fun1 = @(t)(p1(2)./(1 + exp(-p1(3).*(t-p1(1)))));
    t1=freq_oct(1):0.0001:freq_oct(length(freq_oct)); 
    plot(t1,psyc_fun1(t1),'linewidth',3,'color','b');
    % logFitPara = [{Qpre1;freq_oct;p1;psyc_fun1;t1},{'Qpre1';'freq_oct';'p1';'psyc_fun1';'t1'}];
    hold on;
    
    plot(freq_oct,RightProba_NoOpto_withoutMiss(:,plot_num),'o','color','k');
    hold on;
    [Qpre1,p1]=fit_logistic(freq_oct,RightProba_NoOpto_withoutMiss(:,plot_num)');
    psyc_fun1 = @(t)(p1(2)./(1 + exp(-p1(3).*(t-p1(1)))));
    t1=freq_oct(1):0.0001:freq_oct(length(freq_oct)); 
    plot(t1,psyc_fun1(t1),'--','linewidth',3,'color','k');
    hold on;
end
set(gca,'ylim',[0 1.1]);
title(file_name,'fontsize',13,'fontweight','bold');
set(gca,'xtick',0:2/7:2);
set(gca,'xticklabel',freq_uniq,'fontweight','bold','fontsize',10);
xlabel('Frequency (Hz)','fontweight','bold','fontsize',13);
ylabel('Propotion reported high','fontweight','bold','fontsize',13);
%% ErrorBar
figure1= figure;
errorbar(freq_oct,mean(RightProba_opto_withoutMiss,2),std(RightProba_opto_withoutMiss,0,2),'b.','markersize',20);
hold on;
errorbar(freq_oct,mean(RightProba_NoOpto_withoutMiss,2),std(RightProba_NoOpto_withoutMiss,0,2),'k.','markersize',20);
hold on;

[Qpre1,p1]=fit_logistic(freq_oct,(mean(RightProba_opto_withoutMiss,2))');
psyc_fun1 = @(t)(p1(2)./(1 + exp(-p1(3).*(t-p1(1)))));
t1=freq_oct(1):0.0001:freq_oct(length(freq_oct)); 
plot(t1,psyc_fun1(t1),'linewidth',2,'color','b');
logFitPara = [{Qpre1;freq_oct;p1;psyc_fun1;t1},{'Qpre1';'freq_oct';'p1';'psyc_fun1';'t1'}];
hold on;

[Qpre2,p2]=fit_logistic(freq_oct,(mean(RightProba_NoOpto_withoutMiss,2))');
psyc_fun2= @(t)(p2(2)./(1 + exp(-p2(3).*(t-p2(1)))));
t2=freq_oct(1):0.0001:freq_oct(length(freq_oct)); 
plot(t2,psyc_fun2(t2), 'linewidth',2,'color','k');
logFitPara = [{Qpre2;freq_oct;p2;psyc_fun2;t2},{'Qpre1';'freq_oct';'p1';'psyc_fun1';'t1'}];
% legend('NoOpto','location','southeast');

% titleName = fn_str{1};
% title_name = strrep( titleName,'_','-');
% title(title_name(27:end),'fontsize',12,'fontweight','bold');
set(gca,'xlim',[min(freq_oct),max(freq_oct)]);
set(gca,'ylim',[0 1.1]);
title(file_name,'fontsize',12,'fontweight','bold');
set(gca,'xtick',0:2/7:2);
set(gca,'xticklabel',freq_uniq,'fontweight','bold','fontsize',10);
xlabel('Frequency (Hz)','fontweight','bold','fontsize',12);
ylabel('Propotion reported high','fontweight','bold','fontsize',12);

% [h1,p1]= ttest2(results_NoOpto(:,4), results_opto(:,4));
% text(1.6,0.3,['p=' num2str(p1)],'fontsize',12,'fontweight','bold');

% savename=strcat( filename, '-Plot-NoMiss' , '.png');
% fileName = strrep(savename,'_','-') ;
% title(fileName, 'fontsize',11,'fontweight','bold' );
% saveas(figure1,savename);

%% several indexes
figure;
plot([CategIndex1_NoOpto;CategIndex1_Opto],'color','r'); %% Index01 (categorization Index)
hold on;
plot([RightProba_allFreq_NoOpto_withoutMiss;RightProba_allFreq_opto_withoutMiss],'color','g'); %% Index02 (choose_RightProba_allFreq)
hold on;
plot([CategIndex2_NoOpto;CategIndex2_Opto],'color','b'); %% Index03 (RightCorrectRate - LeftCorrectRate)
hold on;
plot([RightProba_NoOpto;RightProba_Opto],'color','k'); %% Index 04 (mean of choose Right prob at different frequencies)
set(gca,'xlim',[0.5, 2.5]);
% set(gca,'ylim',[0, 1]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure;
plot(CategIndex1_NoOpto,CategIndex1_Opto,'ro'); %% Index01 (categorization Index)
hold on;
plot(RightProba_allFreq_NoOpto_withoutMiss,RightProba_allFreq_opto_withoutMiss,'go'); % Index02 (choose_RightProba_allFreq)
hold on;
plot(CategIndex2_NoOpto,CategIndex2_Opto,'bo'); %% Index03 (RightCorrectRate - LeftCorrectRate)
hold on;
plot(RightProba_NoOpto,RightProba_Opto,'ko'); % Index 04 (mean of choose Right prob at different frequencies)
hold on;
line([0,1],[0,1],'color','r');
line([0.25,0.75],[0.5,0.5],'color','g');
line([-0.5,0.5],[0,0],'color','b');
set(gca,'xlim',[-1, 1]);
set(gca,'ylim',[-1, 1]);

%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
color_string = hsv(file_num);
figure;
for plot_num = 1:file_num  %%% each color represent one animal
    plot(RightProba_NoOpto_withoutMiss(:,plot_num), RightProba_opto_withoutMiss(:,plot_num),'o','MarkerFaceColor',color_string(plot_num,:)); 
    hold on;
end
line([0,1],[0,1],'color','k');
xlabel(gca,'ChooseRightProbobility(NoOpto)','fontsize',12);
ylabel(gca,'ChooseRightProbability(Opto)','fontsize',12);
title('each color represent one animal');
box off;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
color_string = hsv(8);
figure;
for plot_num = 1:8               %%% each color represent one frequency
    plot(RightProba_NoOpto_withoutMiss(plot_num,:), RightProba_opto_withoutMiss(plot_num,:),'o','MarkerFaceColor',color_string(plot_num,:)); 
    hold on;
end
line([0,1],[0,1],'color','k');
xlabel(gca,'ChooseRightProbobility（NoOpto）','fontsize',12);
ylabel(gca,'ChooseRightProbability（Opto）','fontsize',12);
title('each color represent one frequency');
box off;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;
for plot_num = 1:file_num  %%% all points with same color
%     plot(RightProba_NoOpto_withoutMiss(:,plot_num), RightProba_opto_withoutMiss(:,plot_num),'ko','Markersize',10,'MarkerFaceColor','none','linewidth',2); 
    plot(RightProba_NoOpto_withoutMiss(:,plot_num), RightProba_opto_withoutMiss(:,plot_num),'o','markeredgecolor','r','Markersize',10,'MarkerFaceColor','none','linewidth',1); 
    hold on;
end
line([0,1],[0,1],'color','k');
xlabel(gca,'Rightward Choice (Control)','fontsize',18,'fontweight','bold');
ylabel(gca,'RightwardChoice (Opto)','fontsize',18,'fontweight','bold');
hold on;
box off;
set(gca,'ylim',[-0.1,1.1]);
set(gca,'xlim',[-0.1,1.1]);
set(gca,'xtick',[0:0.2:1],'fontsize',18,'fontweight','bold');
set(gca,'ytick',[0:0.2:1],'fontsize',18,'fontweight','bold');
[h,p] =ttest(RightProba_NoOpto_withoutMiss(:),RightProba_opto_withoutMiss(:));
text(0.7,0.2,['n= ' num2str(size(RightProba_NoOpto_withoutMiss,2))],'fontsize',15);
text(0.7,0.1,['p= ' num2str(p)],'fontsize',15);
title(file_name,'fontsize',18,'fontweight','bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure;
for plot_num = 1:file_num  %%% all points with same color
%     plot(RightProba_NoOpto_withoutMiss(:,plot_num), RightProba_opto_withoutMiss(:,plot_num),'ko','Markersize',10,'MarkerFaceColor','none','linewidth',2); 
    plot(RightProba_NoOpto_withoutMiss(:,plot_num), RightProba_opto_withoutMiss(:,plot_num),'o','markeredgecolor','w','Markersize',12,'MarkerFaceColor','b','linewidth',0.5); 
    hold on;
end
line([0,1],[0,1],'color','k');
xlabel(gca,'Rightward Choice (Control)','fontsize',18,'fontweight','bold');
ylabel(gca,'RightwardChoice (Opto)','fontsize',18,'fontweight','bold');
hold on;
box off;
set(gca,'ylim',[-0.1,1.1]);
set(gca,'xlim',[-0.1,1.1]);
set(gca,'xtick',[0:0.2:1],'fontsize',18,'fontweight','bold');
set(gca,'ytick',[0:0.2:1],'fontsize',18,'fontweight','bold');
[h,p] =ttest(RightProba_NoOpto_withoutMiss(:),RightProba_opto_withoutMiss(:));
text(0.7,0.2,['n= ' num2str(size(RightProba_NoOpto_withoutMiss,2))],'fontsize',15);
text(0.7,0.1,['p= ' num2str(p)],'fontsize',15);
% text(0.1,0.9,['n= ' num2str(size(RightProba_NoOpto_withoutMiss,2))],'fontsize',15);
% text(0.1,0.8,['p= ' num2str(p)],'fontsize',15);
title(file_name,'fontsize',12,'fontweight','bold');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure;
a = scatterhist(RightProba_NoOpto_withoutMiss(:),RightProba_opto_withoutMiss(:),'Nbins',10,'location','southwest','direction','out','Marker','o','color','k');
box off;
set(gca,'ylim',[-0.1,1.1]);
set(gca,'xlim',[-0.1,1.1]);
set(gca,'xtick',[0:0.2:1],'fontsize',18,'fontweight','bold');
set(gca,'ytick',[0:0.2:1],'fontsize',18,'fontweight','bold');
[h,p] =ttest(RightProba_NoOpto_withoutMiss(:),RightProba_opto_withoutMiss(:));
% text(0.7,0.2,['n= ' num2str(size(RightProba_NoOpto_withoutMiss,2))],'fontsize',15);
% text(0.7,0.1,['p= ' num2str(p)],'fontsize',15);
text(0,0.9,['n= ' num2str(size(RightProba_NoOpto_withoutMiss,2))],'fontsize',15);
text(0,0.8,['p= ' num2str(p)],'fontsize',15);
title(file_name,'fontsize',12,'fontweight','bold');
xlabel(gca,'Rightward Choice (Control)','fontsize',18,'fontweight','bold');
ylabel(gca,'RightwardChoice (Opto)','fontsize',18,'fontweight','bold');





%%
plot(RightProba_NoOpto_withoutMiss(:,2), RightProba_opto_withoutMiss(:,2),'bo','Markersize',10,'MarkerFaceColor','b');
title(file_name,'fontsize',18,'fontweight','bold');
[h,p] =ttest(RightProba_NoOpto_withoutMiss(:),RightProba_opto_withoutMiss(:))

%% Try ROC
T = [zeros(72,1);ones(72,1)]';
Y = [RightProba_NoOpto_withoutMiss(:); RightProba_opto_withoutMiss(:)]';
[TPR,FPR,TH] = roc(T,Y);       %% using ROC mehtod in matlab
figure;
plotroc(T,Y);

rocOutPut= rocOnline([Y',T']); %% using ROC method from XinYu's code