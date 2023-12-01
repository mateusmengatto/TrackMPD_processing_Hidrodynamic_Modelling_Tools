clc; clear all
%Model information to name
Model_Name= 'CEP' %Model name
Release_Point = 'I' %Release Point Name
Release_date = '01_10_2014' %Release date

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

%INSERT INFORMATION ABOUT THE run_loop
ModelTimeStep=1 %TimeStep of Advection
ReleaseTimeStep=3 %Release time step
ParticleNumberperRelease=10 %Number of particles in each release
Timestep=ReleaseTimeStep/ModelTimeStep

%TRAJECTORYDURATION
for iFile = 1:numel(FileList);
  FileData     = load(FileList(iFile).name);
  DataC{iFile} = FileData.TRAJ.TrajectoryDuration;
end
CompTRAJ.TRAJ.TrajectoryDuration = cat(1, DataC{:});

BeachingTime=CompTRAJ.TRAJ.TrajectoryDuration
csvwrite('BeachingTime_'+string(Release_Point), BeachingTime)