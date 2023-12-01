%Plot New TrackMPD with loop
%Sources A, B, C, D, E, F, G, H, I

%%
clear all, clc

%%
%Ploting trajectories and PDF maps

%Files for all maps


mapCEP = shaperead('D:\MATLAB\Pacotes\CEP_cut_1.4v\CEP_cut_1.shp') %CEP map contour

labels =[  text(-48.314513,-25.568124,'L1') %Beach locations labels
text(-48.34837,-25.5201,'L2')
text(-48.37639,-25.50308,'L3')
text(-48.389256,-25.551395,'L4')
text(-48.450644,-25.513185,'L5')
text(-48.426283,-25.485804,'L6')
text(-48.4997787,-25.5181055,'L7')
text(-48.530263,-25.508765,'L8')
text(-48.579055,-25.511132,'L9')
text(-48.63915,-25.48689,'L10')
text(-48.6843092,-25.4510018,'L11')
text(-48.616824,-25.457414,'L12')
text(-48.5612,-25.465201,'L13')
text(-48.498763,-25.471426,'L14')
text(-48.438564,-25.413605,'L15')
text(-48.424543,-25.358571,'L16')
text(-48.387092,-25.338592,'L17')
text(-48.324477,-25.296013,'L18')
text(-48.348591,-25.456858,'L19')]

gray=[0.8 0.8 0.8] %Defining gray color

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%Source A

TRAJ_A=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40adv_traj\CEP_Loop_compiler_ReleasePoint_A_01_10_2014_ReleaseTimeStep_6_hrs')
PDF_A=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40_adv_PDF\PDF_Release_Point_A_30_to_40_loop')


%Trajectories
figure(1);
load(TRAJ_A)

mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('Traj A')
Lon=CompTRAJ.Lon;
Lat=CompTRAJ.Lat;
Depth=CompTRAJ.Depth;
FinalLonLatDepth=CompTRAJ.FinalLonLatDepth;

% Number of particles and of time stamps
[NumParticles TimeSteps]=size(Lat); 

for i=1:NumParticles
plot(Lon(i,:),Lat(i,:),'color','b','LineWidth',0.001); %Trajectory% 
plot(Lon(i,1),Lat(i,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','r'); %Release point
plot(FinalLonLatDepth(i,1),FinalLonLatDepth(i,2),'.','color','r','MarkerSize',1); %Fate  
end



%PDF
figure(2)

load(PDF_A)
mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('PDF A')
h=histogram2(Lon_pdf0,Lat_pdf0,LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','off','Edgecolor','none','FaceColor','flat') %'ShowEmptyBins','on'
colorbar
plot(Lon(1,1),Lat(1,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','k')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%

%Source B

TRAJ_B=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40adv_traj\CEP_Loop_compiler_ReleasePoint_B_01_10_2014_ReleaseTimeStep_6_hrs')
PDF_B=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40_adv_PDF\PDF_Release_Point_B_30_to_40_loop')


%Trajectories
figure(3);
load(TRAJ_B)

mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('Traj B')
Lon=CompTRAJ.Lon;
Lat=CompTRAJ.Lat;
Depth=CompTRAJ.Depth;
FinalLonLatDepth=CompTRAJ.FinalLonLatDepth;

% Number of particles and of time stamps
[NumParticles TimeSteps]=size(Lat); 

for i=1:NumParticles
plot(Lon(i,:),Lat(i,:),'color','b','LineWidth',0.001); %Trajectory% 
plot(Lon(i,1),Lat(i,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','r'); %Release point
plot(FinalLonLatDepth(i,1),FinalLonLatDepth(i,2),'.','color','r','MarkerSize',1); %Fate  
end



%PDF
figure(4)

load(PDF_B)
mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('PDF B')
h=histogram2(Lon_pdf0,Lat_pdf0,LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','off','Edgecolor','none') %'ShowEmptyBins','on'
colorbar
plot(Lon(1:10,1),Lat(1:10,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','k')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%Source C

TRAJ_C=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40adv_traj\CEP_Loop_compiler_ReleasePoint_C_01_10_2014_ReleaseTimeStep_6_hrs')
PDF_C=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40_adv_PDF\PDF_Release_Point_C_30_to_40_loop')


%Trajectories
figure(5)
load(TRAJ_C)

mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('Traj C')
Lon=CompTRAJ.Lon;
Lat=CompTRAJ.Lat;
Depth=CompTRAJ.Depth;
FinalLonLatDepth=CompTRAJ.FinalLonLatDepth;

% Number of particles and of time stamps
[NumParticles TimeSteps]=size(Lat); 

for i=1:NumParticles
plot(Lon(i,:),Lat(i,:),'color','b','LineWidth',0.001); %Trajectory% 
plot(Lon(i,1),Lat(i,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','r'); %Release point
plot(FinalLonLatDepth(i,1),FinalLonLatDepth(i,2),'.','color','r','MarkerSize',1); %Fate  
end



%PDF
figure(6)

load(PDF_C)
mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('PDF C')
h=histogram2(Lon_pdf0,Lat_pdf0,LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','off','Edgecolor','none') %'ShowEmptyBins','on'
colorbar
plot(Lon(1,1),Lat(1,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','k')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%Source D

TRAJ_D=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40adv_traj\CEP_Loop_compiler_ReleasePoint_D_01_10_2014_ReleaseTimeStep_6_hrs')
PDF_D=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40_adv_PDF\PDF_Release_Point_D_30_to_40_loop')


%Trajectories
figure(7)
load(TRAJ_D)

mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('Traj D')
Lon=CompTRAJ.Lon;
Lat=CompTRAJ.Lat;
Depth=CompTRAJ.Depth;
FinalLonLatDepth=CompTRAJ.FinalLonLatDepth;

% Number of particles and of time stamps
[NumParticles TimeSteps]=size(Lat); 

for i=1:NumParticles
plot(Lon(i,:),Lat(i,:),'color','b','LineWidth',0.001); %Trajectory% 
plot(Lon(i,1),Lat(i,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','r'); %Release point
plot(FinalLonLatDepth(i,1),FinalLonLatDepth(i,2),'.','color','r','MarkerSize',1); %Fate  
end



%PDF
figure(8)

load(PDF_D)
mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('PDF D')
h=histogram2(Lon_pdf0,Lat_pdf0,LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','off','Edgecolor','none') %'ShowEmptyBins','on'
colorbar
plot(Lon(1,1),Lat(1,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','k')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%Source E

TRAJ_E=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40adv_traj\CEP_Loop_compiler_ReleasePoint_E_01_10_2014_ReleaseTimeStep_6_hrs')
PDF_E=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40_adv_PDF\PDF_Release_Point_E_30_to_40_loop')


%Trajectories
figure(9)
load(TRAJ_E)

mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('Traj E')
Lon=CompTRAJ.Lon;
Lat=CompTRAJ.Lat;
Depth=CompTRAJ.Depth;
FinalLonLatDepth=CompTRAJ.FinalLonLatDepth;

% Number of particles and of time stamps
[NumParticles TimeSteps]=size(Lat); 

for i=1:NumParticles
plot(Lon(i,:),Lat(i,:),'color','b','LineWidth',0.001); %Trajectory% 
plot(Lon(i,1),Lat(i,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','r'); %Release point
plot(FinalLonLatDepth(i,1),FinalLonLatDepth(i,2),'.','color','r','MarkerSize',1); %Fate  
end



%PDF
figure(10)
load(PDF_E)
mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('PDF E')
h=histogram2(Lon_pdf0,Lat_pdf0,LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','off','Edgecolor','none') %'ShowEmptyBins','on'
colorbar
plot(Lon(1,1),Lat(1,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','k')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%Source F

TRAJ_F=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40adv_traj\CEP_Loop_compiler_ReleasePoint_F_01_10_2014_ReleaseTimeStep_6_hrs')
PDF_F=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40_adv_PDF\PDF_Release_Point_F_30_to_40_loop')


%Trajectories
figure(11)
load(TRAJ_F)

mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('Traj F')
Lon=CompTRAJ.Lon;
Lat=CompTRAJ.Lat;
Depth=CompTRAJ.Depth;
FinalLonLatDepth=CompTRAJ.FinalLonLatDepth;

% Number of particles and of time stamps
[NumParticles TimeSteps]=size(Lat); 

for i=1:NumParticles
plot(Lon(i,:),Lat(i,:),'color','b','LineWidth',0.001); %Trajectory% 
plot(Lon(i,1),Lat(i,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','r'); %Release point
plot(FinalLonLatDepth(i,1),FinalLonLatDepth(i,2),'.','color','r','MarkerSize',1); %Fate  
end



%PDF
figure(12)

load(PDF_F)
mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('PDF F')
h=histogram2(Lon_pdf0,Lat_pdf0,LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','off','Edgecolor','none') %'ShowEmptyBins','on'
colorbar
plot(Lon(1,1),Lat(1,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','k')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%Source G

TRAJ_G=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40adv_traj\CEP_Loop_compiler_ReleasePoint_G_01_10_2014_ReleaseTimeStep_6_hrs')
PDF_G=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40_adv_PDF\PDF_Release_Point_G_30_to_40_loop')


%Trajectories
figure(13)
load(TRAJ_G)

mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('Traj G')
Lon=CompTRAJ.Lon;
Lat=CompTRAJ.Lat;
Depth=CompTRAJ.Depth;
FinalLonLatDepth=CompTRAJ.FinalLonLatDepth;

% Number of particles and of time stamps
[NumParticles TimeSteps]=size(Lat); 

for i=1:NumParticles
plot(Lon(i,:),Lat(i,:),'color','b','LineWidth',0.001); %Trajectory% 
plot(Lon(i,1),Lat(i,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','r'); %Release point
plot(FinalLonLatDepth(i,1),FinalLonLatDepth(i,2),'.','color','r','MarkerSize',1); %Fate  
end



%PDF
figure(14)

load(PDF_G)
mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('PDF G')
h=histogram2(Lon_pdf0,Lat_pdf0,LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','off','Edgecolor','none') %'ShowEmptyBins','on'
colorbar
plot(Lon(1,1),Lat(1,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','k')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%Source H

TRAJ_H=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40adv_traj\CEP_Loop_compiler_ReleasePoint_H_01_10_2014_ReleaseTimeStep_6_hrs')
PDF_H=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40_adv_PDF\PDF_Release_Point_H_30_to_40_loop')


%Trajectories
figure(15)
load(TRAJ_H)

mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('Traj H')
Lon=CompTRAJ.Lon;
Lat=CompTRAJ.Lat;
Depth=CompTRAJ.Depth;
FinalLonLatDepth=CompTRAJ.FinalLonLatDepth;

% Number of particles and of time stamps
[NumParticles TimeSteps]=size(Lat); 

for i=1:NumParticles
plot(Lon(i,:),Lat(i,:),'color','b','LineWidth',0.001); %Trajectory% 
plot(Lon(i,1),Lat(i,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','r'); %Release point
plot(FinalLonLatDepth(i,1),FinalLonLatDepth(i,2),'.','color','r','MarkerSize',1); %Fate  
end



%PDF
figure(16)

load(PDF_H)
mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('PDF H')

h=histogram2(Lon_pdf0,Lat_pdf0,LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','off','Edgecolor','none') %'ShowEmptyBins','on'
colorbar
plot(Lon(1,1),Lat(1,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','k')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%Source I

TRAJ_I=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40adv_traj\CEP_Loop_compiler_ReleasePoint_I_01_10_2014_ReleaseTimeStep_6_hrs')
PDF_I=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40_adv_PDF\PDF_Release_Point_I_30_to_40_loop')


%Trajectories
figure(17)
hold on
subplot(1,2,1)
load(TRAJ_I)

mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')
title('Traj I')
Lon=CompTRAJ.Lon;
Lat=CompTRAJ.Lat;
Depth=CompTRAJ.Depth;
FinalLonLatDepth=CompTRAJ.FinalLonLatDepth;

% Number of particles and of time stamps
[NumParticles TimeSteps]=size(Lat); 

for i=1:NumParticles
plot(Lon(i,:),Lat(i,:),'color','b','LineWidth',0.001); %Trajectory% 
plot(Lon(i,1),Lat(i,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','r'); %Release point
plot(FinalLonLatDepth(i,1),FinalLonLatDepth(i,2),'.','color','r','MarkerSize',1); %Fate  
end



%PDF
figure(18)

load(PDF_I)
mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

title('PDF I')
scalebar('ScaleLength',[0.0975895384014834],'Location','southeast')

h=histogram2(Lon_pdf0,Lat_pdf0,LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','off','Edgecolor','none') %'ShowEmptyBins','on'
colorbar
plot(Lon(1:10,1),Lat(1:10,1),'x','MarkerFaceColor','c','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','k')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%


