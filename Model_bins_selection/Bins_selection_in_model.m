clc; clear all;


%carregando a pdf.mat com o grid
load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\30dias-liberação_40dias-adv_10particulas-a-cada-6-horas-13fontes(Atual)\Prob_density_Loc_per_1210_part_no_calculo\CEP_30lib_40adv_Prob_density_partotal1210_Loc1.mat')

%dominios do grid
x_vector = [LonEdge];
y_vector = [LatEdge];

%arquivos com bins selecionados
load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\New_criteria_1_bin_extrapolation\Bins_selecteds_1_bin_extrapolation_criteria_all_locations.mat')

%% L1 Encatadas

%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Selected_bins_praias\Bins_selecionados\Encantadas_L1_bins')
Encantadas_1=[Encantadas_L1_bin(1,1),Encantadas_L1_bin(1,2)]
Encantadas_2=[Encantadas_L1_bin(2,1),Encantadas_L1_bin(2,2)]
Encantadas_3=[Encantadas_L1_bin(3,1),Encantadas_L1_bin(3,2)]
Encantadas_4=[Encantadas_L1_bin(4,1),Encantadas_L1_bin(4,2)]
Encantadas_5=[Encantadas_L1_bin(5,1),Encantadas_L1_bin(5,2)]
Encantadas_6=[Encantadas_L1_bin(6,1),Encantadas_L1_bin(6,2)]
Encantadas_7=[Encantadas_L1_bin(7,1),Encantadas_L1_bin(7,2)]
Encantadas_8=[Encantadas_L1_bin(8,1),Encantadas_L1_bin(8,2)]
Encantadas_9=[Encantadas_L1_bin(9,1),Encantadas_L1_bin(9,2)]

Encantadas_1_x_grid=find(x_vector<=Encantadas_1(1),1,'last');
Encantadas_2_x_grid=find(x_vector<=Encantadas_2(1),1,'last');
Encantadas_3_x_grid=find(x_vector<=Encantadas_3(1),1,'last');
Encantadas_4_x_grid=find(x_vector<=Encantadas_4(1),1,'last');
Encantadas_5_x_grid=find(x_vector<=Encantadas_5(1),1,'last');
Encantadas_6_x_grid=find(x_vector<=Encantadas_6(1),1,'last');
Encantadas_7_x_grid=find(x_vector<=Encantadas_7(1),1,'last');
Encantadas_8_x_grid=find(x_vector<=Encantadas_8(1),1,'last');
Encantadas_9_x_grid=find(x_vector<=Encantadas_9(1),1,'last');

Encantadas_1_y_grid=find(y_vector<=Encantadas_1(2),1,'last');
Encantadas_2_y_grid=find(y_vector<=Encantadas_2(2),1,'last');
Encantadas_3_y_grid=find(y_vector<=Encantadas_3(2),1,'last');
Encantadas_4_y_grid=find(y_vector<=Encantadas_4(2),1,'last');
Encantadas_5_y_grid=find(y_vector<=Encantadas_5(2),1,'last');
Encantadas_6_y_grid=find(y_vector<=Encantadas_6(2),1,'last');
Encantadas_7_y_grid=find(y_vector<=Encantadas_7(2),1,'last');
Encantadas_8_y_grid=find(y_vector<=Encantadas_8(2),1,'last');
Encantadas_9_y_grid=find(y_vector<=Encantadas_9(2),1,'last');

Encantadas_1_what_grid=[Encantadas_1_x_grid Encantadas_1_y_grid]
Encantadas_2_what_grid=[Encantadas_2_x_grid Encantadas_2_y_grid]
Encantadas_3_what_grid=[Encantadas_3_x_grid Encantadas_3_y_grid]
Encantadas_4_what_grid=[Encantadas_4_x_grid Encantadas_4_y_grid]
Encantadas_5_what_grid=[Encantadas_5_x_grid Encantadas_5_y_grid]
Encantadas_6_what_grid=[Encantadas_6_x_grid Encantadas_6_y_grid]
Encantadas_7_what_grid=[Encantadas_7_x_grid Encantadas_7_y_grid]
Encantadas_8_what_grid=[Encantadas_8_x_grid Encantadas_8_y_grid]
Encantadas_9_what_grid=[Encantadas_9_x_grid Encantadas_9_y_grid]

Encantadas_model_grid_selection=[Encantadas_1_what_grid
    Encantadas_2_what_grid
    Encantadas_3_what_grid
    Encantadas_4_what_grid
    Encantadas_5_what_grid
    Encantadas_6_what_grid
    Encantadas_7_what_grid
    Encantadas_8_what_grid
    Encantadas_9_what_grid]

%save("L1_Encantadas_grid_of_selected_bins", 'Encantadas_model_grid_selection')
 %%
%L2 - Limoeiro

%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Selected_bins_praias\Bins_selecionados\Limoeiro_L2_bins')

%Long;Lat; coleta réplicas
Li_1=[limoeiro_L2_bin(1,1),limoeiro_L2_bin(1,2)]
Li_2=[limoeiro_L2_bin(2,1),limoeiro_L2_bin(2,2)]
Li_3=[limoeiro_L2_bin(3,1),limoeiro_L2_bin(3,2)]
Li_4=[limoeiro_L2_bin(4,1),limoeiro_L2_bin(4,2)]
Li_5=[limoeiro_L2_bin(5,1),limoeiro_L2_bin(5,2)]
Li_6=[limoeiro_L2_bin(6,1),limoeiro_L2_bin(6,2)]
Li_7=[limoeiro_L2_bin(7,1),limoeiro_L2_bin(7,2)]
Li_8=[limoeiro_L2_bin(8,1),limoeiro_L2_bin(8,2)]

%%X_grid
Li_1_x_grid=find(x_vector<=Li_1(1),1,'last');
Li_2_x_grid=find(x_vector<=Li_2(1),1,'last');
Li_3_x_grid=find(x_vector<=Li_3(1),1,'last');
Li_4_x_grid=find(x_vector<=Li_4(1),1,'last');
Li_5_x_grid=find(x_vector<=Li_5(1),1,'last');
Li_6_x_grid=find(x_vector<=Li_6(1),1,'last');
Li_7_x_grid=find(x_vector<=Li_7(1),1,'last');
Li_8_x_grid=find(x_vector<=Li_8(1),1,'last');

%Y_grid
Li_1_y_grid=find(y_vector<=Li_1(2),1,'last');
Li_2_y_grid=find(y_vector<=Li_2(2),1,'last');
Li_3_y_grid=find(y_vector<=Li_3(2),1,'last');
Li_4_y_grid=find(y_vector<=Li_4(2),1,'last');
Li_5_y_grid=find(y_vector<=Li_5(2),1,'last');
Li_6_y_grid=find(y_vector<=Li_6(2),1,'last');
Li_7_y_grid=find(y_vector<=Li_7(2),1,'last');
Li_8_y_grid=find(y_vector<=Li_8(2),1,'last');

%What_grid
Li_1_what_grid=[Li_1_x_grid Li_1_y_grid]
Li_2_what_grid=[Li_2_x_grid Li_2_y_grid]
Li_3_what_grid=[Li_3_x_grid Li_3_y_grid]
Li_4_what_grid=[Li_4_x_grid Li_4_y_grid]
Li_5_what_grid=[Li_5_x_grid Li_5_y_grid]
Li_6_what_grid=[Li_6_x_grid Li_6_y_grid]
Li_7_what_grid=[Li_7_x_grid Li_7_y_grid]
Li_8_what_grid=[Li_8_x_grid Li_8_y_grid]

Limoeiro_model_grid_selection = [Li_1_what_grid
Li_2_what_grid
Li_3_what_grid
Li_4_what_grid
Li_5_what_grid
Li_6_what_grid
Li_7_what_grid
Li_8_what_grid]

%save("Limoeiro_L2_grid_of_selected_bins", 'Limoeiro_model_grid_selection')
%% L3_Ponta_Oeste



%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\POeste_L3_bins.mat')

%POeste_L3_Bins=[L3_POeste_1.Position
%    L3_POeste_2.Position
%    L3_POeste_3.Position
%    L3_POeste_4.Position
%    L3_POeste_5.Position
%    L3_POeste_6.Position
%    L3_POeste_7.Position
%    L3_POeste_8.Position
%    L3_POeste_9.Position
%    L3_POeste_10.Position
%    L3_POeste_11.Position
%    L3_POeste_12.Position
%    L3_POeste_13.Position
%    L3_POeste_14.Position
%    L3_POeste_15.Position]


Poeste_L3_1=[POeste_L3_Bins(1,1),POeste_L3_Bins(1,2)]
Poeste_L3_2=[POeste_L3_Bins(2,1),POeste_L3_Bins(2,2)]
Poeste_L3_3=[POeste_L3_Bins(3,1),POeste_L3_Bins(3,2)]
Poeste_L3_4=[POeste_L3_Bins(4,1),POeste_L3_Bins(4,2)]
Poeste_L3_5=[POeste_L3_Bins(5,1),POeste_L3_Bins(5,2)]
Poeste_L3_6=[POeste_L3_Bins(6,1),POeste_L3_Bins(6,2)]




Poeste_L3_1_x_grid=find(x_vector<=Poeste_L3_1(1),1,'last');
Poeste_L3_2_x_grid=find(x_vector<=Poeste_L3_2(1),1,'last');
Poeste_L3_3_x_grid=find(x_vector<=Poeste_L3_3(1),1,'last');
Poeste_L3_4_x_grid=find(x_vector<=Poeste_L3_4(1),1,'last');
Poeste_L3_5_x_grid=find(x_vector<=Poeste_L3_5(1),1,'last');
Poeste_L3_6_x_grid=find(x_vector<=Poeste_L3_6(1),1,'last');



Poeste_L3_1_y_grid=find(y_vector<=Poeste_L3_1(2),1,'last');
Poeste_L3_2_y_grid=find(y_vector<=Poeste_L3_2(2),1,'last');
Poeste_L3_3_y_grid=find(y_vector<=Poeste_L3_3(2),1,'last');
Poeste_L3_4_y_grid=find(y_vector<=Poeste_L3_4(2),1,'last');
Poeste_L3_5_y_grid=find(y_vector<=Poeste_L3_5(2),1,'last');
Poeste_L3_6_y_grid=find(y_vector<=Poeste_L3_6(2),1,'last');


Poeste_L3_1_what_grid=[Poeste_L3_1_x_grid Poeste_L3_1_y_grid]
Poeste_L3_2_what_grid=[Poeste_L3_2_x_grid Poeste_L3_2_y_grid]
Poeste_L3_3_what_grid=[Poeste_L3_3_x_grid Poeste_L3_3_y_grid]
Poeste_L3_4_what_grid=[Poeste_L3_4_x_grid Poeste_L3_4_y_grid]
Poeste_L3_5_what_grid=[Poeste_L3_5_x_grid Poeste_L3_5_y_grid]
Poeste_L3_6_what_grid=[Poeste_L3_6_x_grid Poeste_L3_6_y_grid]



Ponta_Oeste_L3_grid_of_selected_bins=[Poeste_L3_1_what_grid
Poeste_L3_2_what_grid
Poeste_L3_3_what_grid
Poeste_L3_4_what_grid
Poeste_L3_5_what_grid
Poeste_L3_6_what_grid]




%save("L3_Ponta_Oeste_grid_of_selected_bins", 'Ponta_Oeste_L3_grid_of_selected_bins')

%%

%%L4 -Ponta do Poço

%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Ponta_do_Poco_L4_bins')

Ponta_do_Poco_L4_1=[Ponta_do_Poco_L4(1,1),Ponta_do_Poco_L4(1,2)]
Ponta_do_Poco_L4_2=[Ponta_do_Poco_L4(2,1),Ponta_do_Poco_L4(2,2)]
Ponta_do_Poco_L4_3=[Ponta_do_Poco_L4(3,1),Ponta_do_Poco_L4(3,2)]
Ponta_do_Poco_L4_4=[Ponta_do_Poco_L4(4,1),Ponta_do_Poco_L4(4,2)]
Ponta_do_Poco_L4_5=[Ponta_do_Poco_L4(5,1),Ponta_do_Poco_L4(5,2)]
Ponta_do_Poco_L4_6=[Ponta_do_Poco_L4(6,1),Ponta_do_Poco_L4(6,2)]


Ponta_do_Poco_L4_1_x_grid=find(x_vector<=Ponta_do_Poco_L4_1(1),1,'last');
Ponta_do_Poco_L4_2_x_grid=find(x_vector<=Ponta_do_Poco_L4_2(1),1,'last');
Ponta_do_Poco_L4_3_x_grid=find(x_vector<=Ponta_do_Poco_L4_3(1),1,'last');
Ponta_do_Poco_L4_4_x_grid=find(x_vector<=Ponta_do_Poco_L4_4(1),1,'last');
Ponta_do_Poco_L4_5_x_grid=find(x_vector<=Ponta_do_Poco_L4_5(1),1,'last');
Ponta_do_Poco_L4_6_x_grid=find(x_vector<=Ponta_do_Poco_L4_6(1),1,'last');



Ponta_do_Poco_L4_1_y_grid=find(y_vector<=Ponta_do_Poco_L4_1(2),1,'last');
Ponta_do_Poco_L4_2_y_grid=find(y_vector<=Ponta_do_Poco_L4_2(2),1,'last');
Ponta_do_Poco_L4_3_y_grid=find(y_vector<=Ponta_do_Poco_L4_3(2),1,'last');
Ponta_do_Poco_L4_4_y_grid=find(y_vector<=Ponta_do_Poco_L4_4(2),1,'last');
Ponta_do_Poco_L4_5_y_grid=find(y_vector<=Ponta_do_Poco_L4_5(2),1,'last');
Ponta_do_Poco_L4_6_y_grid=find(y_vector<=Ponta_do_Poco_L4_6(2),1,'last');



Ponta_do_Poco_L4_1_what_grid=[Ponta_do_Poco_L4_1_x_grid Ponta_do_Poco_L4_1_y_grid]
Ponta_do_Poco_L4_2_what_grid=[Ponta_do_Poco_L4_2_x_grid Ponta_do_Poco_L4_2_y_grid]
Ponta_do_Poco_L4_3_what_grid=[Ponta_do_Poco_L4_3_x_grid Ponta_do_Poco_L4_3_y_grid]
Ponta_do_Poco_L4_4_what_grid=[Ponta_do_Poco_L4_4_x_grid Ponta_do_Poco_L4_4_y_grid]
Ponta_do_Poco_L4_5_what_grid=[Ponta_do_Poco_L4_5_x_grid Ponta_do_Poco_L4_5_y_grid]
Ponta_do_Poco_L4_6_what_grid=[Ponta_do_Poco_L4_6_x_grid Ponta_do_Poco_L4_6_y_grid]



Ponta_do_Poco_L4_grid_of_selected_bins=[ Ponta_do_Poco_L4_1_what_grid
Ponta_do_Poco_L4_2_what_grid
Ponta_do_Poco_L4_3_what_grid
Ponta_do_Poco_L4_4_what_grid
Ponta_do_Poco_L4_5_what_grid
Ponta_do_Poco_L4_6_what_grid]




%save("L4_Ponta_do_Poco_grid_of_selected_bins", 'Ponta_do_Poco_L4_grid_of_selected_bins')


%% L5 Rasa Cotinga


%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Rasa_Cotinga_L5_bins')

Rasa_Cotinga_L5_1=[Rasa_Cotinga_L5(1,1),Rasa_Cotinga_L5(1,2)]
Rasa_Cotinga_L5_2=[Rasa_Cotinga_L5(2,1),Rasa_Cotinga_L5(2,2)]
Rasa_Cotinga_L5_3=[Rasa_Cotinga_L5(3,1),Rasa_Cotinga_L5(3,2)]
Rasa_Cotinga_L5_4=[Rasa_Cotinga_L5(4,1),Rasa_Cotinga_L5(4,2)]
Rasa_Cotinga_L5_5=[Rasa_Cotinga_L5(5,1),Rasa_Cotinga_L5(5,2)]
Rasa_Cotinga_L5_6=[Rasa_Cotinga_L5(6,1),Rasa_Cotinga_L5(6,2)]



Rasa_Cotinga_L5_1_x_grid=find(x_vector<=Rasa_Cotinga_L5_1(1),1,'last');
Rasa_Cotinga_L5_2_x_grid=find(x_vector<=Rasa_Cotinga_L5_2(1),1,'last');
Rasa_Cotinga_L5_3_x_grid=find(x_vector<=Rasa_Cotinga_L5_3(1),1,'last');
Rasa_Cotinga_L5_4_x_grid=find(x_vector<=Rasa_Cotinga_L5_4(1),1,'last');
Rasa_Cotinga_L5_5_x_grid=find(x_vector<=Rasa_Cotinga_L5_5(1),1,'last');
Rasa_Cotinga_L5_6_x_grid=find(x_vector<=Rasa_Cotinga_L5_6(1),1,'last');


Rasa_Cotinga_L5_1_y_grid=find(y_vector<=Rasa_Cotinga_L5_1(2),1,'last');
Rasa_Cotinga_L5_2_y_grid=find(y_vector<=Rasa_Cotinga_L5_2(2),1,'last');
Rasa_Cotinga_L5_3_y_grid=find(y_vector<=Rasa_Cotinga_L5_3(2),1,'last');
Rasa_Cotinga_L5_4_y_grid=find(y_vector<=Rasa_Cotinga_L5_4(2),1,'last');
Rasa_Cotinga_L5_5_y_grid=find(y_vector<=Rasa_Cotinga_L5_5(2),1,'last');
Rasa_Cotinga_L5_6_y_grid=find(y_vector<=Rasa_Cotinga_L5_6(2),1,'last');


Rasa_Cotinga_L5_1_what_grid=[Rasa_Cotinga_L5_1_x_grid Rasa_Cotinga_L5_1_y_grid]
Rasa_Cotinga_L5_2_what_grid=[Rasa_Cotinga_L5_2_x_grid Rasa_Cotinga_L5_2_y_grid]
Rasa_Cotinga_L5_3_what_grid=[Rasa_Cotinga_L5_3_x_grid Rasa_Cotinga_L5_3_y_grid]
Rasa_Cotinga_L5_4_what_grid=[Rasa_Cotinga_L5_4_x_grid Rasa_Cotinga_L5_4_y_grid]
Rasa_Cotinga_L5_5_what_grid=[Rasa_Cotinga_L5_5_x_grid Rasa_Cotinga_L5_5_y_grid]
Rasa_Cotinga_L5_6_what_grid=[Rasa_Cotinga_L5_6_x_grid Rasa_Cotinga_L5_6_y_grid]


Rasa_Cotinga_L5_grid_of_selected_bins=[Rasa_Cotinga_L5_1_what_grid
Rasa_Cotinga_L5_2_what_grid
Rasa_Cotinga_L5_3_what_grid
Rasa_Cotinga_L5_4_what_grid
Rasa_Cotinga_L5_5_what_grid
Rasa_Cotinga_L5_6_what_grid]

%save("L5_Rasa_Cotinga_grid_of_selected_bins", 'Rasa_Cotinga_L5_grid_of_selected_bins')


%%
%L6_Ilha_Cobras


%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Ilha_Cobras_L6_bins')


Ilha_Cobras_L6_1=[Ilha_Cobras_L6(1,1),Ilha_Cobras_L6(1,2)]
Ilha_Cobras_L6_2=[Ilha_Cobras_L6(2,1),Ilha_Cobras_L6(2,2)]
Ilha_Cobras_L6_3=[Ilha_Cobras_L6(3,1),Ilha_Cobras_L6(3,2)]
Ilha_Cobras_L6_4=[Ilha_Cobras_L6(4,1),Ilha_Cobras_L6(4,2)]

Ilha_Cobras_L6_1_x_grid=find(x_vector<=Ilha_Cobras_L6_1(1),1,'last');
Ilha_Cobras_L6_2_x_grid=find(x_vector<=Ilha_Cobras_L6_2(1),1,'last');
Ilha_Cobras_L6_3_x_grid=find(x_vector<=Ilha_Cobras_L6_3(1),1,'last');
Ilha_Cobras_L6_4_x_grid=find(x_vector<=Ilha_Cobras_L6_4(1),1,'last');

Ilha_Cobras_L6_1_y_grid=find(y_vector<=Ilha_Cobras_L6_1(2),1,'last');
Ilha_Cobras_L6_2_y_grid=find(y_vector<=Ilha_Cobras_L6_2(2),1,'last');
Ilha_Cobras_L6_3_y_grid=find(y_vector<=Ilha_Cobras_L6_3(2),1,'last');
Ilha_Cobras_L6_4_y_grid=find(y_vector<=Ilha_Cobras_L6_4(2),1,'last');


Ilha_Cobras_L6_1_what_grid=[Ilha_Cobras_L6_1_x_grid Ilha_Cobras_L6_1_y_grid]
Ilha_Cobras_L6_2_what_grid=[Ilha_Cobras_L6_2_x_grid Ilha_Cobras_L6_2_y_grid]
Ilha_Cobras_L6_3_what_grid=[Ilha_Cobras_L6_3_x_grid Ilha_Cobras_L6_3_y_grid]
Ilha_Cobras_L6_4_what_grid=[Ilha_Cobras_L6_4_x_grid Ilha_Cobras_L6_4_y_grid]



Ilha_Cobras_L6_grid_of_selected_bins = [Ilha_Cobras_L6_1_what_grid
Ilha_Cobras_L6_2_what_grid
Ilha_Cobras_L6_3_what_grid
Ilha_Cobras_L6_4_what_grid]


%save("L6_Ilha_Cobras_grid_of_selected_bins", 'Ilha_Cobras_L6_grid_of_selected_bins')



%%
%Itibere_L7 _ Prainha do Tabajara


%carregar arquivo dos bins selecionados
load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Itibere_L7_bins')


Itibere_L7_1=[Itibere_L7(1,1),Itibere_L7(1,2)]
Itibere_L7_2=[Itibere_L7(2,1),Itibere_L7(2,2)]
Itibere_L7_3=[Itibere_L7(3,1),Itibere_L7(3,2)]


Itibere_L7_1_x_grid=find(x_vector<=Itibere_L7_1(1),1,'last');
Itibere_L7_2_x_grid=find(x_vector<=Itibere_L7_2(1),1,'last');
Itibere_L7_3_x_grid=find(x_vector<=Itibere_L7_3(1),1,'last');


Itibere_L7_1_y_grid=find(y_vector<=Itibere_L7_1(2),1,'last');
Itibere_L7_2_y_grid=find(y_vector<=Itibere_L7_2(2),1,'last');
Itibere_L7_3_y_grid=find(y_vector<=Itibere_L7_3(2),1,'last');


Itibere_L7_1_what_grid=[Itibere_L7_1_x_grid Itibere_L7_1_y_grid]
Itibere_L7_2_what_grid=[Itibere_L7_2_x_grid Itibere_L7_2_y_grid]
Itibere_L7_3_what_grid=[Itibere_L7_3_x_grid Itibere_L7_3_y_grid]


Itibere_L7_grid_of_selected_bins=[Itibere_L7_1_what_grid
Itibere_L7_2_what_grid
Itibere_L7_3_what_grid]

%save("L7_Itibere_grid_of_selected_bins",'Itibere_L7_grid_of_selected_bins')

%%
%L8_Pgua_Trapiche


%carregar arquivo dos bins selecionados
load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Trapiche_Rocio_L8_bins')

Trapiche_Rocio_L8_1=[Trapiche_Rocio_L8(1,1),Trapiche_Rocio_L8(1,2)]
Trapiche_Rocio_L8_2=[Trapiche_Rocio_L8(2,1),Trapiche_Rocio_L8(2,2)]
Trapiche_Rocio_L8_3=[Trapiche_Rocio_L8(3,1),Trapiche_Rocio_L8(3,2)]
Trapiche_Rocio_L8_4=[Trapiche_Rocio_L8(4,1),Trapiche_Rocio_L8(4,2)]
Trapiche_Rocio_L8_5=[Trapiche_Rocio_L8(5,1),Trapiche_Rocio_L8(5,2)]
Trapiche_Rocio_L8_6=[Trapiche_Rocio_L8(6,1),Trapiche_Rocio_L8(6,2)]


Trapiche_Rocio_L8_1_x_grid=find(x_vector<=Trapiche_Rocio_L8_1(1),1,'last');
Trapiche_Rocio_L8_2_x_grid=find(x_vector<=Trapiche_Rocio_L8_2(1),1,'last');
Trapiche_Rocio_L8_3_x_grid=find(x_vector<=Trapiche_Rocio_L8_3(1),1,'last');
Trapiche_Rocio_L8_4_x_grid=find(x_vector<=Trapiche_Rocio_L8_4(1),1,'last');
Trapiche_Rocio_L8_5_x_grid=find(x_vector<=Trapiche_Rocio_L8_5(1),1,'last');
Trapiche_Rocio_L8_6_x_grid=find(x_vector<=Trapiche_Rocio_L8_6(1),1,'last');


Trapiche_Rocio_L8_1_y_grid=find(y_vector<=Trapiche_Rocio_L8_1(2),1,'last');
Trapiche_Rocio_L8_2_y_grid=find(y_vector<=Trapiche_Rocio_L8_2(2),1,'last');
Trapiche_Rocio_L8_3_y_grid=find(y_vector<=Trapiche_Rocio_L8_3(2),1,'last');
Trapiche_Rocio_L8_4_y_grid=find(y_vector<=Trapiche_Rocio_L8_4(2),1,'last');
Trapiche_Rocio_L8_5_y_grid=find(y_vector<=Trapiche_Rocio_L8_5(2),1,'last');
Trapiche_Rocio_L8_6_y_grid=find(y_vector<=Trapiche_Rocio_L8_6(2),1,'last');


Trapiche_Rocio_L8_1_what_grid=[Trapiche_Rocio_L8_1_x_grid Trapiche_Rocio_L8_1_y_grid]
Trapiche_Rocio_L8_2_what_grid=[Trapiche_Rocio_L8_2_x_grid Trapiche_Rocio_L8_2_y_grid]
Trapiche_Rocio_L8_3_what_grid=[Trapiche_Rocio_L8_3_x_grid Trapiche_Rocio_L8_3_y_grid]
Trapiche_Rocio_L8_4_what_grid=[Trapiche_Rocio_L8_4_x_grid Trapiche_Rocio_L8_4_y_grid]
Trapiche_Rocio_L8_5_what_grid=[Trapiche_Rocio_L8_5_x_grid Trapiche_Rocio_L8_5_y_grid]
Trapiche_Rocio_L8_6_what_grid=[Trapiche_Rocio_L8_6_x_grid Trapiche_Rocio_L8_6_y_grid]


Trapiche_Rocio_L8_grid_of_selected_bins=[Trapiche_Rocio_L8_1_what_grid
Trapiche_Rocio_L8_2_what_grid
Trapiche_Rocio_L8_3_what_grid
Trapiche_Rocio_L8_4_what_grid
Trapiche_Rocio_L8_5_what_grid
Trapiche_Rocio_L8_6_what_grid]

%save("L8_Trapiche_Rocio_grid_of_selected_bins", 'Trapiche_Rocio_L8_grid_of_selected_bins')
%%
%L9_Rio_Emboguaçu

%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Emboguacu_L9_bins')

Emboguacu_L9_1=[Emboguacu_L9(1,1),Emboguacu_L9(1,2)]
Emboguacu_L9_2=[Emboguacu_L9(2,1),Emboguacu_L9(2,2)]
Emboguacu_L9_3=[Emboguacu_L9(3,1),Emboguacu_L9(3,2)]
Emboguacu_L9_4=[Emboguacu_L9(4,1),Emboguacu_L9(4,2)]
Emboguacu_L9_5=[Emboguacu_L9(5,1),Emboguacu_L9(5,2)]
Emboguacu_L9_6=[Emboguacu_L9(6,1),Emboguacu_L9(6,2)]

Emboguacu_L9_1_x_grid=find(x_vector<=Emboguacu_L9_1(1),1,'last');
Emboguacu_L9_2_x_grid=find(x_vector<=Emboguacu_L9_2(1),1,'last');
Emboguacu_L9_3_x_grid=find(x_vector<=Emboguacu_L9_3(1),1,'last');
Emboguacu_L9_4_x_grid=find(x_vector<=Emboguacu_L9_4(1),1,'last');
Emboguacu_L9_5_x_grid=find(x_vector<=Emboguacu_L9_5(1),1,'last');
Emboguacu_L9_6_x_grid=find(x_vector<=Emboguacu_L9_6(1),1,'last');

Emboguacu_L9_1_y_grid=find(y_vector<=Emboguacu_L9_1(2),1,'last');
Emboguacu_L9_2_y_grid=find(y_vector<=Emboguacu_L9_2(2),1,'last');
Emboguacu_L9_3_y_grid=find(y_vector<=Emboguacu_L9_3(2),1,'last');
Emboguacu_L9_4_y_grid=find(y_vector<=Emboguacu_L9_4(2),1,'last');
Emboguacu_L9_5_y_grid=find(y_vector<=Emboguacu_L9_5(2),1,'last');
Emboguacu_L9_6_y_grid=find(y_vector<=Emboguacu_L9_6(2),1,'last');

Emboguacu_L9_1_what_grid=[Emboguacu_L9_1_x_grid Emboguacu_L9_1_y_grid]
Emboguacu_L9_2_what_grid=[Emboguacu_L9_2_x_grid Emboguacu_L9_2_y_grid]
Emboguacu_L9_3_what_grid=[Emboguacu_L9_3_x_grid Emboguacu_L9_3_y_grid]
Emboguacu_L9_4_what_grid=[Emboguacu_L9_4_x_grid Emboguacu_L9_4_y_grid]
Emboguacu_L9_5_what_grid=[Emboguacu_L9_5_x_grid Emboguacu_L9_5_y_grid]
Emboguacu_L9_6_what_grid=[Emboguacu_L9_6_x_grid Emboguacu_L9_6_y_grid]

Emboguacu_L9_grid_of_selected_bins=[Emboguacu_L9_1_what_grid
Emboguacu_L9_2_what_grid
Emboguacu_L9_3_what_grid
Emboguacu_L9_4_what_grid
Emboguacu_L9_5_what_grid
Emboguacu_L9_6_what_grid]



%save("L9_Emboguacu_grid_of_selected_bins", 'Emboguacu_L9_grid_of_selected_bins')
%%
%Teixeira_L10

%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Teixeira_L10_bins')


Teixeira_L10_1=[Teixeira_L10(1,1),Teixeira_L10(1,2)]
Teixeira_L10_2=[Teixeira_L10(2,1),Teixeira_L10(2,2)]
Teixeira_L10_3=[Teixeira_L10(3,1),Teixeira_L10(3,2)]
Teixeira_L10_4=[Teixeira_L10(4,1),Teixeira_L10(4,2)]
Teixeira_L10_5=[Teixeira_L10(5,1),Teixeira_L10(5,2)]


Teixeira_L10_1_x_grid=find(x_vector<=Teixeira_L10_1(1),1,'last');
Teixeira_L10_2_x_grid=find(x_vector<=Teixeira_L10_2(1),1,'last');
Teixeira_L10_3_x_grid=find(x_vector<=Teixeira_L10_3(1),1,'last');
Teixeira_L10_4_x_grid=find(x_vector<=Teixeira_L10_4(1),1,'last');
Teixeira_L10_5_x_grid=find(x_vector<=Teixeira_L10_5(1),1,'last');


Teixeira_L10_1_y_grid=find(y_vector<=Teixeira_L10_1(2),1,'last');
Teixeira_L10_2_y_grid=find(y_vector<=Teixeira_L10_2(2),1,'last');
Teixeira_L10_3_y_grid=find(y_vector<=Teixeira_L10_3(2),1,'last');
Teixeira_L10_4_y_grid=find(y_vector<=Teixeira_L10_4(2),1,'last');
Teixeira_L10_5_y_grid=find(y_vector<=Teixeira_L10_5(2),1,'last');


Teixeira_L10_1_what_grid=[Teixeira_L10_1_x_grid Teixeira_L10_1_y_grid]
Teixeira_L10_2_what_grid=[Teixeira_L10_2_x_grid Teixeira_L10_2_y_grid]
Teixeira_L10_3_what_grid=[Teixeira_L10_3_x_grid Teixeira_L10_3_y_grid]
Teixeira_L10_4_what_grid=[Teixeira_L10_4_x_grid Teixeira_L10_4_y_grid]
Teixeira_L10_5_what_grid=[Teixeira_L10_5_x_grid Teixeira_L10_5_y_grid]

Teixeira_L10_grid_of_selected_bins=[Teixeira_L10_1_what_grid
Teixeira_L10_2_what_grid
Teixeira_L10_3_what_grid
Teixeira_L10_4_what_grid
Teixeira_L10_5_what_grid]



%save("L10_Teixeira_grid_of_selected_bins", 'Teixeira_L10_grid_of_selected_bins')
%%
%Antonina_L11 - Praia Ponta da Pita


%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Antonina_L11_bins')

Antonina_L11_1=[Antonina_L11(1,1),Antonina_L11(1,2)]
Antonina_L11_2=[Antonina_L11(2,1),Antonina_L11(2,2)]
Antonina_L11_3=[Antonina_L11(3,1),Antonina_L11(3,2)]
Antonina_L11_4=[Antonina_L11(4,1),Antonina_L11(4,2)]


Antonina_L11_1_x_grid=find(x_vector<=Antonina_L11_1(1),1,'last');
Antonina_L11_2_x_grid=find(x_vector<=Antonina_L11_2(1),1,'last');
Antonina_L11_3_x_grid=find(x_vector<=Antonina_L11_3(1),1,'last');
Antonina_L11_4_x_grid=find(x_vector<=Antonina_L11_4(1),1,'last');


Antonina_L11_1_y_grid=find(y_vector<=Antonina_L11_1(2),1,'last');
Antonina_L11_2_y_grid=find(y_vector<=Antonina_L11_2(2),1,'last');
Antonina_L11_3_y_grid=find(y_vector<=Antonina_L11_3(2),1,'last');
Antonina_L11_4_y_grid=find(y_vector<=Antonina_L11_4(2),1,'last');

Antonina_L11_1_what_grid=[Antonina_L11_1_x_grid Antonina_L11_1_y_grid]
Antonina_L11_2_what_grid=[Antonina_L11_2_x_grid Antonina_L11_2_y_grid]
Antonina_L11_3_what_grid=[Antonina_L11_3_x_grid Antonina_L11_3_y_grid]
Antonina_L11_4_what_grid=[Antonina_L11_4_x_grid Antonina_L11_4_y_grid]


Antonina_L11_grid_of_selected_bins=[Antonina_L11_1_what_grid
Antonina_L11_2_what_grid
Antonina_L11_3_what_grid
Antonina_L11_4_what_grid]


%save("L11_Antonina_grid_of_selected_bins", 'Antonina_L11_grid_of_selected_bins')

%%
%L12 - Europinha

%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Europinha_L12_bins')

Europinha_L12_1=[Europinha_L12(1,1),Europinha_L12(1,2)]
Europinha_L12_2=[Europinha_L12(2,1),Europinha_L12(2,2)]
Europinha_L12_3=[Europinha_L12(3,1),Europinha_L12(3,2)]
Europinha_L12_4=[Europinha_L12(4,1),Europinha_L12(4,2)]
Europinha_L12_5=[Europinha_L12(5,1),Europinha_L12(5,2)]



Europinha_L12_1_x_grid=find(x_vector<=Europinha_L12_1(1),1,'last');
Europinha_L12_2_x_grid=find(x_vector<=Europinha_L12_2(1),1,'last');
Europinha_L12_3_x_grid=find(x_vector<=Europinha_L12_3(1),1,'last');
Europinha_L12_4_x_grid=find(x_vector<=Europinha_L12_4(1),1,'last');
Europinha_L12_5_x_grid=find(x_vector<=Europinha_L12_5(1),1,'last');



Europinha_L12_1_y_grid=find(y_vector<=Europinha_L12_1(2),1,'last');
Europinha_L12_2_y_grid=find(y_vector<=Europinha_L12_2(2),1,'last');
Europinha_L12_3_y_grid=find(y_vector<=Europinha_L12_3(2),1,'last');
Europinha_L12_4_y_grid=find(y_vector<=Europinha_L12_4(2),1,'last');
Europinha_L12_5_y_grid=find(y_vector<=Europinha_L12_5(2),1,'last');



Europinha_L12_1_what_grid=[Europinha_L12_1_x_grid Europinha_L12_1_y_grid]
Europinha_L12_2_what_grid=[Europinha_L12_2_x_grid Europinha_L12_2_y_grid]
Europinha_L12_3_what_grid=[Europinha_L12_3_x_grid Europinha_L12_3_y_grid]
Europinha_L12_4_what_grid=[Europinha_L12_4_x_grid Europinha_L12_4_y_grid]
Europinha_L12_5_what_grid=[Europinha_L12_5_x_grid Europinha_L12_5_y_grid]



Europinha_L12_grid_of_selected_bins = [Europinha_L12_1_what_grid
Europinha_L12_2_what_grid
Europinha_L12_3_what_grid
Europinha_L12_4_what_grid
Europinha_L12_5_what_grid]


%save("L12_Europinha_grid_of_selected_bins", 'Europinha_L12_grid_of_selected_bins')

%%
%%

%L13 - Eufrasina

%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Eufrasina_L13_bins')

Eufrasina_L13_1=[Eufrasina_L13(1,1),Eufrasina_L13(1,2)]
Eufrasina_L13_2=[Eufrasina_L13(2,1),Eufrasina_L13(2,2)]
Eufrasina_L13_3=[Eufrasina_L13(3,1),Eufrasina_L13(3,2)]
Eufrasina_L13_4=[Eufrasina_L13(4,1),Eufrasina_L13(4,2)]


Eufrasina_L13_1_x_grid=find(x_vector<=Eufrasina_L13_1(1),1,'last');
Eufrasina_L13_2_x_grid=find(x_vector<=Eufrasina_L13_2(1),1,'last');
Eufrasina_L13_3_x_grid=find(x_vector<=Eufrasina_L13_3(1),1,'last');
Eufrasina_L13_4_x_grid=find(x_vector<=Eufrasina_L13_4(1),1,'last');


Eufrasina_L13_1_y_grid=find(y_vector<=Eufrasina_L13_1(2),1,'last');
Eufrasina_L13_2_y_grid=find(y_vector<=Eufrasina_L13_2(2),1,'last');
Eufrasina_L13_3_y_grid=find(y_vector<=Eufrasina_L13_3(2),1,'last');
Eufrasina_L13_4_y_grid=find(y_vector<=Eufrasina_L13_4(2),1,'last');


Eufrasina_L13_1_what_grid=[Eufrasina_L13_1_x_grid Eufrasina_L13_1_y_grid]
Eufrasina_L13_2_what_grid=[Eufrasina_L13_2_x_grid Eufrasina_L13_2_y_grid]
Eufrasina_L13_3_what_grid=[Eufrasina_L13_3_x_grid Eufrasina_L13_3_y_grid]
Eufrasina_L13_4_what_grid=[Eufrasina_L13_4_x_grid Eufrasina_L13_4_y_grid]

Eufrasina_L13_grid_of_selected_bins=[Eufrasina_L13_1_what_grid
Eufrasina_L13_2_what_grid
Eufrasina_L13_3_what_grid
Eufrasina_L13_4_what_grid]

%save("L13_Eufrasina_grid_of_selected_bins", 'Eufrasina_L13_grid_of_selected_bins')
%%
%L14 - Piacaguera


%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Piacaguera_L14_bins')

Piacaguera_L14_1=[Piacaguera_L14(1,1),Piacaguera_L14(1,2)]
Piacaguera_L14_2=[Piacaguera_L14(2,1),Piacaguera_L14(2,2)]
Piacaguera_L14_3=[Piacaguera_L14(3,1),Piacaguera_L14(3,2)]
Piacaguera_L14_4=[Piacaguera_L14(4,1),Piacaguera_L14(4,2)]
Piacaguera_L14_5=[Piacaguera_L14(5,1),Piacaguera_L14(5,2)]
Piacaguera_L14_6=[Piacaguera_L14(6,1),Piacaguera_L14(6,2)]
Piacaguera_L14_7=[Piacaguera_L14(7,1),Piacaguera_L14(7,2)]
Piacaguera_L14_8=[Piacaguera_L14(8,1),Piacaguera_L14(8,2)]
Piacaguera_L14_9=[Piacaguera_L14(9,1),Piacaguera_L14(9,2)]


Piacaguera_L14_1_x_grid=find(x_vector<=Piacaguera_L14_1(1),1,'last');
Piacaguera_L14_2_x_grid=find(x_vector<=Piacaguera_L14_2(1),1,'last');
Piacaguera_L14_3_x_grid=find(x_vector<=Piacaguera_L14_3(1),1,'last');
Piacaguera_L14_4_x_grid=find(x_vector<=Piacaguera_L14_4(1),1,'last');
Piacaguera_L14_5_x_grid=find(x_vector<=Piacaguera_L14_5(1),1,'last');
Piacaguera_L14_6_x_grid=find(x_vector<=Piacaguera_L14_6(1),1,'last');
Piacaguera_L14_7_x_grid=find(x_vector<=Piacaguera_L14_7(1),1,'last');
Piacaguera_L14_8_x_grid=find(x_vector<=Piacaguera_L14_8(1),1,'last');
Piacaguera_L14_9_x_grid=find(x_vector<=Piacaguera_L14_9(1),1,'last');


Piacaguera_L14_1_y_grid=find(y_vector<=Piacaguera_L14_1(2),1,'last');
Piacaguera_L14_2_y_grid=find(y_vector<=Piacaguera_L14_2(2),1,'last');
Piacaguera_L14_3_y_grid=find(y_vector<=Piacaguera_L14_3(2),1,'last');
Piacaguera_L14_4_y_grid=find(y_vector<=Piacaguera_L14_4(2),1,'last');
Piacaguera_L14_5_y_grid=find(y_vector<=Piacaguera_L14_5(2),1,'last');
Piacaguera_L14_6_y_grid=find(y_vector<=Piacaguera_L14_6(2),1,'last');
Piacaguera_L14_7_y_grid=find(y_vector<=Piacaguera_L14_7(2),1,'last');
Piacaguera_L14_8_y_grid=find(y_vector<=Piacaguera_L14_8(2),1,'last');
Piacaguera_L14_9_y_grid=find(y_vector<=Piacaguera_L14_9(2),1,'last');


Piacaguera_L14_1_what_grid=[Piacaguera_L14_1_x_grid Piacaguera_L14_1_y_grid]
Piacaguera_L14_2_what_grid=[Piacaguera_L14_2_x_grid Piacaguera_L14_2_y_grid]
Piacaguera_L14_3_what_grid=[Piacaguera_L14_3_x_grid Piacaguera_L14_3_y_grid]
Piacaguera_L14_4_what_grid=[Piacaguera_L14_4_x_grid Piacaguera_L14_4_y_grid]
Piacaguera_L14_5_what_grid=[Piacaguera_L14_5_x_grid Piacaguera_L14_5_y_grid]
Piacaguera_L14_6_what_grid=[Piacaguera_L14_6_x_grid Piacaguera_L14_6_y_grid]
Piacaguera_L14_7_what_grid=[Piacaguera_L14_7_x_grid Piacaguera_L14_7_y_grid]
Piacaguera_L14_8_what_grid=[Piacaguera_L14_8_x_grid Piacaguera_L14_8_y_grid]
Piacaguera_L14_9_what_grid=[Piacaguera_L14_9_x_grid Piacaguera_L14_9_y_grid]

Piacaguera_L14_grid_of_selected_bins=[Piacaguera_L14_1_what_grid
Piacaguera_L14_2_what_grid
Piacaguera_L14_3_what_grid
Piacaguera_L14_4_what_grid
Piacaguera_L14_5_what_grid
Piacaguera_L14_6_what_grid
Piacaguera_L14_7_what_grid
Piacaguera_L14_8_what_grid
Piacaguera_L14_9_what_grid]


%save("L14_Piacaguera_grid_of_selected_bins", 'Piacaguera_L14_grid_of_selected_bins')
%%
%L15 - Ponta do Uba




%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Uba_L15_bins')

Uba_L15_1=[Uba_L15(1,1),Uba_L15(1,2)]
Uba_L15_2=[Uba_L15(2,1),Uba_L15(2,2)]
Uba_L15_3=[Uba_L15(3,1),Uba_L15(3,2)]
Uba_L15_4=[Uba_L15(4,1),Uba_L15(4,2)]
Uba_L15_5=[Uba_L15(5,1),Uba_L15(5,2)]
Uba_L15_6=[Uba_L15(6,1),Uba_L15(6,2)]
Uba_L15_7=[Uba_L15(7,1),Uba_L15(7,2)]
Uba_L15_8=[Uba_L15(8,1),Uba_L15(8,2)]
Uba_L15_9=[Uba_L15(9,1),Uba_L15(9,2)]
Uba_L15_10=[Uba_L15(10,1),Uba_L15(10,2)]


Uba_L15_1_x_grid=find(x_vector<=Uba_L15_1(1),1,'last');
Uba_L15_2_x_grid=find(x_vector<=Uba_L15_2(1),1,'last');
Uba_L15_3_x_grid=find(x_vector<=Uba_L15_3(1),1,'last');
Uba_L15_4_x_grid=find(x_vector<=Uba_L15_4(1),1,'last');
Uba_L15_5_x_grid=find(x_vector<=Uba_L15_5(1),1,'last');
Uba_L15_6_x_grid=find(x_vector<=Uba_L15_6(1),1,'last');
Uba_L15_7_x_grid=find(x_vector<=Uba_L15_7(1),1,'last');
Uba_L15_8_x_grid=find(x_vector<=Uba_L15_8(1),1,'last');
Uba_L15_9_x_grid=find(x_vector<=Uba_L15_9(1),1,'last');
Uba_L15_10_x_grid=find(x_vector<=Uba_L15_10(1),1,'last');


Uba_L15_1_y_grid=find(y_vector<=Uba_L15_1(2),1,'last');
Uba_L15_2_y_grid=find(y_vector<=Uba_L15_2(2),1,'last');
Uba_L15_3_y_grid=find(y_vector<=Uba_L15_3(2),1,'last');
Uba_L15_4_y_grid=find(y_vector<=Uba_L15_4(2),1,'last');
Uba_L15_5_y_grid=find(y_vector<=Uba_L15_5(2),1,'last');
Uba_L15_6_y_grid=find(y_vector<=Uba_L15_6(2),1,'last');
Uba_L15_7_y_grid=find(y_vector<=Uba_L15_7(2),1,'last');
Uba_L15_8_y_grid=find(y_vector<=Uba_L15_8(2),1,'last');
Uba_L15_9_y_grid=find(y_vector<=Uba_L15_9(2),1,'last');
Uba_L15_10_y_grid=find(y_vector<=Uba_L15_10(2),1,'last');

Uba_L15_1_what_grid=[Uba_L15_1_x_grid Uba_L15_1_y_grid]
Uba_L15_2_what_grid=[Uba_L15_2_x_grid Uba_L15_2_y_grid]
Uba_L15_3_what_grid=[Uba_L15_3_x_grid Uba_L15_3_y_grid]
Uba_L15_4_what_grid=[Uba_L15_4_x_grid Uba_L15_4_y_grid]
Uba_L15_5_what_grid=[Uba_L15_5_x_grid Uba_L15_5_y_grid]
Uba_L15_6_what_grid=[Uba_L15_6_x_grid Uba_L15_6_y_grid]
Uba_L15_7_what_grid=[Uba_L15_7_x_grid Uba_L15_7_y_grid]
Uba_L15_8_what_grid=[Uba_L15_8_x_grid Uba_L15_8_y_grid]
Uba_L15_9_what_grid=[Uba_L15_9_x_grid Uba_L15_9_y_grid]
Uba_L15_10_what_grid=[Uba_L15_10_x_grid Uba_L15_10_y_grid]


Uba_L15_grid_of_selected_bins =[Uba_L15_1_what_grid
Uba_L15_2_what_grid
Uba_L15_3_what_grid
Uba_L15_4_what_grid
Uba_L15_5_what_grid
Uba_L15_6_what_grid
Uba_L15_7_what_grid
Uba_L15_8_what_grid
Uba_L15_9_what_grid
Uba_L15_10_what_grid]



%save("L15_Uba_grid_of_selected_bins", 'Uba_L15_grid_of_selected_bins')
%%
%L16 - Mariana




%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Mariana_L16_bins')


Mariana_L16_1=[Mariana_L16(1,1),Mariana_L16(1,2)]
Mariana_L16_2=[Mariana_L16(2,1),Mariana_L16(2,2)]
Mariana_L16_3=[Mariana_L16(3,1),Mariana_L16(3,2)]
Mariana_L16_4=[Mariana_L16(4,1),Mariana_L16(4,2)]
Mariana_L16_5=[Mariana_L16(5,1),Mariana_L16(5,2)]
Mariana_L16_6=[Mariana_L16(6,1),Mariana_L16(6,2)]


Mariana_L16_1_x_grid=find(x_vector<=Mariana_L16_1(1),1,'last');
Mariana_L16_2_x_grid=find(x_vector<=Mariana_L16_2(1),1,'last');
Mariana_L16_3_x_grid=find(x_vector<=Mariana_L16_3(1),1,'last');
Mariana_L16_4_x_grid=find(x_vector<=Mariana_L16_4(1),1,'last');
Mariana_L16_5_x_grid=find(x_vector<=Mariana_L16_5(1),1,'last');
Mariana_L16_6_x_grid=find(x_vector<=Mariana_L16_6(1),1,'last');


Mariana_L16_1_y_grid=find(y_vector<=Mariana_L16_1(2),1,'last');
Mariana_L16_2_y_grid=find(y_vector<=Mariana_L16_2(2),1,'last');
Mariana_L16_3_y_grid=find(y_vector<=Mariana_L16_3(2),1,'last');
Mariana_L16_4_y_grid=find(y_vector<=Mariana_L16_4(2),1,'last');
Mariana_L16_5_y_grid=find(y_vector<=Mariana_L16_5(2),1,'last');
Mariana_L16_6_y_grid=find(y_vector<=Mariana_L16_6(2),1,'last');


Mariana_L16_1_what_grid=[Mariana_L16_1_x_grid Mariana_L16_1_y_grid]
Mariana_L16_2_what_grid=[Mariana_L16_2_x_grid Mariana_L16_2_y_grid]
Mariana_L16_3_what_grid=[Mariana_L16_3_x_grid Mariana_L16_3_y_grid]
Mariana_L16_4_what_grid=[Mariana_L16_4_x_grid Mariana_L16_4_y_grid]
Mariana_L16_5_what_grid=[Mariana_L16_5_x_grid Mariana_L16_5_y_grid]
Mariana_L16_6_what_grid=[Mariana_L16_6_x_grid Mariana_L16_6_y_grid]


Mariana_L16_grid_of_selected_bins=[Mariana_L16_1_what_grid
Mariana_L16_2_what_grid
Mariana_L16_3_what_grid
Mariana_L16_4_what_grid
Mariana_L16_5_what_grid
Mariana_L16_6_what_grid]

%save("L16_Mariana_grid_of_selected_bins", 'Mariana_L16_grid_of_selected_bins')
%%
% L17 - Ilha das Gamelas


%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Gamelas_L17_bins')

Gamelas_L17_1=[Gamelas_L17(1,1),Gamelas_L17(1,2)]
Gamelas_L17_2=[Gamelas_L17(2,1),Gamelas_L17(2,2)]
Gamelas_L17_3=[Gamelas_L17(3,1),Gamelas_L17(3,2)]
Gamelas_L17_4=[Gamelas_L17(4,1),Gamelas_L17(4,2)]
Gamelas_L17_5=[Gamelas_L17(5,1),Gamelas_L17(5,2)]
Gamelas_L17_6=[Gamelas_L17(6,1),Gamelas_L17(6,2)]

Gamelas_L17_1_x_grid=find(x_vector<=Gamelas_L17_1(1),1,'last');
Gamelas_L17_2_x_grid=find(x_vector<=Gamelas_L17_2(1),1,'last');
Gamelas_L17_3_x_grid=find(x_vector<=Gamelas_L17_3(1),1,'last');
Gamelas_L17_4_x_grid=find(x_vector<=Gamelas_L17_4(1),1,'last');
Gamelas_L17_5_x_grid=find(x_vector<=Gamelas_L17_5(1),1,'last');
Gamelas_L17_6_x_grid=find(x_vector<=Gamelas_L17_6(1),1,'last');

Gamelas_L17_1_y_grid=find(y_vector<=Gamelas_L17_1(2),1,'last');
Gamelas_L17_2_y_grid=find(y_vector<=Gamelas_L17_2(2),1,'last');
Gamelas_L17_3_y_grid=find(y_vector<=Gamelas_L17_3(2),1,'last');
Gamelas_L17_4_y_grid=find(y_vector<=Gamelas_L17_4(2),1,'last');
Gamelas_L17_5_y_grid=find(y_vector<=Gamelas_L17_5(2),1,'last');
Gamelas_L17_6_y_grid=find(y_vector<=Gamelas_L17_6(2),1,'last');


Gamelas_L17_1_what_grid=[Gamelas_L17_1_x_grid Gamelas_L17_1_y_grid]
Gamelas_L17_2_what_grid=[Gamelas_L17_2_x_grid Gamelas_L17_2_y_grid]
Gamelas_L17_3_what_grid=[Gamelas_L17_3_x_grid Gamelas_L17_3_y_grid]
Gamelas_L17_4_what_grid=[Gamelas_L17_4_x_grid Gamelas_L17_4_y_grid]
Gamelas_L17_5_what_grid=[Gamelas_L17_5_x_grid Gamelas_L17_5_y_grid]
Gamelas_L17_6_what_grid=[Gamelas_L17_6_x_grid Gamelas_L17_6_y_grid]

Gamelas_L17_grid_of_selected_bins=[Gamelas_L17_1_what_grid
Gamelas_L17_2_what_grid
Gamelas_L17_3_what_grid
Gamelas_L17_4_what_grid
Gamelas_L17_5_what_grid
Gamelas_L17_6_what_grid]


%save("L17_Gamelas_grid_of_selected_bins", 'Gamelas_L17_grid_of_selected_bins')

%%
%L18 - Guaraquecaba




%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Guaraquecaba_L18_bins')

Guaraquecaba_L18_1=[Guaraquecaba_L18(1,1),Guaraquecaba_L18(1,2)]
Guaraquecaba_L18_2=[Guaraquecaba_L18(2,1),Guaraquecaba_L18(2,2)]
Guaraquecaba_L18_3=[Guaraquecaba_L18(3,1),Guaraquecaba_L18(3,2)]
Guaraquecaba_L18_4=[Guaraquecaba_L18(4,1),Guaraquecaba_L18(4,2)]

Guaraquecaba_L18_1_x_grid=find(x_vector<=Guaraquecaba_L18_1(1),1,'last');
Guaraquecaba_L18_2_x_grid=find(x_vector<=Guaraquecaba_L18_2(1),1,'last');
Guaraquecaba_L18_3_x_grid=find(x_vector<=Guaraquecaba_L18_3(1),1,'last');
Guaraquecaba_L18_4_x_grid=find(x_vector<=Guaraquecaba_L18_4(1),1,'last');


Guaraquecaba_L18_1_y_grid=find(y_vector<=Guaraquecaba_L18_1(2),1,'last');
Guaraquecaba_L18_2_y_grid=find(y_vector<=Guaraquecaba_L18_2(2),1,'last');
Guaraquecaba_L18_3_y_grid=find(y_vector<=Guaraquecaba_L18_3(2),1,'last');
Guaraquecaba_L18_4_y_grid=find(y_vector<=Guaraquecaba_L18_4(2),1,'last');

Guaraquecaba_L18_1_what_grid=[Guaraquecaba_L18_1_x_grid Guaraquecaba_L18_1_y_grid]
Guaraquecaba_L18_2_what_grid=[Guaraquecaba_L18_2_x_grid Guaraquecaba_L18_2_y_grid]
Guaraquecaba_L18_3_what_grid=[Guaraquecaba_L18_3_x_grid Guaraquecaba_L18_3_y_grid]
Guaraquecaba_L18_4_what_grid=[Guaraquecaba_L18_4_x_grid Guaraquecaba_L18_4_y_grid]

Guaraquecaba_L18_grid_of_selected_bins=[Guaraquecaba_L18_1_what_grid
Guaraquecaba_L18_2_what_grid
Guaraquecaba_L18_3_what_grid
Guaraquecaba_L18_4_what_grid]

%save("L18_Guaraquecaba_grid_of_selected_bins", 'Guaraquecaba_L18_grid_of_selected_bins')

%%
%L19 - Ilha das Peças




%carregar arquivo dos bins selecionados
%load('C:\Users\mateu\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Bins_selecionados\Pecas_L19_bins')


Pecas_L19_1=[Pecas_L19(1,1),Pecas_L19(1,2)]
Pecas_L19_2=[Pecas_L19(2,1),Pecas_L19(2,2)]
Pecas_L19_3=[Pecas_L19(3,1),Pecas_L19(3,2)]
Pecas_L19_4=[Pecas_L19(4,1),Pecas_L19(4,2)]
Pecas_L19_5=[Pecas_L19(5,1),Pecas_L19(5,2)]
Pecas_L19_6=[Pecas_L19(6,1),Pecas_L19(6,2)]
Pecas_L19_7=[Pecas_L19(7,1),Pecas_L19(7,2)]
Pecas_L19_8=[Pecas_L19(8,1),Pecas_L19(8,2)]


Pecas_L19_1_x_grid=find(x_vector<=Pecas_L19_1(1),1,'last');
Pecas_L19_2_x_grid=find(x_vector<=Pecas_L19_2(1),1,'last');
Pecas_L19_3_x_grid=find(x_vector<=Pecas_L19_3(1),1,'last');
Pecas_L19_4_x_grid=find(x_vector<=Pecas_L19_4(1),1,'last');
Pecas_L19_5_x_grid=find(x_vector<=Pecas_L19_5(1),1,'last');
Pecas_L19_6_x_grid=find(x_vector<=Pecas_L19_6(1),1,'last');
Pecas_L19_7_x_grid=find(x_vector<=Pecas_L19_7(1),1,'last');
Pecas_L19_8_x_grid=find(x_vector<=Pecas_L19_8(1),1,'last');


Pecas_L19_1_y_grid=find(y_vector<=Pecas_L19_1(2),1,'last');
Pecas_L19_2_y_grid=find(y_vector<=Pecas_L19_2(2),1,'last');
Pecas_L19_3_y_grid=find(y_vector<=Pecas_L19_3(2),1,'last');
Pecas_L19_4_y_grid=find(y_vector<=Pecas_L19_4(2),1,'last');
Pecas_L19_5_y_grid=find(y_vector<=Pecas_L19_5(2),1,'last');
Pecas_L19_6_y_grid=find(y_vector<=Pecas_L19_6(2),1,'last');
Pecas_L19_7_y_grid=find(y_vector<=Pecas_L19_7(2),1,'last');
Pecas_L19_8_y_grid=find(y_vector<=Pecas_L19_8(2),1,'last');


Pecas_L19_1_what_grid=[Pecas_L19_1_x_grid Pecas_L19_1_y_grid]
Pecas_L19_2_what_grid=[Pecas_L19_2_x_grid Pecas_L19_2_y_grid]
Pecas_L19_3_what_grid=[Pecas_L19_3_x_grid Pecas_L19_3_y_grid]
Pecas_L19_4_what_grid=[Pecas_L19_4_x_grid Pecas_L19_4_y_grid]
Pecas_L19_5_what_grid=[Pecas_L19_5_x_grid Pecas_L19_5_y_grid]
Pecas_L19_6_what_grid=[Pecas_L19_6_x_grid Pecas_L19_6_y_grid]
Pecas_L19_7_what_grid=[Pecas_L19_7_x_grid Pecas_L19_7_y_grid]
Pecas_L19_8_what_grid=[Pecas_L19_8_x_grid Pecas_L19_8_y_grid]

Pecas_L19_grid_of_selected_bins=[Pecas_L19_1_what_grid
Pecas_L19_2_what_grid
Pecas_L19_3_what_grid
Pecas_L19_4_what_grid
Pecas_L19_5_what_grid
Pecas_L19_6_what_grid
Pecas_L19_7_what_grid
Pecas_L19_8_what_grid]

%save("L19_Pecas_grid_of_selected_bins", 'Pecas_L19_grid_of_selected_bins')

%%
%Saving in one file.

save('Grids_of_selected_bins_1_bin_extrapolation_criteria_all_locations','Encantadas_model_grid_selection','Limoeiro_model_grid_selection','Ponta_Oeste_L3_grid_of_selected_bins','Ponta_do_Poco_L4_grid_of_selected_bins','Rasa_Cotinga_L5_grid_of_selected_bins','Ilha_Cobras_L6_grid_of_selected_bins','Itibere_L7_grid_of_selected_bins','Trapiche_Rocio_L8_grid_of_selected_bins','Emboguacu_L9_grid_of_selected_bins','Teixeira_L10_grid_of_selected_bins','Antonina_L11_grid_of_selected_bins','Europinha_L12_grid_of_selected_bins','Eufrasina_L13_grid_of_selected_bins','Piacaguera_L14_grid_of_selected_bins','Uba_L15_grid_of_selected_bins','Mariana_L16_grid_of_selected_bins','Gamelas_L17_grid_of_selected_bins','Guaraquecaba_L18_grid_of_selected_bins','Pecas_L19_grid_of_selected_bins')