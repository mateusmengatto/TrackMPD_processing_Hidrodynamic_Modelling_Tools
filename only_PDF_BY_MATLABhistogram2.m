%PDF plots histogram values

clc; clear all

%Loc Release Point
A=[-48.354428 -25.562912]
B=[-48.49031 -25.51018]
C=[-48.513244 -25.501061]
D=[-48.530839 -25.500815]
E=[-48.55449 -25.51149]
F=[-48.673374 -25.455981]
G=[-48.70535 -25.43121]
H=[-48.33043 -25.30576]
I=[-48.3845000	-25.6909900
-48.2904400	-25.7054600
-48.3309600	-25.6352800
-48.2451400	-25.6503100
-48.1695500	-25.6624000
-48.2502400	-25.5778200
-48.1675600	-25.5867100
-48.1088800	-25.5603300
-48.1983800	-25.5191400
-48.1367400	-25.4391300]

points=[-48.3544280	-25.5629120
-48.490310	-25.510180
-48.5132440	-25.5010610
-48.5308390	-25.5008150
-48.5544900	-25.5114900
-48.6733740	-25.4559810
-48.7053500	-25.4312100
-48.3304300	-25.3057600
-48.3845000	-25.6909900
-48.2904400	-25.7054600
-48.3309600	-25.6352800
-48.2451400	-25.6503100
-48.1695500	-25.6624000
-48.2502400	-25.5778200
-48.1675600	-25.5867100
-48.1088800	-25.5603300
-48.1983800	-25.5191400
-48.1367400	-25.4391300]

%Pontos das praias validação
urban_beach=[-48.31557	-25.56705
-48.38898	-25.54974
-48.49986	-25.5178
-48.53114	-25.50404
-48.55641	-25.51395
-48.64395	-25.48537
-48.68512	-25.45169
-48.61233	-25.46021
-48.56388	-25.46404
-48.42153	-25.41341
-48.42517	-25.35884
-48.33075	-25.29777
-48.33669	-25.45684]

not_urban_beach=[-48.35742	-25.52321
-48.38231	-25.50282
-48.45808	-25.51042
-48.43065	-25.48394
-48.4998	-25.47681
-48.38968	-25.3386]



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%[Change information]%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ReleasePoint=['ALL']
% load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\PDF_0.01degreegrid_used_article\DATA_HIST\data_0.01grid_'+string(ReleasePoint)+'.mat')
% data=data_A
% point=A


%Load ALL
load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\PDF_0.01degreegrid_used_article\DATA_HIST\all_data_to_histogram_0.01_degree_grid.mat')
data=all_data
point=points
%%Ploting all release point in one (mean probability used to validation)

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

% TRAJ=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40adv_traj\CEP_Loop_compiler_ReleasePoint_'+string(ReleasePoint)+'_01_10_2014_ReleaseTimeStep_6_hrs.mat')
% % PDF=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40_adv_PDF\PDF_Release_Point_'+string(ReleasePoint)+'_30_to_40_loop.mat')
% 
% load(TRAJ)
% % load(PDF)%

mapCEP = shaperead('D:\MATLAB\Pacotes\CEP_cut_1.4v\CEP_cut_1.shp') %CEP map contour
mangue = shaperead('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\SHAPEFILES_e_Maps\mangue\mangues.shp')
% gray=[0.8 0.8 0.8] %Defining gray color
% 
% figure(1)
% 
% scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
% title('Traj_'+string(ReleasePoint))
% Lon=CompTRAJ.Lon;
% Lat=CompTRAJ.Lat;
% Depth=CompTRAJ.Depth;
% FinalLonLatDepth=CompTRAJ.FinalLonLatDepth;
% 
% mapshow(mapCEP,'FaceColor', gray)
% set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

% hold on
% 
% scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
% title('PDF')
% h=histogram2(FinalLonLatDepth(:,1),FinalLonLatDepth(:,2),LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','off','Edgecolor','none') %'ShowEmptyBins','on'
% colorbar
%plot(Lon(1,1),Lat(1,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','r')
% h=histogram2(FinalLonLatDepth(:,1),FinalLonLatDepth(:,2),LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','off','Edgecolor','none','BinMethod','integers','BinWidth',[0.01 0.01]) %'ShowEmptyBins','on'

%Only for I - 10 release pointas
% plot(Lon(1:10,1),Lat(1:10,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','k')
% data=h.Values;
% max(data)

% disp(h)

% LonEdge_bins = h.XBinEdges'
% LatEdge_bins = h.YBinEdges'
% prob=h.Values
% date=h.Data

%%
%Load Single
% load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\PDF_0.01degreegrid_used_article\DATA_HIST\data_0.01grid_'+string(ReleasePoint)+'.mat')


%Load ALL
% load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\PDF_0.01degreegrid_used_article\DATA_HIST\all_data_to_histogram_0.01_degree_grid.mat')
%%Ploting all release point in one (mean probability used to validation)
figure(2)

mapshow(mapCEP,'FaceColor', 'w')

g= [0.47 0.67 0.19]
% set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])
set(gca, 'XLim',[-48.75271942299392 -48.06149138128836], 'YLim',[-25.732812700581697 -25.21439166930253],'Layer', 'top')
box on

hold on
mapshow(mangue, 'FaceColor', 'none', 'EdgeColor', g)

hold on

%Axis and color background
cinzin = [0.94 0.94 0.94]
set(gca,'Color', cinzin, 'FontName', 'Times New Roman')
xticks([-48.7 -48.6 -48.5  -48.4 -48.3  -48.2  -48.1])
xticklabels({'48.7º W',' 48.6º W',' 48.5º W',' 48.4º W',' 48.3º W',' 48.2º W',' 48.1º W'})
yticks([-25.7 -25.6 -25.5 -25.4 -25.3 -25.2])
yticklabels({'25.7º S','25.6º S', '25.5º S','25.4º S','25.3º S','25.2º S'})
ax = gca
ax.LineWidth = 1.5
ax.TickLength = [0.005 0.005]


scalebar('ScaleLength',[0.1],'Location','southeast')
title('PDF'+string(ReleasePoint))
h=histogram2(data(:,1),data(:,2),LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','off','Edgecolor','none') %'ShowEmptyBins','on'
c = gray;
c = flipud(c);
colormap(c)
colorbar

% hold on
% 
% plot(point(:,1),point(:,2),'x','MarkerFaceColor','r','LineWidth',0.5,'MarkerSize',4,'MarkerEdgeColor','r')
% plot(not_urban_beach(:,1),not_urban_beach(:,2),'^','MarkerFaceColor','none','LineWidth',0.5,'MarkerSize',3,'MarkerEdgeColor','m')
% plot(urban_beach(:,1),urban_beach(:,2),'s','MarkerFaceColor','none','LineWidth',0.5,'MarkerSize',4,'MarkerEdgeColor','m')


hold on
plot(point(:,1),point(:,2),'x','MarkerFaceColor','r','LineWidth',1,'MarkerSize',5,'MarkerEdgeColor','r');
hold on
plot(urban_beach(:,1),urban_beach(:,2),'s','MarkerFaceColor','none','LineWidth',1,'MarkerSize',6,'MarkerEdgeColor','m')
plot(not_urban_beach(:,1),not_urban_beach(:,2),'^','MarkerFaceColor','none','LineWidth',1,'MarkerSize',5,'MarkerEdgeColor','m')
hold on
xlabel('Longitude')
ylabel('Latitude')

