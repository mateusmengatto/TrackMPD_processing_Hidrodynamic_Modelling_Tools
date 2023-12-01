domain=load('poly1.txt')
domain2=load('poly2.txt')
domain3=load('poly3.txt')
fill(domain(:,1),domain(:,2),[0.5,0.5,0.5])
hold on
fill(domain2(:,1),domain2(:,2),[0.5,0.5,0.5])
fill(domain3(:,1),domain3(:,2),[0.5,0.5,0.5])

%%

S=shaperead('CEP_cut_1.shp')
data = [S.X,S.Y];     % some random data 
save 'CEP_cut_1.dat' data -asci   % save to myfile.dat 
load CEP_cut_1.dat   % load the file
plot(CEP_cut_1(:,1),CEP_cut_1(:,2))


clear all

CEP_cut_1=load('CEP_cut_1x.txt')

%%

S = shaperead('CEP.shp')
area = shaperead('s', 'UseGeoCoords', true);
geoshow( area , 'Facecolor', 'blue')

fdist
 %%
 
 
 
domain_all=load('all_3_polys.txt')
fill(domain_all(:,1),domain_all(:,2),[1,1,1])

%%

shapefile = 'CEP_cut_1.shp' ;
S = shaperead(shapefile) ;
N = length(S) ;
for i = 1:N
    plot(S(i).X,S(i).Y)
    hold on
end
lon = (S.X) ;
lat = (S.Y)
[X,Y] = meshgrid(lon,lat) ;
data = load('testarray.mat') ; data = data.testarray ;
[nx,ny,d] = size(data) ;
%%Extract data 
iwant = cell(d,N) ;
for i =1:d
    A = data(:,:,i) ;
    for j = 1:N
        idx = inpolygon(X(:),Y(:),S(i).X,S(i).Y) ;
        iwant{i,j} = A(idx) ;
    end
end
