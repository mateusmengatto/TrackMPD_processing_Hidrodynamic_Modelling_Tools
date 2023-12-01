clc; clear all;

%%
ReleasePoint='I' %Change de Release Point to script select the file

myVideo = VideoWriter('Traj_I.mp4')% Change the name of video to save
myVideo.FrameRate = 10; %can adjust this, 5 - 10 works well for me

TRAJ=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40adv_traj\CEP_Loop_compiler_ReleasePoint_'+string(ReleasePoint)+'_01_10_2014_ReleaseTimeStep_6_hrs')
load(TRAJ)

Lon=CompTRAJ.Lon;
Lat=CompTRAJ.Lat;
mapCEP = shaperead('D:\MATLAB\Pacotes\CEP_cut_1.4v\CEP_cut_1.shp')
gray=[0.8 0.8 0.8]
[NumParticles TimeSteps]=size(Lat);

figure(1)

mapshow(mapCEP,'FaceColor', gray)
set(gca,  'XLim', [-48.76790878354535 -48.076680741839795], 'YLim',[-25.73017106547615 -25.21175003419698])

hold on

%Open Moon and Tide for title
[num,txt,raw] = xlsread('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\MOON.xlsx') %Moon phases and tides to legend
moon = txt


%Data to variables
scalebar('ScaleLength',[0.1],'Location','southeast')
Lon=CompTRAJ.Lon;
Lat=CompTRAJ.Lat;
Depth=CompTRAJ.Depth;
FinalLonLatDepth=CompTRAJ.FinalLonLatDepth

%Transforming data (only for animation)
Lat2=fillmissing(Lat, 'previous', 2)
Lon2=fillmissing(Lon, 'previous', 2)

open(myVideo)

%Plot points
for i=1:TimeSteps
    hold on
    h=plot(Lon2(:,i),Lat2(:,i),'.','color','r','MarkerSize', 2); 
    hold on
    title(['Release Point '+string(ReleasePoint)+' - '+string(datestr(CompTRAJ.TimeStamp(i),'dd/mmm/yyyy HH:MM'))+' - Moon:'+string(moon(i,2))+' - '+string(moon(i,1))])
    pause(0.1)
      
    frame = getframe(gcf); %get frame
    writeVideo(myVideo, frame);
    delete(h)  
end
plot(Lon2(:,TimeSteps),Lat2(:,TimeSteps),'.','color','r','MarkerSize', 2);
hold off

close(myVideo)

%%
