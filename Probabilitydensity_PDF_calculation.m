% Post-processing and plot: continuous release of particles
% I.Jalon-Rojas 7/3/18
% Please, cite the following paper when using this script: 
% Jal√≥n-Rojas, I., Wang, X.H., Fredj, E. (2019). On the importance 
%of a three-dimensional approach for modelling Marine Plastic Debris transport. 
%Ocean Science, 15, 717-724, doi: 10.5194/os-15-717-2019.

clear all; close all; clc;


p1=12015; %Modify: 1st particle of each scenario
p2=13224; %Modify: last particle of each scenario

path_res='C:\Users\UFPR\Desktop\TrackMPD_Toolbox\Paranagu· 2D trackMPD\30lib_40adv_density\Only_beached\'% Modify: folder to save data
namefile='Densitymap_30lib_40advc_onlybeached_loc13'; %Modify: file name of the results (to be saved)

conf = input_conf;

% time period (drifters release date)
ReleaseTime1 = datenum(2014,10,01,00,00,00); %Modify
ReleaseTimeEnd = datenum(2014,11,09,23,00,00); %Modify (if only one release, ReleaseTime1=ReleaseTimeEnd and no ReleaseTimeStep)
ReleaseTimeStep = 1/4; %Modify

dtime = ReleaseTime1:ReleaseTimeStep:ReleaseTimeEnd; 

NumParticles=13224; %Modify: Total number of particles of each scenario

advTime=961;  %Modify: Advection time (in hours)
advTime=advTime/24*(1/conf.Traj.TimeStep)

for i = 1:length(dtime)
    t0 = dtime(i);


% Open data (Trajectories)

filename = fullfile('C:\Users\UFPR\Desktop\TrackMPD_Toolbox\Paranagu· 2D trackMPD\30lib_40adv_density\Only_beached\CEP_30lib_40adv_onlyBeached.mat');
%filename =fullfile(conf.Traj.BaseDir,strcat(conf.Traj.ScenarioName,datestr(t0,'ddmmyy_HHMM'),'.mat'));

%fullfile(conf.Traj.BaseDir,strcat(conf.Traj.ScenarioName,datestr(t0,'ddmmyy_HHMM'),'.mat'));%original
load(filename);

Lon(:,:,i)=TRAJ.Lon;
Lat(:,:,i)=TRAJ.Lat;

FinalLonLatDepth(:,:,i)=TRAJ.FinalLonLatDepth;

time(i,:)=TRAJ.TimeStamp;

end

%Fill NaNs with last position
for i = 1:length(dtime)
   for j=1:NumParticles
      posNaN=isnan(Lon(j,:,i));
      Lon(j,posNaN,i)=FinalLonLatDepth(j,1,i);
      Lat(j,posNaN,i)=FinalLonLatDepth(j,2,i);
       
   end
end

Lon=Lon(:,1:advTime,:);
Lat=Lat(:,1:advTime,:);
time=time(:,1:advTime);
FinalLonLatDepth(:,1,:)=Lon(:,end,:);
FinalLonLatDepth(:,2,:)=Lat(:,end,:);

% Open coast
bln = 'C:\Users\UFPR\Desktop\TrackMPD_Toolbox\Paranagu· 2D trackMPD\InputDataParanagua\CEP_domain.txt';
coast = load(bln);
xx = coast(:,1); yy = coast(:,2);
% bln1 = 'c:\work\pom\GetInputs\bathy\coast\bowen_island.dat';
% coast1 = load(bln1);
% xx1 = coast1(:,1); yy1 = coast1(:,2);

% Figure 1. Plot trajectories from one release point

%%

figure(1);
subplot(1,2,1)
fill(xx,yy,[0.7 0.7 0.7]); hold on;
%fill(xx1,yy1,[0.7 0.7 0.7]); hold on;
 set(gca,'Ylim',[-27 -24])%,'YTick',[-35.3 -35.05 -34.8]);
 set(gca,'Xlim',[-49 -47])%,'XTick',[150.65 150.95]);
hold on;


for i = 1:length(dtime)
   for j=p1:p2  
    plot(Lon(j,:,i),Lat(j,:,i),'color',[0.8 0.8 0.8])
    plot(Lon(j,1,1),Lat(j,1,1),'xr','MarkerSize',8,'LineWidth',2);
   end
end

for i = 1:length(dtime)
   for j=p1:p2 
    plot(FinalLonLatDepth(j,1,i),FinalLonLatDepth(j,2,i),'.k','MarkerSize',8)
   end
end



%%%%%%%%% Lagrangina probability density function

LonEdge=TRAJ.Grid.Lon;
LatEdge=TRAJ.Grid.Lat;

cont=1;
for i = 1:length(dtime)
   for j=p1:p2 %:360  
   Lon_pdf0(cont)=Lon(j,advTime,i);
   Lat_pdf0(cont)=Lat(j,advTime,i);
   cont=cont+1;
   end
end


fig2=figure(2); 
h=histogram2(Lon_pdf0,Lat_pdf0,LonEdge,LatEdge,'normalization','probability','DisplayStyle','tile','ShowEmptyBins','on'); %,'Edgecolor','none') %'ShowEmptyBins','on'
hold on;
fill(xx,yy,[0.7 0.7 0.7]); hold on;
%fill(xx1,yy1,[0.7 0.7 0.7]); hold on;
set(gca,'Ylim',[-27 -24]); %,'YTick',[-35.3 -35.05 -34.8]);
set(gca,'Xlim',[-49 -47]); %,'XTick',[150.65 150.95]);
colorbar
%
prob=h.Values;
[n m]=size(prob);


[longrid,latgrid]=meshgrid(LonEdge(1:end-1),LatEdge(1:end-1));

figure(1); %%% !!!!Hay que elegir un momento concreto. e.g. TRAJ.Lon(:,20)
subplot(1,2,2)
pcolor(longrid,latgrid,prob')
shading interp
hold on;
fill(xx,yy,[0.7 0.7 0.7]); hold on;
%fill(xx1,yy1,[0.7 0.7 0.7]); hold on;
set(gca,'Ylim',[-27 -24]); %,'YTick',[-35.3 -35.05 -34.8]);
set(gca,'Xlim',[-49 -47]); %,'XTick',[150.65 150.95]);
colorbar
plot(Lon(j,1,1),Lat(j,1,1),'xk','MarkerSize',8,'LineWidth',2);


%Original save
%save([path_res namefile],'FinalLonLatDepth','Lon','Lat','Lon_pdf0','Lat_pdf0','LonEdge','LatEdge','longrid','latgrid','prob')

%Saving without Lon and Lat
save([path_res namefile],'FinalLonLatDepth','Lon_pdf0','Lat_pdf0','LonEdge','LatEdge','longrid','latgrid','prob')



