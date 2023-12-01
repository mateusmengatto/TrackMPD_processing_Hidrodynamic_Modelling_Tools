
clc; clear all;

%carregando a pdf.mat com o grid
load(PDF=('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_Modelo Dissertação\Loop_30_40_adv_PDF\PDF_Release_Point_'+string(ReleasePoint)+'_30_to_40_loop.mat')

%dominios do grid
x_vector = [LonEdge];
y_vector = [LatEdge];


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


salvo
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

%Salvo xls
xlswrite('replicas_no_grid', replicas_no_grid)

%Salvo matlab file 

path_res= pwd'% Modify: folder to save data
namefile='Replicas_no_grid'

save([namefile], 'replicas', 'replicas_no_grid', 'x_vector', 'y_vector')



