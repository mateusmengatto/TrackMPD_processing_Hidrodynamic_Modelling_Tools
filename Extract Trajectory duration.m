
%Model information to name
Model_Name= 'CEP' %Model name
Release_Point = 'A' %Release Point Name
Release_date = '01_10_2014' %Release date

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