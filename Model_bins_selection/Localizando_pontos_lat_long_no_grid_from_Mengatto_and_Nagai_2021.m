

% clc; clear all;
%PDF plots histogram values

clc; clear all
ReleasePoint=['b']

%%
%Edges feitas manualmente intervalo 0.01 graus


LatEdge=[-25.707005
-25.697005
-25.687005
-25.677005
-25.667005
-25.657005
-25.647005
-25.637005
-25.627005
-25.617005
-25.607005
-25.597005
-25.587005
-25.577005
-25.567005
-25.557005
-25.547005
-25.537005
-25.527005
-25.517005
-25.507005
-25.497005
-25.487005
-25.477005
-25.467005
-25.457005
-25.447005
-25.437005
-25.427005
-25.417005
-25.407005
-25.397005
-25.387005
-25.377005
-25.367005
-25.357005
-25.347005
-25.337005
-25.327005
-25.317005
-25.307005
-25.297005
-25.287005
-25.277005
-25.267005
-25.257005
-25.247005
-25.237005
-25.227005
-25.217005]

LonEdge=[-48.7850
-48.7750
-48.7650
-48.7550
-48.7450
-48.7350
-48.7250
-48.7150
-48.7050
-48.6950
-48.6850
-48.6750
-48.6650
-48.6550
-48.6450
-48.6350
-48.6250
-48.6150
-48.6050
-48.5950
-48.5850
-48.5750
-48.5650
-48.5550
-48.5450
-48.5350
-48.5250
-48.5150
-48.5050
-48.4950
-48.4850
-48.4750
-48.4650
-48.4550
-48.4450
-48.4350
-48.4250
-48.4150
-48.4050
-48.3950
-48.3850
-48.3750
-48.3650
-48.3550
-48.3450
-48.3350
-48.3250
-48.3150
-48.3050
-48.2950
-48.2850
-48.2750
-48.2650
-48.2550
-48.2450
-48.2350
-48.2250
-48.2150
-48.2050
-48.1950
-48.1850
-48.1750
-48.1650
-48.1550
-48.1450
-48.1350
-48.1250
-48.1150
-48.1050
-48.0950
-48.0850
-48.0750
-48.0650]
%%
%%



TRAJ=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40adv_traj\CEP_Loop_compiler_ReleasePoint_'+string(ReleasePoint)+'_01_10_2014_ReleaseTimeStep_6_hrs.mat')
% PDF=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40_adv_PDF\PDF_Release_Point_'+string(ReleasePoint)+'_30_to_40_loop.mat')

load(TRAJ)
% load(PDF)%

mapCEP = shaperead('D:\MATLAB\Pacotes\CEP_cut_1.4v\CEP_cut_1.shp') %CEP map contour
gray=[0.8 0.8 0.8] %Defining gray color

figure(1)

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('Traj_'+string(ReleasePoint))
Lon=CompTRAJ.Lon;
Lat=CompTRAJ.Lat;
Depth=CompTRAJ.Depth;
FinalLonLatDepth=CompTRAJ.FinalLonLatDepth;

mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('PDF')
h=histogram2(FinalLonLatDepth(:,1),FinalLonLatDepth(:,2),LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','off','Edgecolor','none') %'ShowEmptyBins','on'
colorbar
%plot(Lon(1,1),Lat(1,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','r')
% h=histogram2(FinalLonLatDepth(:,1),FinalLonLatDepth(:,2),LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','off','Edgecolor','none','BinMethod','integers','BinWidth',[0.01 0.01]) %'ShowEmptyBins','on'

%Only for I - 10 release pointas
plot(Lon(1:10,1),Lat(1:10,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','k')
data=h.Values;
max(data)

disp(h)

LonEdge_bins = h.XBinEdges'
LatEdge_bins = h.YBinEdges'
prob=h.Values
%%
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



%carregando a pdf.mat com o grid
% load('Densitymap_30lib_40advc_onlybeached_loc1.mat')

%dominios do grid
x_vector = [LonEdge_bins];
y_vector = [LatEdge_bins];

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
L19_01_R3_what_grid]

Mengatto_and_Nagai_points_prob=[prob(replicas_no_grid(1,1),replicas_no_grid(1,2))
prob(replicas_no_grid(2,1),replicas_no_grid(2,2))
prob(replicas_no_grid(3,1),replicas_no_grid(3,2))
prob(replicas_no_grid(4,1),replicas_no_grid(4,2))
prob(replicas_no_grid(5,1),replicas_no_grid(5,2))
prob(replicas_no_grid(6,1),replicas_no_grid(6,2))
prob(replicas_no_grid(7,1),replicas_no_grid(7,2))
prob(replicas_no_grid(8,1),replicas_no_grid(8,2))
prob(replicas_no_grid(9,1),replicas_no_grid(9,2))
prob(replicas_no_grid(10,1),replicas_no_grid(10,2))
prob(replicas_no_grid(11,1),replicas_no_grid(11,2))
prob(replicas_no_grid(12,1),replicas_no_grid(12,2))
prob(replicas_no_grid(13,1),replicas_no_grid(13,2))
prob(replicas_no_grid(14,1),replicas_no_grid(14,2))
prob(replicas_no_grid(15,1),replicas_no_grid(15,2))
prob(replicas_no_grid(16,1),replicas_no_grid(16,2))
prob(replicas_no_grid(17,1),replicas_no_grid(17,2))
prob(replicas_no_grid(18,1),replicas_no_grid(18,2))
prob(replicas_no_grid(19,1),replicas_no_grid(19,2))
prob(replicas_no_grid(20,1),replicas_no_grid(20,2))
prob(replicas_no_grid(21,1),replicas_no_grid(21,2))
prob(replicas_no_grid(22,1),replicas_no_grid(22,2))
prob(replicas_no_grid(23,1),replicas_no_grid(23,2))
prob(replicas_no_grid(24,1),replicas_no_grid(24,2))
prob(replicas_no_grid(25,1),replicas_no_grid(25,2))
prob(replicas_no_grid(26,1),replicas_no_grid(26,2))
prob(replicas_no_grid(27,1),replicas_no_grid(27,2))
prob(replicas_no_grid(28,1),replicas_no_grid(28,2))
prob(replicas_no_grid(29,1),replicas_no_grid(29,2))
prob(replicas_no_grid(30,1),replicas_no_grid(30,2))
prob(replicas_no_grid(31,1),replicas_no_grid(31,2))
prob(replicas_no_grid(32,1),replicas_no_grid(32,2))
prob(replicas_no_grid(33,1),replicas_no_grid(33,2))
prob(replicas_no_grid(34,1),replicas_no_grid(34,2))
prob(replicas_no_grid(35,1),replicas_no_grid(35,2))
prob(replicas_no_grid(36,1),replicas_no_grid(36,2))
prob(replicas_no_grid(37,1),replicas_no_grid(37,2))
prob(replicas_no_grid(38,1),replicas_no_grid(38,2))
prob(replicas_no_grid(39,1),replicas_no_grid(39,2))
prob(replicas_no_grid(40,1),replicas_no_grid(40,2))
prob(replicas_no_grid(41,1),replicas_no_grid(41,2))
prob(replicas_no_grid(42,1),replicas_no_grid(42,2))
prob(replicas_no_grid(43,1),replicas_no_grid(43,2))
prob(replicas_no_grid(44,1),replicas_no_grid(44,2))
prob(replicas_no_grid(45,1),replicas_no_grid(45,2))
prob(replicas_no_grid(46,1),replicas_no_grid(46,2))
prob(replicas_no_grid(47,1),replicas_no_grid(47,2))
prob(replicas_no_grid(48,1),replicas_no_grid(48,2))
prob(replicas_no_grid(49,1),replicas_no_grid(49,2))
prob(replicas_no_grid(50,1),replicas_no_grid(50,2))
prob(replicas_no_grid(51,1),replicas_no_grid(51,2))
prob(replicas_no_grid(52,1),replicas_no_grid(52,2))
prob(replicas_no_grid(53,1),replicas_no_grid(53,2))
prob(replicas_no_grid(54,1),replicas_no_grid(54,2))
prob(replicas_no_grid(55,1),replicas_no_grid(55,2))
prob(replicas_no_grid(56,1),replicas_no_grid(56,2))
prob(replicas_no_grid(57,1),replicas_no_grid(57,2))
prob(replicas_no_grid(58,1),replicas_no_grid(58,2))
prob(replicas_no_grid(59,1),replicas_no_grid(59,2))
prob(replicas_no_grid(60,1),replicas_no_grid(60,2))
prob(replicas_no_grid(61,1),replicas_no_grid(61,2))
prob(replicas_no_grid(62,1),replicas_no_grid(62,2))
prob(replicas_no_grid(63,1),replicas_no_grid(63,2))
prob(replicas_no_grid(64,1),replicas_no_grid(64,2))
prob(replicas_no_grid(65,1),replicas_no_grid(65,2))
prob(replicas_no_grid(66,1),replicas_no_grid(66,2))
prob(replicas_no_grid(67,1),replicas_no_grid(67,2))
prob(replicas_no_grid(68,1),replicas_no_grid(68,2))
prob(replicas_no_grid(69,1),replicas_no_grid(69,2))
prob(replicas_no_grid(70,1),replicas_no_grid(70,2))
prob(replicas_no_grid(71,1),replicas_no_grid(71,2))
prob(replicas_no_grid(72,1),replicas_no_grid(72,2))
prob(replicas_no_grid(73,1),replicas_no_grid(73,2))
prob(replicas_no_grid(74,1),replicas_no_grid(74,2))
prob(replicas_no_grid(75,1),replicas_no_grid(75,2))
prob(replicas_no_grid(76,1),replicas_no_grid(76,2))
prob(replicas_no_grid(77,1),replicas_no_grid(77,2))
prob(replicas_no_grid(78,1),replicas_no_grid(78,2))
prob(replicas_no_grid(79,1),replicas_no_grid(79,2))
prob(replicas_no_grid(80,1),replicas_no_grid(80,2))
prob(replicas_no_grid(81,1),replicas_no_grid(81,2))
prob(replicas_no_grid(82,1),replicas_no_grid(82,2))
prob(replicas_no_grid(83,1),replicas_no_grid(83,2))
prob(replicas_no_grid(84,1),replicas_no_grid(84,2))
prob(replicas_no_grid(85,1),replicas_no_grid(85,2))
prob(replicas_no_grid(86,1),replicas_no_grid(86,2))
prob(replicas_no_grid(87,1),replicas_no_grid(87,2))
prob(replicas_no_grid(88,1),replicas_no_grid(88,2))
prob(replicas_no_grid(89,1),replicas_no_grid(89,2))
prob(replicas_no_grid(90,1),replicas_no_grid(90,2))
prob(replicas_no_grid(91,1),replicas_no_grid(91,2))
prob(replicas_no_grid(92,1),replicas_no_grid(92,2))
prob(replicas_no_grid(93,1),replicas_no_grid(93,2))
prob(replicas_no_grid(94,1),replicas_no_grid(94,2))
prob(replicas_no_grid(95,1),replicas_no_grid(95,2))
prob(replicas_no_grid(96,1),replicas_no_grid(96,2))]



save('Mengatto_and_Nagai_2021_PDF_LOOP_'+(string(ReleasePoint)), 'Mengatto_and_Nagai_points_prob') %trocar o source para cada resultado do modelo
% 
csvwrite('Mengatto_and_Nagai_2021_PDF_LOOP_'+(string(ReleasePoint)), Mengatto_and_Nagai_points_prob)
% 
