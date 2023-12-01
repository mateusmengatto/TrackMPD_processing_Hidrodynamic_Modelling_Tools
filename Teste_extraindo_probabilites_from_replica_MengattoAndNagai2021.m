% x_vector = [LonEdge];
% y_vector = [LatEdge];
% point = [-48.33669, -25.45683];% [long, lat] do ponto
% x_grid = find(x_vector <= point(1), 1, 'last');
% y_grid = find(y_vector <= point(2), 1, 'last');
% x_grid = [x_grid x_grid+1]
% y_grid = [y_grid y_grid+1]

%O valor da célula é contido entre dentro decrescentes a partir de Lat e
%Long
%%
%Exemplo
% x_vector = [LonEdge];
% y_vector = [LatEdge];
% L1_01_R1=[-48.31573,-25.57175]
% L1_01_R1_x_grid = find(x_vector <= L1_01_R1(1), 1, 'last');
% L1_01_R1_y_grid = find(y_vector <= L1_01_R1(2), 1, 'last');
% L1_01_R1_what_grid = [x_grid y_grid]
%%
% Localizando cada ponto

clc; clear all;

%carregando a pdf.mat com o grid
% load('Densitymap_30lib_40advc_onlybeached_loc1.mat')

%dominios do grid
x_vector = [LonEdge];
y_vector = [LatEdge];

%Long;Lat; coleta réplicas
L1_01_R1=[-48.31573,-25.57175]
L1_01_R2=[-48.31574,-25.57172]
L1_01_R3=[-48.31569,-25.57168]
L1_02_R1=[-48.31557,-25.56705]
L1_02_R2=[-48.31557,-25.56705]
L1_02_R3=[-48.31558,-25.567]
L1_03_R1=[-48.31675,-25.56472]
L1_03_R2=[-48.31679,-25.5647]
L1_03_R3=[-48.31681,-25.56466]
L2_01_R1=[-48.35873,-25.52243]
L2_01_R2=[-48.35864,-25.52246]
L2_01_R3=[-48.35864,-25.52247]
L2_02_R1=[-48.35743,-25.52319]
L2_02_R2=[-48.35742,-25.52321]
L2_02_R3=[-48.35739,-25.52321]
L2_03_R1=[-48.35667,-25.52344]
L2_03_R2=[-48.35664,-25.52344]
L2_03_R3=[-48.3566,-25.52345]
L3_01_R1=[-48.38226,-25.50279]
L3_01_R2=[-48.38231,-25.50282]
L3_01_R3=[-48.3823,-25.50282]
L4_01_R1=[-48.38898,-25.54973]
L4_01_R2=[-48.38898,-25.54974]
L4_01_R3=[-48.38904,-25.54975]
L5_01_R1=[-48.45811,-25.5104]
L5_01_R2=[-48.45808,-25.51042]
L5_01_R3=[-48.45804,-25.51044]
L6_01_R1=[-48.4309,-25.48428]
L6_01_R2=[-48.43088,-25.48425]
L6_01_R3=[-48.43088,-25.48423]
L6_02_R1=[-48.4307,-25.48395]
L6_02_R2=[-48.43065,-25.48394]
L6_02_R3=[-48.43066,-25.48393]
L6_03_R1=[-48.43035,-25.4835]
L6_03_R2=[-48.43032,-25.48346]
L6_03_R3=[-48.4303,-25.48343]
L7_01_R1=[-48.49986,-25.5178]
L7_01_R2=[-48.49986,-25.5178]
L7_01_R3=[-48.49989,-25.51782]
L8_01_R1=[-48.53112,-25.50405]
L8_01_R2=[-48.53114,-25.50404]
L8_01_R3=[-48.53118,-25.50403]
L9_01_R1=[-48.55644,-25.51394]
L9_01_R2=[-48.55641,-25.51395]
L9_01_R3=[-48.5564,-25.51396]
L10_01_R1=[-48.64393,-25.48539]
L10_01_R2=[-48.64395,-25.48537]
L10_01_R3=[-48.64397,-25.48534]
L11_01_R1=[-48.6851,-25.45171]
L11_01_R2=[-48.68512,-25.45169]
L11_01_R3=[-48.68516,-25.45174]
L12_01_R1=[-48.61148,-25.45978]
L12_01_R2=[-48.61151,-25.45979]
L12_01_R3=[-48.61154,-25.45981]
L12_02_R1=[-48.61231,-25.46018]
L12_02_R2=[-48.61233,-25.46021]
L12_02_R3=[-48.61235,-25.46023]
L12_03_R1=[-48.61267,-25.46041]
L12_03_R2=[-48.61267,-25.46041]
L12_03_R3=[-48.61268,-25.46042]
L13_01_R1=[-48.4978,-25.47735]
L13_01_R2=[-48.56388,-25.46404]
L13_01_R3=[-48.56388,-25.46405]
L14_01_R1=[-48.50106,-25.47662]
L14_01_R2=[-48.50106,-25.47659]
L14_01_R3=[-48.50099,-25.47663]
L14_02_R1=[-48.49981,-25.47681]
L14_02_R2=[-48.4998,-25.47681]
L14_02_R3=[-48.49979,-25.47681]
L14_03_R1=[-48.49784,-25.47732]
L14_03_R2=[-48.49784,-25.47733]
L14_03_R3=[-48.49779,-25.47735]
L15_01_R1=[-48.42208,-25.41587]
L15_01_R2=[-48.42208,-25.41585]
L15_01_R3=[-48.42208,-25.41584]
L15_02_R1=[-48.42152,-25.41343]
L15_02_R2=[-48.42153,-25.41341]
L15_02_R3=[-48.42151,-25.4134]
L15_03_R1=[-48.42073,-25.41167]
L15_03_R2=[-48.42072,-25.41165]
L15_03_R3=[-48.42068,-25.41161]
L16_01_R1=[-48.42518,-25.35882]
L16_01_R2=[-48.42517,-25.35884]
L16_01_R3=[-48.42515,-25.35889]
L17_01_R1=[-48.38902,-25.33726]
L17_01_R2=[-48.38902,-25.33728]
L17_01_R3=[-48.38903,-25.33728]
L17_02_R1=[-48.38968,-25.3386]
L17_02_R2=[-48.38968,-25.33858]
L17_02_R3=[-48.3897,-25.33852]
L18_01_R1=[-48.33071,-25.2978]
L18_01_R2=[-48.33075,-25.29777]
L18_01_R3=[-48.33076,-25.29777]
L19_01_R1=[-48.3367,-25.45686]
L19_01_R2=[-48.33669,-25.45684]
L19_01_R3=[-48.33669,-25.45683]




%Função p/ cada réplica
%Definindo X_grid e Y_grid

%x_grid

L1_01_R1_x_grid=find(x_vector<=L1_01_R1(1),1,'last');
L1_01_R2_x_grid=find(x_vector<=L1_01_R2(1),1,'last');
L1_01_R3_x_grid=find(x_vector<=L1_01_R3(1),1,'last');
L1_02_R1_x_grid=find(x_vector<=L1_02_R1(1),1,'last');
L1_02_R2_x_grid=find(x_vector<=L1_02_R2(1),1,'last');
L1_02_R3_x_grid=find(x_vector<=L1_02_R3(1),1,'last');
L1_03_R1_x_grid=find(x_vector<=L1_03_R1(1),1,'last');
L1_03_R2_x_grid=find(x_vector<=L1_03_R2(1),1,'last');
L1_03_R3_x_grid=find(x_vector<=L1_03_R3(1),1,'last');
L2_01_R1_x_grid=find(x_vector<=L2_01_R1(1),1,'last');
L2_01_R2_x_grid=find(x_vector<=L2_01_R2(1),1,'last');
L2_01_R3_x_grid=find(x_vector<=L2_01_R3(1),1,'last');
L2_02_R1_x_grid=find(x_vector<=L2_02_R1(1),1,'last');
L2_02_R2_x_grid=find(x_vector<=L2_02_R2(1),1,'last');
L2_02_R3_x_grid=find(x_vector<=L2_02_R3(1),1,'last');
L2_03_R1_x_grid=find(x_vector<=L2_03_R1(1),1,'last');
L2_03_R2_x_grid=find(x_vector<=L2_03_R2(1),1,'last');
L2_03_R3_x_grid=find(x_vector<=L2_03_R3(1),1,'last');
L3_01_R1_x_grid=find(x_vector<=L3_01_R1(1),1,'last');
L3_01_R2_x_grid=find(x_vector<=L3_01_R2(1),1,'last');
L3_01_R3_x_grid=find(x_vector<=L3_01_R3(1),1,'last');
L4_01_R1_x_grid=find(x_vector<=L4_01_R1(1),1,'last');
L4_01_R2_x_grid=find(x_vector<=L4_01_R2(1),1,'last');
L4_01_R3_x_grid=find(x_vector<=L4_01_R3(1),1,'last');
L5_01_R1_x_grid=find(x_vector<=L5_01_R1(1),1,'last');
L5_01_R2_x_grid=find(x_vector<=L5_01_R2(1),1,'last');
L5_01_R3_x_grid=find(x_vector<=L5_01_R3(1),1,'last');
L6_01_R1_x_grid=find(x_vector<=L6_01_R1(1),1,'last');
L6_01_R2_x_grid=find(x_vector<=L6_01_R2(1),1,'last');
L6_01_R3_x_grid=find(x_vector<=L6_01_R3(1),1,'last');
L6_02_R1_x_grid=find(x_vector<=L6_02_R1(1),1,'last');
L6_02_R2_x_grid=find(x_vector<=L6_02_R2(1),1,'last');
L6_02_R3_x_grid=find(x_vector<=L6_02_R3(1),1,'last');
L6_03_R1_x_grid=find(x_vector<=L6_03_R1(1),1,'last');
L6_03_R2_x_grid=find(x_vector<=L6_03_R2(1),1,'last');
L6_03_R3_x_grid=find(x_vector<=L6_03_R3(1),1,'last');
L7_01_R1_x_grid=find(x_vector<=L7_01_R1(1),1,'last');
L7_01_R2_x_grid=find(x_vector<=L7_01_R2(1),1,'last');
L7_01_R3_x_grid=find(x_vector<=L7_01_R3(1),1,'last');
L8_01_R1_x_grid=find(x_vector<=L8_01_R1(1),1,'last');
L8_01_R2_x_grid=find(x_vector<=L8_01_R2(1),1,'last');
L8_01_R3_x_grid=find(x_vector<=L8_01_R3(1),1,'last');
L9_01_R1_x_grid=find(x_vector<=L9_01_R1(1),1,'last');
L9_01_R2_x_grid=find(x_vector<=L9_01_R2(1),1,'last');
L9_01_R3_x_grid=find(x_vector<=L9_01_R3(1),1,'last');
L10_01_R1_x_grid=find(x_vector<=L10_01_R1(1),1,'last');
L10_01_R2_x_grid=find(x_vector<=L10_01_R2(1),1,'last');
L10_01_R3_x_grid=find(x_vector<=L10_01_R3(1),1,'last');
L11_01_R1_x_grid=find(x_vector<=L11_01_R1(1),1,'last');
L11_01_R2_x_grid=find(x_vector<=L11_01_R2(1),1,'last');
L11_01_R3_x_grid=find(x_vector<=L11_01_R3(1),1,'last');
L12_01_R1_x_grid=find(x_vector<=L12_01_R1(1),1,'last');
L12_01_R2_x_grid=find(x_vector<=L12_01_R2(1),1,'last');
L12_01_R3_x_grid=find(x_vector<=L12_01_R3(1),1,'last');
L12_02_R1_x_grid=find(x_vector<=L12_02_R1(1),1,'last');
L12_02_R2_x_grid=find(x_vector<=L12_02_R2(1),1,'last');
L12_02_R3_x_grid=find(x_vector<=L12_02_R3(1),1,'last');
L12_03_R1_x_grid=find(x_vector<=L12_03_R1(1),1,'last');
L12_03_R2_x_grid=find(x_vector<=L12_03_R2(1),1,'last');
L12_03_R3_x_grid=find(x_vector<=L12_03_R3(1),1,'last');
L13_01_R1_x_grid=find(x_vector<=L13_01_R1(1),1,'last');
L13_01_R2_x_grid=find(x_vector<=L13_01_R2(1),1,'last');
L13_01_R3_x_grid=find(x_vector<=L13_01_R3(1),1,'last');
L14_01_R1_x_grid=find(x_vector<=L14_01_R1(1),1,'last');
L14_01_R2_x_grid=find(x_vector<=L14_01_R2(1),1,'last');
L14_01_R3_x_grid=find(x_vector<=L14_01_R3(1),1,'last');
L14_02_R1_x_grid=find(x_vector<=L14_02_R1(1),1,'last');
L14_02_R2_x_grid=find(x_vector<=L14_02_R2(1),1,'last');
L14_02_R3_x_grid=find(x_vector<=L14_02_R3(1),1,'last');
L14_03_R1_x_grid=find(x_vector<=L14_03_R1(1),1,'last');
L14_03_R2_x_grid=find(x_vector<=L14_03_R2(1),1,'last');
L14_03_R3_x_grid=find(x_vector<=L14_03_R3(1),1,'last');
L15_01_R1_x_grid=find(x_vector<=L15_01_R1(1),1,'last');
L15_01_R2_x_grid=find(x_vector<=L15_01_R2(1),1,'last');
L15_01_R3_x_grid=find(x_vector<=L15_01_R3(1),1,'last');
L15_02_R1_x_grid=find(x_vector<=L15_02_R1(1),1,'last');
L15_02_R2_x_grid=find(x_vector<=L15_02_R2(1),1,'last');
L15_02_R3_x_grid=find(x_vector<=L15_02_R3(1),1,'last');
L15_03_R1_x_grid=find(x_vector<=L15_03_R1(1),1,'last');
L15_03_R2_x_grid=find(x_vector<=L15_03_R2(1),1,'last');
L15_03_R3_x_grid=find(x_vector<=L15_03_R3(1),1,'last');
L16_01_R1_x_grid=find(x_vector<=L16_01_R1(1),1,'last');
L16_01_R2_x_grid=find(x_vector<=L16_01_R2(1),1,'last');
L16_01_R3_x_grid=find(x_vector<=L16_01_R3(1),1,'last');
L17_01_R1_x_grid=find(x_vector<=L17_01_R1(1),1,'last');
L17_01_R2_x_grid=find(x_vector<=L17_01_R2(1),1,'last');
L17_01_R3_x_grid=find(x_vector<=L17_01_R3(1),1,'last');
L17_02_R1_x_grid=find(x_vector<=L17_02_R1(1),1,'last');
L17_02_R2_x_grid=find(x_vector<=L17_02_R2(1),1,'last');
L17_02_R3_x_grid=find(x_vector<=L17_02_R3(1),1,'last');
L18_01_R1_x_grid=find(x_vector<=L18_01_R1(1),1,'last');
L18_01_R2_x_grid=find(x_vector<=L18_01_R2(1),1,'last');
L18_01_R3_x_grid=find(x_vector<=L18_01_R3(1),1,'last');
L19_01_R1_x_grid=find(x_vector<=L19_01_R1(1),1,'last');
L19_01_R2_x_grid=find(x_vector<=L19_01_R2(1),1,'last');
L19_01_R3_x_grid=find(x_vector<=L19_01_R3(1),1,'last');



%Y_grid

L1_01_R1_y_grid=find(y_vector<=L1_01_R1(2),1,'last');
L1_01_R2_y_grid=find(y_vector<=L1_01_R2(2),1,'last');
L1_01_R3_y_grid=find(y_vector<=L1_01_R3(2),1,'last');
L1_02_R1_y_grid=find(y_vector<=L1_02_R1(2),1,'last');
L1_02_R2_y_grid=find(y_vector<=L1_02_R2(2),1,'last');
L1_02_R3_y_grid=find(y_vector<=L1_02_R3(2),1,'last');
L1_03_R1_y_grid=find(y_vector<=L1_03_R1(2),1,'last');
L1_03_R2_y_grid=find(y_vector<=L1_03_R2(2),1,'last');
L1_03_R3_y_grid=find(y_vector<=L1_03_R3(2),1,'last');
L2_01_R1_y_grid=find(y_vector<=L2_01_R1(2),1,'last');
L2_01_R2_y_grid=find(y_vector<=L2_01_R2(2),1,'last');
L2_01_R3_y_grid=find(y_vector<=L2_01_R3(2),1,'last');
L2_02_R1_y_grid=find(y_vector<=L2_02_R1(2),1,'last');
L2_02_R2_y_grid=find(y_vector<=L2_02_R2(2),1,'last');
L2_02_R3_y_grid=find(y_vector<=L2_02_R3(2),1,'last');
L2_03_R1_y_grid=find(y_vector<=L2_03_R1(2),1,'last');
L2_03_R2_y_grid=find(y_vector<=L2_03_R2(2),1,'last');
L2_03_R3_y_grid=find(y_vector<=L2_03_R3(2),1,'last');
L3_01_R1_y_grid=find(y_vector<=L3_01_R1(2),1,'last');
L3_01_R2_y_grid=find(y_vector<=L3_01_R2(2),1,'last');
L3_01_R3_y_grid=find(y_vector<=L3_01_R3(2),1,'last');
L4_01_R1_y_grid=find(y_vector<=L4_01_R1(2),1,'last');
L4_01_R2_y_grid=find(y_vector<=L4_01_R2(2),1,'last');
L4_01_R3_y_grid=find(y_vector<=L4_01_R3(2),1,'last');
L5_01_R1_y_grid=find(y_vector<=L5_01_R1(2),1,'last');
L5_01_R2_y_grid=find(y_vector<=L5_01_R2(2),1,'last');
L5_01_R3_y_grid=find(y_vector<=L5_01_R3(2),1,'last');
L6_01_R1_y_grid=find(y_vector<=L6_01_R1(2),1,'last');
L6_01_R2_y_grid=find(y_vector<=L6_01_R2(2),1,'last');
L6_01_R3_y_grid=find(y_vector<=L6_01_R3(2),1,'last');
L6_02_R1_y_grid=find(y_vector<=L6_02_R1(2),1,'last');
L6_02_R2_y_grid=find(y_vector<=L6_02_R2(2),1,'last');
L6_02_R3_y_grid=find(y_vector<=L6_02_R3(2),1,'last');
L6_03_R1_y_grid=find(y_vector<=L6_03_R1(2),1,'last');
L6_03_R2_y_grid=find(y_vector<=L6_03_R2(2),1,'last');
L6_03_R3_y_grid=find(y_vector<=L6_03_R3(2),1,'last');
L7_01_R1_y_grid=find(y_vector<=L7_01_R1(2),1,'last');
L7_01_R2_y_grid=find(y_vector<=L7_01_R2(2),1,'last');
L7_01_R3_y_grid=find(y_vector<=L7_01_R3(2),1,'last');
L8_01_R1_y_grid=find(y_vector<=L8_01_R1(2),1,'last');
L8_01_R2_y_grid=find(y_vector<=L8_01_R2(2),1,'last');
L8_01_R3_y_grid=find(y_vector<=L8_01_R3(2),1,'last');
L9_01_R1_y_grid=find(y_vector<=L9_01_R1(2),1,'last');
L9_01_R2_y_grid=find(y_vector<=L9_01_R2(2),1,'last');
L9_01_R3_y_grid=find(y_vector<=L9_01_R3(2),1,'last');
L10_01_R1_y_grid=find(y_vector<=L10_01_R1(2),1,'last');
L10_01_R2_y_grid=find(y_vector<=L10_01_R2(2),1,'last');
L10_01_R3_y_grid=find(y_vector<=L10_01_R3(2),1,'last');
L11_01_R1_y_grid=find(y_vector<=L11_01_R1(2),1,'last');
L11_01_R2_y_grid=find(y_vector<=L11_01_R2(2),1,'last');
L11_01_R3_y_grid=find(y_vector<=L11_01_R3(2),1,'last');
L12_01_R1_y_grid=find(y_vector<=L12_01_R1(2),1,'last');
L12_01_R2_y_grid=find(y_vector<=L12_01_R2(2),1,'last');
L12_01_R3_y_grid=find(y_vector<=L12_01_R3(2),1,'last');
L12_02_R1_y_grid=find(y_vector<=L12_02_R1(2),1,'last');
L12_02_R2_y_grid=find(y_vector<=L12_02_R2(2),1,'last');
L12_02_R3_y_grid=find(y_vector<=L12_02_R3(2),1,'last');
L12_03_R1_y_grid=find(y_vector<=L12_03_R1(2),1,'last');
L12_03_R2_y_grid=find(y_vector<=L12_03_R2(2),1,'last');
L12_03_R3_y_grid=find(y_vector<=L12_03_R3(2),1,'last');
L13_01_R1_y_grid=find(y_vector<=L13_01_R1(2),1,'last');
L13_01_R2_y_grid=find(y_vector<=L13_01_R2(2),1,'last');
L13_01_R3_y_grid=find(y_vector<=L13_01_R3(2),1,'last');
L14_01_R1_y_grid=find(y_vector<=L14_01_R1(2),1,'last');
L14_01_R2_y_grid=find(y_vector<=L14_01_R2(2),1,'last');
L14_01_R3_y_grid=find(y_vector<=L14_01_R3(2),1,'last');
L14_02_R1_y_grid=find(y_vector<=L14_02_R1(2),1,'last');
L14_02_R2_y_grid=find(y_vector<=L14_02_R2(2),1,'last');
L14_02_R3_y_grid=find(y_vector<=L14_02_R3(2),1,'last');
L14_03_R1_y_grid=find(y_vector<=L14_03_R1(2),1,'last');
L14_03_R2_y_grid=find(y_vector<=L14_03_R2(2),1,'last');
L14_03_R3_y_grid=find(y_vector<=L14_03_R3(2),1,'last');
L15_01_R1_y_grid=find(y_vector<=L15_01_R1(2),1,'last');
L15_01_R2_y_grid=find(y_vector<=L15_01_R2(2),1,'last');
L15_01_R3_y_grid=find(y_vector<=L15_01_R3(2),1,'last');
L15_02_R1_y_grid=find(y_vector<=L15_02_R1(2),1,'last');
L15_02_R2_y_grid=find(y_vector<=L15_02_R2(2),1,'last');
L15_02_R3_y_grid=find(y_vector<=L15_02_R3(2),1,'last');
L15_03_R1_y_grid=find(y_vector<=L15_03_R1(2),1,'last');
L15_03_R2_y_grid=find(y_vector<=L15_03_R2(2),1,'last');
L15_03_R3_y_grid=find(y_vector<=L15_03_R3(2),1,'last');
L16_01_R1_y_grid=find(y_vector<=L16_01_R1(2),1,'last');
L16_01_R2_y_grid=find(y_vector<=L16_01_R2(2),1,'last');
L16_01_R3_y_grid=find(y_vector<=L16_01_R3(2),1,'last');
L17_01_R1_y_grid=find(y_vector<=L17_01_R1(2),1,'last');
L17_01_R2_y_grid=find(y_vector<=L17_01_R2(2),1,'last');
L17_01_R3_y_grid=find(y_vector<=L17_01_R3(2),1,'last');
L17_02_R1_y_grid=find(y_vector<=L17_02_R1(2),1,'last');
L17_02_R2_y_grid=find(y_vector<=L17_02_R2(2),1,'last');
L17_02_R3_y_grid=find(y_vector<=L17_02_R3(2),1,'last');
L18_01_R1_y_grid=find(y_vector<=L18_01_R1(2),1,'last');
L18_01_R2_y_grid=find(y_vector<=L18_01_R2(2),1,'last');
L18_01_R3_y_grid=find(y_vector<=L18_01_R3(2),1,'last');
L19_01_R1_y_grid=find(y_vector<=L19_01_R1(2),1,'last');
L19_01_R2_y_grid=find(y_vector<=L19_01_R2(2),1,'last');
L19_01_R3_y_grid=find(y_vector<=L19_01_R3(2),1,'last');

%%
%Qual pixel as amostras estão?

L1_01_R1_what_grid=[L1_01_R1_x_grid L1_01_R1_y_grid]
L1_01_R2_what_grid=[L1_01_R2_x_grid L1_01_R2_y_grid]
L1_01_R3_what_grid=[L1_01_R3_x_grid L1_01_R3_y_grid]
L1_02_R1_what_grid=[L1_02_R1_x_grid L1_02_R1_y_grid]
L1_02_R2_what_grid=[L1_02_R2_x_grid L1_02_R2_y_grid]
L1_02_R3_what_grid=[L1_02_R3_x_grid L1_02_R3_y_grid]
L1_03_R1_what_grid=[L1_03_R1_x_grid L1_03_R1_y_grid]
L1_03_R2_what_grid=[L1_03_R2_x_grid L1_03_R2_y_grid]
L1_03_R3_what_grid=[L1_03_R3_x_grid L1_03_R3_y_grid]
L2_01_R1_what_grid=[L2_01_R1_x_grid L2_01_R1_y_grid]
L2_01_R2_what_grid=[L2_01_R2_x_grid L2_01_R2_y_grid]
L2_01_R3_what_grid=[L2_01_R3_x_grid L2_01_R3_y_grid]
L2_02_R1_what_grid=[L2_02_R1_x_grid L2_02_R1_y_grid]
L2_02_R2_what_grid=[L2_02_R2_x_grid L2_02_R2_y_grid]
L2_02_R3_what_grid=[L2_02_R3_x_grid L2_02_R3_y_grid]
L2_03_R1_what_grid=[L2_03_R1_x_grid L2_03_R1_y_grid]
L2_03_R2_what_grid=[L2_03_R2_x_grid L2_03_R2_y_grid]
L2_03_R3_what_grid=[L2_03_R3_x_grid L2_03_R3_y_grid]
L3_01_R1_what_grid=[L3_01_R1_x_grid L3_01_R1_y_grid]
L3_01_R2_what_grid=[L3_01_R2_x_grid L3_01_R2_y_grid]
L3_01_R3_what_grid=[L3_01_R3_x_grid L3_01_R3_y_grid]
L4_01_R1_what_grid=[L4_01_R1_x_grid L4_01_R1_y_grid]
L4_01_R2_what_grid=[L4_01_R2_x_grid L4_01_R2_y_grid]
L4_01_R3_what_grid=[L4_01_R3_x_grid L4_01_R3_y_grid]
L5_01_R1_what_grid=[L5_01_R1_x_grid L5_01_R1_y_grid]
L5_01_R2_what_grid=[L5_01_R2_x_grid L5_01_R2_y_grid]
L5_01_R3_what_grid=[L5_01_R3_x_grid L5_01_R3_y_grid]
L6_01_R1_what_grid=[L6_01_R1_x_grid L6_01_R1_y_grid]
L6_01_R2_what_grid=[L6_01_R2_x_grid L6_01_R2_y_grid]
L6_01_R3_what_grid=[L6_01_R3_x_grid L6_01_R3_y_grid]
L6_02_R1_what_grid=[L6_02_R1_x_grid L6_02_R1_y_grid]
L6_02_R2_what_grid=[L6_02_R2_x_grid L6_02_R2_y_grid]
L6_02_R3_what_grid=[L6_02_R3_x_grid L6_02_R3_y_grid]
L6_03_R1_what_grid=[L6_03_R1_x_grid L6_03_R1_y_grid]
L6_03_R2_what_grid=[L6_03_R2_x_grid L6_03_R2_y_grid]
L6_03_R3_what_grid=[L6_03_R3_x_grid L6_03_R3_y_grid]
L7_01_R1_what_grid=[L7_01_R1_x_grid L7_01_R1_y_grid]
L7_01_R2_what_grid=[L7_01_R2_x_grid L7_01_R2_y_grid]
L7_01_R3_what_grid=[L7_01_R3_x_grid L7_01_R3_y_grid]
L8_01_R1_what_grid=[L8_01_R1_x_grid L8_01_R1_y_grid]
L8_01_R2_what_grid=[L8_01_R2_x_grid L8_01_R2_y_grid]
L8_01_R3_what_grid=[L8_01_R3_x_grid L8_01_R3_y_grid]
L9_01_R1_what_grid=[L9_01_R1_x_grid L9_01_R1_y_grid]
L9_01_R2_what_grid=[L9_01_R2_x_grid L9_01_R2_y_grid]
L9_01_R3_what_grid=[L9_01_R3_x_grid L9_01_R3_y_grid]
L10_01_R1_what_grid=[L10_01_R1_x_grid L10_01_R1_y_grid]
L10_01_R2_what_grid=[L10_01_R2_x_grid L10_01_R2_y_grid]
L10_01_R3_what_grid=[L10_01_R3_x_grid L10_01_R3_y_grid]
L11_01_R1_what_grid=[L11_01_R1_x_grid L11_01_R1_y_grid]
L11_01_R2_what_grid=[L11_01_R2_x_grid L11_01_R2_y_grid]
L11_01_R3_what_grid=[L11_01_R3_x_grid L11_01_R3_y_grid]
L12_01_R1_what_grid=[L12_01_R1_x_grid L12_01_R1_y_grid]
L12_01_R2_what_grid=[L12_01_R2_x_grid L12_01_R2_y_grid]
L12_01_R3_what_grid=[L12_01_R3_x_grid L12_01_R3_y_grid]
L12_02_R1_what_grid=[L12_02_R1_x_grid L12_02_R1_y_grid]
L12_02_R2_what_grid=[L12_02_R2_x_grid L12_02_R2_y_grid]
L12_02_R3_what_grid=[L12_02_R3_x_grid L12_02_R3_y_grid]
L12_03_R1_what_grid=[L12_03_R1_x_grid L12_03_R1_y_grid]
L12_03_R2_what_grid=[L12_03_R2_x_grid L12_03_R2_y_grid]
L12_03_R3_what_grid=[L12_03_R3_x_grid L12_03_R3_y_grid]
L13_01_R1_what_grid=[L13_01_R1_x_grid L13_01_R1_y_grid]
L13_01_R2_what_grid=[L13_01_R2_x_grid L13_01_R2_y_grid]
L13_01_R3_what_grid=[L13_01_R3_x_grid L13_01_R3_y_grid]
L14_01_R1_what_grid=[L14_01_R1_x_grid L14_01_R1_y_grid]
L14_01_R2_what_grid=[L14_01_R2_x_grid L14_01_R2_y_grid]
L14_01_R3_what_grid=[L14_01_R3_x_grid L14_01_R3_y_grid]
L14_02_R1_what_grid=[L14_02_R1_x_grid L14_02_R1_y_grid]
L14_02_R2_what_grid=[L14_02_R2_x_grid L14_02_R2_y_grid]
L14_02_R3_what_grid=[L14_02_R3_x_grid L14_02_R3_y_grid]
L14_03_R1_what_grid=[L14_03_R1_x_grid L14_03_R1_y_grid]
L14_03_R2_what_grid=[L14_03_R2_x_grid L14_03_R2_y_grid]
L14_03_R3_what_grid=[L14_03_R3_x_grid L14_03_R3_y_grid]
L15_01_R1_what_grid=[L15_01_R1_x_grid L15_01_R1_y_grid]
L15_01_R2_what_grid=[L15_01_R2_x_grid L15_01_R2_y_grid]
L15_01_R3_what_grid=[L15_01_R3_x_grid L15_01_R3_y_grid]
L15_02_R1_what_grid=[L15_02_R1_x_grid L15_02_R1_y_grid]
L15_02_R2_what_grid=[L15_02_R2_x_grid L15_02_R2_y_grid]
L15_02_R3_what_grid=[L15_02_R3_x_grid L15_02_R3_y_grid]
L15_03_R1_what_grid=[L15_03_R1_x_grid L15_03_R1_y_grid]
L15_03_R2_what_grid=[L15_03_R2_x_grid L15_03_R2_y_grid]
L15_03_R3_what_grid=[L15_03_R3_x_grid L15_03_R3_y_grid]
L16_01_R1_what_grid=[L16_01_R1_x_grid L16_01_R1_y_grid]
L16_01_R2_what_grid=[L16_01_R2_x_grid L16_01_R2_y_grid]
L16_01_R3_what_grid=[L16_01_R3_x_grid L16_01_R3_y_grid]
L17_01_R1_what_grid=[L17_01_R1_x_grid L17_01_R1_y_grid]
L17_01_R2_what_grid=[L17_01_R2_x_grid L17_01_R2_y_grid]
L17_01_R3_what_grid=[L17_01_R3_x_grid L17_01_R3_y_grid]
L17_02_R1_what_grid=[L17_02_R1_x_grid L17_02_R1_y_grid]
L17_02_R2_what_grid=[L17_02_R2_x_grid L17_02_R2_y_grid]
L17_02_R3_what_grid=[L17_02_R3_x_grid L17_02_R3_y_grid]
L18_01_R1_what_grid=[L18_01_R1_x_grid L18_01_R1_y_grid]
L18_01_R2_what_grid=[L18_01_R2_x_grid L18_01_R2_y_grid]
L18_01_R3_what_grid=[L18_01_R3_x_grid L18_01_R3_y_grid]
L19_01_R1_what_grid=[L19_01_R1_x_grid L19_01_R1_y_grid]
L19_01_R2_what_grid=[L19_01_R2_x_grid L19_01_R2_y_grid]
L19_01_R3_what_grid=[L19_01_R3_x_grid L19_01_R3_y_grid]


%Arquivo com localizações da réplicas no grid

replicas_no_grid = [ L1_01_R1_what_grid
L1_01_R2_what_grid
L1_01_R3_what_grid
L1_02_R1_what_grid
L1_02_R2_what_grid
L1_02_R3_what_grid
L1_03_R1_what_grid
L1_03_R2_what_grid
L1_03_R3_what_grid
L2_01_R1_what_grid
L2_01_R2_what_grid
L2_01_R3_what_grid
L2_02_R1_what_grid
L2_02_R2_what_grid
L2_02_R3_what_grid
L2_03_R1_what_grid
L2_03_R2_what_grid
L2_03_R3_what_grid
L3_01_R1_what_grid
L3_01_R2_what_grid
L3_01_R3_what_grid
L4_01_R1_what_grid
L4_01_R2_what_grid
L4_01_R3_what_grid
L5_01_R1_what_grid
L5_01_R2_what_grid
L5_01_R3_what_grid
L6_01_R1_what_grid
L6_01_R2_what_grid
L6_01_R3_what_grid
L6_02_R1_what_grid
L6_02_R2_what_grid
L6_02_R3_what_grid
L6_03_R1_what_grid
L6_03_R2_what_grid
L6_03_R3_what_grid
L7_01_R1_what_grid
L7_01_R2_what_grid
L7_01_R3_what_grid
L8_01_R1_what_grid
L8_01_R2_what_grid
L8_01_R3_what_grid
L9_01_R1_what_grid
L9_01_R2_what_grid
L9_01_R3_what_grid
L10_01_R1_what_grid
L10_01_R2_what_grid
L10_01_R3_what_grid
L11_01_R1_what_grid
L11_01_R2_what_grid
L11_01_R3_what_grid
L12_01_R1_what_grid
L12_01_R2_what_grid
L12_01_R3_what_grid
L12_02_R1_what_grid
L12_02_R2_what_grid
L12_02_R3_what_grid
L12_03_R1_what_grid
L12_03_R2_what_grid
L12_03_R3_what_grid
L13_01_R1_what_grid
L13_01_R2_what_grid
L13_01_R3_what_grid
L14_01_R1_what_grid
L14_01_R2_what_grid
L14_01_R3_what_grid
L14_02_R1_what_grid
L14_02_R2_what_grid
L14_02_R3_what_grid
L14_03_R1_what_grid
L14_03_R2_what_grid
L14_03_R3_what_grid
L15_01_R1_what_grid
L15_01_R2_what_grid
L15_01_R3_what_grid
L15_02_R1_what_grid
L15_02_R2_what_grid
L15_02_R3_what_grid
L15_03_R1_what_grid
L15_03_R2_what_grid
L15_03_R3_what_grid
L16_01_R1_what_grid
L16_01_R2_what_grid
L16_01_R3_what_grid
L17_01_R1_what_grid
L17_01_R2_what_grid
L17_01_R3_what_grid
L17_02_R1_what_grid
L17_02_R2_what_grid
L17_02_R3_what_grid
L18_01_R1_what_grid
L18_01_R2_what_grid
L18_01_R3_what_grid
L19_01_R1_what_grid
L19_01_R2_what_grid
L19_01_R3_what_grid ]


%Salvo xls
xlswrite('replicas_no_grid', replicas_no_grid)

%Salvo matlab file 

path_res= pwd'% Modify: folder to save data
namefile='Replicas_no_grid'

save([namefile], 'replicas', 'replicas_no_grid', 'x_vector', 'y_vector')

%x_vector = lon
%Y_vector = lat

