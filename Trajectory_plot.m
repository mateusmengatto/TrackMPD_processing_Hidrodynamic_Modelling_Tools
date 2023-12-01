%New plot trajectories
clc; clear all;

%%
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
%%%%%%%%%%%%%%%%%%%%%%

ReleasePoint=['A']
point=A

%%%%%%%%%%%%%%%%%%%%%%%
load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40adv_traj\CEP_Loop_compiler_ReleasePoint_'+string(ReleasePoint)+'_01_10_2014_ReleaseTimeStep_6_hrs')

Lon=CompTRAJ.Lon;
Lat=CompTRAJ.Lat;
Depth=CompTRAJ.Depth;
FinalLonLatDepth=CompTRAJ.FinalLonLatDepth;


[NumParticles TimeSteps]=size(Lat); 

mapCEP = shaperead('D:\MATLAB\Pacotes\CEP_cut_1.4v\CEP_cut_1.shp')

figure(3)

mapshow(mapCEP,'FaceColor', 'w')
% set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])
set(gca, 'XLim',[-48.75271942299392 -48.06149138128836], 'YLim',[-25.732812700581697 -25.21439166930253],'Layer', 'top')
box on

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
title('Trajectory '+string(ReleasePoint))

for i=1:NumParticles
plot(Lon(i,:),Lat(i,:),'color',[0.7 0.7 0.7],'LineWidth',0.001); %Trajectory% 

end

plot(FinalLonLatDepth(:,1),FinalLonLatDepth(:,2),'o','MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',1); %Fate
hold on
mapshow(mapCEP,'FaceColor', 'none')
hold on
plot(point(:,1),point(:,2),'x','MarkerFaceColor','r','LineWidth',1,'MarkerSize',4,'MarkerEdgeColor','r');