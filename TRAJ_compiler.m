clc; clear all;
%%
%%% Compile TRAJ from the same release time %%%
%For LOOP model - for different release time particles run%

%%FIRTS <- Open the directory containing model files each source

%Model information to name
Model_Name= 'CEP' %Model name
Release_Point = 'I' %Release Point Name
Release_date = '01_10_2014' %Release date

%INSERT INFORMATION ABOUT THE run_loop
ModelTimeStep=1 %TimeStep of Advection %hour
ReleaseTimeStep=6 %Release time step %hour
ParticleNumberperRelease=10 %Number of particles in each release
Timestep=ReleaseTimeStep/ModelTimeStep

%%
FileList = dir('*.mat'); 
DataC = cell(1, numel(FileList));
load(FileList(1,:).name);
CompTRAJ.Type=TRAJ.Type;
CompTRAJ.TrajectoryDomain=TRAJ.TrajectoryDomain;
CompTRAJ.CreationInfo=TRAJ.CreationInfo;
CompTRAJ.TimeStamp=TRAJ.TimeStamp;
CompTRAJ.TimeZone=TRAJ.TimeZone;
CompTRAJ.LonLatUnits=TRAJ.LonLatUnits;
CompTRAJ.DepthUnits=TRAJ.DepthUnits;

CompTRAJ.TRAJ_struct_version=TRAJ.TRAJ_struct_version;
CompTRAJ.conf=TRAJ.conf;
CompTRAJ.Domain=TRAJ.Domain;
CompTRAJ.Grid=TRAJ.Grid;

%LAT
for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  x= FileData.TRAJ.Lat;
  M = NaN(ParticleNumberperRelease,((iFile - 1)*Timestep))
  DataC{iFile} = [M x];
end
CompTRAJ.Lat = cat(1, DataC{:});  

%LON

for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  x= FileData.TRAJ.Lon;
  M = NaN(ParticleNumberperRelease,((iFile - 1)*Timestep))
  DataC{iFile} = [M x];
end
CompTRAJ.Lon = cat(1, DataC{:});  

%DEPTH
for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  x= FileData.TRAJ.Depth;
  M = NaN(ParticleNumberperRelease,((iFile - 1)*Timestep));
  DataC{iFile} = [M x];
end
CompTRAJ.Depth = cat(1, DataC{:});  

%DEPTH_BOTTOM_TRAJ
for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  x= FileData.TRAJ.DepthBottomTraj;
  M = NaN(ParticleNumberperRelease,((iFile - 1)*Timestep));
  DataC{iFile} = [M x];
end
CompTRAJ.DepthBottomTraj = cat(1, DataC{:});  

%INITIAL_LON_LAT_DEPTH
for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  DataC{iFile} = FileData.TRAJ.InitialLonLatDepth;
end
CompTRAJ.InitialLonLatDepth = cat(1, DataC{:});

%FINAL_LON_LAT_DEPTH
for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  DataC{iFile} = FileData.TRAJ.FinalLonLatDepth;
end
CompTRAJ.FinalLonLatDepth = cat(1, DataC{:});

%FATE_TYPE
for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  DataC{iFile} = FileData.TRAJ.FateType;
end
CompTRAJ.FateType = cat(1, DataC{:});

%TIME_BEACHING
for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  DataC{iFile} = FileData.TRAJ.TimeBeaching;
end
CompTRAJ.TimeBeaching = cat(1, DataC{:});

%TIME_SETTLING
for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  DataC{iFile} = FileData.TRAJ.TimeSettling;
end
CompTRAJ.TimeSettling = cat(1, DataC{:});

%TIME_OUT_DOMAIN
for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  DataC{iFile} = FileData.TRAJ.TimeOutDomain;
end
CompTRAJ.TimeSettling = cat(1, DataC{:});

%WATER_PARTICLES
for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  DataC{iFile} = FileData.TRAJ.WaterParticles;
end
y = cat(1, DataC{:});
CompTRAJ.WaterParticles = sum(y)

%BEACHED_PARTICLES
for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  DataC{iFile} = FileData.TRAJ.BeachedParticles;
end
y = cat(1, DataC{:});
CompTRAJ.BeachedParticles = sum(y)

%BOTTOM_PARTICLES
for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  DataC{iFile} = FileData.TRAJ.BottomParticles;
end
y = cat(1, DataC{:});
CompTRAJ.BottomParticles = sum(y)

%OUT_DOMAIN_PARTICLES
for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  DataC{iFile} = FileData.TRAJ.OutDomainParticles;
end
y = cat(1, DataC{:});
CompTRAJ.OutDomainParticles = sum(y)

%% SAVING
save(string(Model_Name)+'_Loop_compiler_ReleasePoint_'+string(Release_Point)+'_'+string(Release_date)+'_ReleaseTimeStep_'+string(ReleaseTimeStep)+'_hrs','CompTRAJ');

disp('++++++++++++ $$$$$$$$$$$$$$$$$$ FILE created in the directory $$$$$$$$$$$$$$$$ ++++++++++++')