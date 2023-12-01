
% clc; clear all;
%PDF plots histogram values

clc; clear all
ReleasePoint=['I']

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

% ReleasePoint=['A']
%carregando a pdf.mat com o grid
%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40_adv_PDF\PDF_Release_Point_'+string(ReleasePoint)+'_30_to_40_loop.mat')

%dominios do grid
% x_vector = [LonEdge];
% y_vector = [LatEdge];

x_vector = [LonEdge_bins];
y_vector = [LatEdge_bins];


%From Vieira et al., 2021

K1=[-48.3314944444444,-25.2993083333333]
K2=[-48.386175,-25.3361722222222]
K3=[-48.3278027777778,-25.3605611111111]
K4=[-48.4261277777778,-25.3529277777778]
K5=[-48.4535694444444,-25.3757388888889]
K6=[-48.3826888888889,-25.5052194444444]
K7=[-48.6078722222222,-25.4606055555556]
K8=[-48.6732638888889,-25.4586388888889]
K9=[-48.6450138888889,-25.4834472222222]
K10=[-48.5632666666667,-25.4638611111111]

%x

K1_x_grid=find(x_vector<=K1(1),1,'last')
K2_x_grid=find(x_vector<=K2(1),1,'last')
K3_x_grid=find(x_vector<=K3(1),1,'last')
K4_x_grid=find(x_vector<=K4(1),1,'last')
K5_x_grid=find(x_vector<=K5(1),1,'last')
K6_x_grid=find(x_vector<=K6(1),1,'last')
K7_x_grid=find(x_vector<=K7(1),1,'last')
K8_x_grid=find(x_vector<=K8(1),1,'last')
K9_x_grid=find(x_vector<=K9(1),1,'last')
K10_x_grid=find(x_vector<=K10(1),1,'last')

%y

K1_y_grid=find(y_vector<=K1(2),1,'last')
K2_y_grid=find(y_vector<=K2(2),1,'last')
K3_y_grid=find(y_vector<=K3(2),1,'last')
K4_y_grid=find(y_vector<=K4(2),1,'last')
K5_y_grid=find(y_vector<=K5(2),1,'last')
K6_y_grid=find(y_vector<=K6(2),1,'last')
K7_y_grid=find(y_vector<=K7(2),1,'last')
K8_y_grid=find(y_vector<=K8(2),1,'last')
K9_y_grid=find(y_vector<=K9(2),1,'last')
K10_y_grid=find(y_vector<=K10(2),1,'last')


%Qual pixel as amostras estão?

K1_what_grid=[K1_x_grid K1_y_grid]
K2_what_grid=[K2_x_grid K2_y_grid]
K3_what_grid=[K3_x_grid K3_y_grid]
K4_what_grid=[K4_x_grid K4_y_grid]
K5_what_grid=[K5_x_grid K5_y_grid]
K6_what_grid=[K6_x_grid K6_y_grid]
K7_what_grid=[K7_x_grid K7_y_grid]
K8_what_grid=[K8_x_grid K8_y_grid]
K9_what_grid=[K9_x_grid K9_y_grid]
K10_what_grid=[K10_x_grid K10_y_grid]



replicas_no_grid =[K1_what_grid
K2_what_grid
K3_what_grid
K4_what_grid
K5_what_grid
K6_what_grid
K7_what_grid
K8_what_grid
K9_what_grid
K10_what_grid]

Vieira_et_al_2021_points_prob=[prob(replicas_no_grid(1,1),replicas_no_grid(1,2))
prob(replicas_no_grid(2,1),replicas_no_grid(2,2))
prob(replicas_no_grid(3,1),replicas_no_grid(3,2))
prob(replicas_no_grid(4,1),replicas_no_grid(4,2))
prob(replicas_no_grid(5,1),replicas_no_grid(5,2))
prob(replicas_no_grid(6,1),replicas_no_grid(6,2))
prob(replicas_no_grid(7,1),replicas_no_grid(7,2))
prob(replicas_no_grid(8,1),replicas_no_grid(8,2))
prob(replicas_no_grid(9,1),replicas_no_grid(9,2))
prob(replicas_no_grid(10,1),replicas_no_grid(10,2))]


save('Vieira_et_al_2021_PDF_LOOP_'+(string(ReleasePoint)), 'Vieira_et_al_2021_points_prob') %trocar o source para cada resultado do modelo

csvwrite('Vieira_et_al_2021_PDF_LOOP_'+(string(ReleasePoint)), Vieira_et_al_2021_points_prob)


