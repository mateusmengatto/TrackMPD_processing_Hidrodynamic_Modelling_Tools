%%
clc;clear all

%Utilizando os selected_bins
n= 'I' %Mudar numero da fonte (source) do modelo

%carregar o modelo
load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\Loop_30_40_adv_PDF\PDF_Release_Point_'+string(n)+'_30_to_40_loop')

load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\NEW_criteria_1_bin_extrapolation\Grids_of_selected_bins_1_bin_extrapolation_criteria_all_locations.mat')
%Loc14 = Loc Navios
%%
%L1
%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L1_Encantadas_grid_of_selected_bins')

prob_L1= [prob(Encantadas_model_grid_selection(1,1),Encantadas_model_grid_selection(1,2))
prob(Encantadas_model_grid_selection(2,1),Encantadas_model_grid_selection(2,2))
prob(Encantadas_model_grid_selection(3,1),Encantadas_model_grid_selection(3,2))
prob(Encantadas_model_grid_selection(4,1),Encantadas_model_grid_selection(4,2))
prob(Encantadas_model_grid_selection(5,1),Encantadas_model_grid_selection(5,2))
prob(Encantadas_model_grid_selection(6,1),Encantadas_model_grid_selection(6,2))
prob(Encantadas_model_grid_selection(7,1),Encantadas_model_grid_selection(7,2))
prob(Encantadas_model_grid_selection(8,1),Encantadas_model_grid_selection(8,2))
prob(Encantadas_model_grid_selection(9,1),Encantadas_model_grid_selection(9,2))]

prob_L1_sum=sum(prob_L1)
prob_L1_mean=mean(prob_L1)

%L2

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L2_Limoeiro_grid_of_selected_bins')

prob_L2=[prob(Limoeiro_model_grid_selection(1,1),Limoeiro_model_grid_selection(1,2))
prob(Limoeiro_model_grid_selection(2,1),Limoeiro_model_grid_selection(2,2))
prob(Limoeiro_model_grid_selection(3,1),Limoeiro_model_grid_selection(3,2))
prob(Limoeiro_model_grid_selection(4,1),Limoeiro_model_grid_selection(4,2))
prob(Limoeiro_model_grid_selection(5,1),Limoeiro_model_grid_selection(5,2))
prob(Limoeiro_model_grid_selection(6,1),Limoeiro_model_grid_selection(6,2))
prob(Limoeiro_model_grid_selection(7,1),Limoeiro_model_grid_selection(7,2))
prob(Limoeiro_model_grid_selection(8,1),Limoeiro_model_grid_selection(8,2))]


prob_L2_sum=sum(prob_L2)
prob_L2_mean=mean(prob_L2)

%L3
%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L3_Ponta_Oeste_grid_of_selected_bins')

prob_L3=[prob(Ponta_Oeste_L3_grid_of_selected_bins(1,1),Ponta_Oeste_L3_grid_of_selected_bins(1,2))
prob(Ponta_Oeste_L3_grid_of_selected_bins(2,1),Ponta_Oeste_L3_grid_of_selected_bins(2,2))
prob(Ponta_Oeste_L3_grid_of_selected_bins(3,1),Ponta_Oeste_L3_grid_of_selected_bins(3,2))
prob(Ponta_Oeste_L3_grid_of_selected_bins(4,1),Ponta_Oeste_L3_grid_of_selected_bins(4,2))
prob(Ponta_Oeste_L3_grid_of_selected_bins(5,1),Ponta_Oeste_L3_grid_of_selected_bins(5,2))
prob(Ponta_Oeste_L3_grid_of_selected_bins(6,1),Ponta_Oeste_L3_grid_of_selected_bins(6,2))]


prob_L3_sum=sum(prob_L3)
prob_L3_mean=mean(prob_L3)

%L4

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L4_Ponta_do_Poco_grid_of_selected_bins')

prob_L4=[prob(Ponta_do_Poco_L4_grid_of_selected_bins(1,1),Ponta_do_Poco_L4_grid_of_selected_bins(1,2))
prob(Ponta_do_Poco_L4_grid_of_selected_bins(2,1),Ponta_do_Poco_L4_grid_of_selected_bins(2,2))
prob(Ponta_do_Poco_L4_grid_of_selected_bins(3,1),Ponta_do_Poco_L4_grid_of_selected_bins(3,2))
prob(Ponta_do_Poco_L4_grid_of_selected_bins(4,1),Ponta_do_Poco_L4_grid_of_selected_bins(4,2))
prob(Ponta_do_Poco_L4_grid_of_selected_bins(5,1),Ponta_do_Poco_L4_grid_of_selected_bins(5,2))
prob(Ponta_do_Poco_L4_grid_of_selected_bins(6,1),Ponta_do_Poco_L4_grid_of_selected_bins(6,2))]


prob_L4_sum=sum(prob_L4)
prob_L4_mean=mean(prob_L4)

%L5

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L5_Rasa_Cotinga_grid_of_selected_bins')

prob_L5=[prob(Rasa_Cotinga_L5_grid_of_selected_bins(1,1),Rasa_Cotinga_L5_grid_of_selected_bins(1,2))
prob(Rasa_Cotinga_L5_grid_of_selected_bins(2,1),Rasa_Cotinga_L5_grid_of_selected_bins(2,2))
prob(Rasa_Cotinga_L5_grid_of_selected_bins(3,1),Rasa_Cotinga_L5_grid_of_selected_bins(3,2))
prob(Rasa_Cotinga_L5_grid_of_selected_bins(4,1),Rasa_Cotinga_L5_grid_of_selected_bins(4,2))
prob(Rasa_Cotinga_L5_grid_of_selected_bins(5,1),Rasa_Cotinga_L5_grid_of_selected_bins(5,2))
prob(Rasa_Cotinga_L5_grid_of_selected_bins(6,1),Rasa_Cotinga_L5_grid_of_selected_bins(6,2))]

prob_L5_sum=sum(prob_L5)
prob_L5_mean=mean(prob_L5)

%L6

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L6_Ilha_Cobras_grid_of_selected_bins')

prob_L6=[prob(Ilha_Cobras_L6_grid_of_selected_bins(1,1),Ilha_Cobras_L6_grid_of_selected_bins(1,2))
prob(Ilha_Cobras_L6_grid_of_selected_bins(2,1),Ilha_Cobras_L6_grid_of_selected_bins(2,2))
prob(Ilha_Cobras_L6_grid_of_selected_bins(3,1),Ilha_Cobras_L6_grid_of_selected_bins(3,2))
prob(Ilha_Cobras_L6_grid_of_selected_bins(4,1),Ilha_Cobras_L6_grid_of_selected_bins(4,2))]

prob_L6_sum=sum(prob_L6)
prob_L6_mean=mean(prob_L6)

%L7

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L7_Itibere_grid_of_selected_bins')

prob_L7=[prob(Itibere_L7_grid_of_selected_bins(1,1),Itibere_L7_grid_of_selected_bins(1,2))
prob(Itibere_L7_grid_of_selected_bins(2,1),Itibere_L7_grid_of_selected_bins(2,2))
prob(Itibere_L7_grid_of_selected_bins(3,1),Itibere_L7_grid_of_selected_bins(3,2))]

prob_L7_sum=sum(prob_L7)
prob_L7_mean=mean(prob_L7)

%L8

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L8_Trapiche_Rocio_grid_of_selected_bins')

prob_L8=[prob(Trapiche_Rocio_L8_grid_of_selected_bins(1,1),Trapiche_Rocio_L8_grid_of_selected_bins(1,2))
prob(Trapiche_Rocio_L8_grid_of_selected_bins(2,1),Trapiche_Rocio_L8_grid_of_selected_bins(2,2))
prob(Trapiche_Rocio_L8_grid_of_selected_bins(3,1),Trapiche_Rocio_L8_grid_of_selected_bins(3,2))
prob(Trapiche_Rocio_L8_grid_of_selected_bins(4,1),Trapiche_Rocio_L8_grid_of_selected_bins(4,2))
prob(Trapiche_Rocio_L8_grid_of_selected_bins(5,1),Trapiche_Rocio_L8_grid_of_selected_bins(5,2))
prob(Trapiche_Rocio_L8_grid_of_selected_bins(6,1),Trapiche_Rocio_L8_grid_of_selected_bins(6,2))]

prob_L8_sum=sum(prob_L8)
prob_L8_mean=mean(prob_L8)

%L9

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L9_Emboguacu_grid_of_selected_bins')

prob_L9=[prob(Emboguacu_L9_grid_of_selected_bins(1,1),Emboguacu_L9_grid_of_selected_bins(1,2))
prob(Emboguacu_L9_grid_of_selected_bins(2,1),Emboguacu_L9_grid_of_selected_bins(2,2))
prob(Emboguacu_L9_grid_of_selected_bins(3,1),Emboguacu_L9_grid_of_selected_bins(3,2))
prob(Emboguacu_L9_grid_of_selected_bins(4,1),Emboguacu_L9_grid_of_selected_bins(4,2))
prob(Emboguacu_L9_grid_of_selected_bins(5,1),Emboguacu_L9_grid_of_selected_bins(5,2))
prob(Emboguacu_L9_grid_of_selected_bins(6,1),Emboguacu_L9_grid_of_selected_bins(6,2))]

prob_L9_sum=sum(prob_L9)
prob_L9_mean=mean(prob_L9)

%L10

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L10_Teixeira_grid_of_selected_bins')

prob_L10=[prob(Teixeira_L10_grid_of_selected_bins(1,1),Teixeira_L10_grid_of_selected_bins(1,2))
prob(Teixeira_L10_grid_of_selected_bins(2,1),Teixeira_L10_grid_of_selected_bins(2,2))
prob(Teixeira_L10_grid_of_selected_bins(3,1),Teixeira_L10_grid_of_selected_bins(3,2))
prob(Teixeira_L10_grid_of_selected_bins(4,1),Teixeira_L10_grid_of_selected_bins(4,2))
prob(Teixeira_L10_grid_of_selected_bins(5,1),Teixeira_L10_grid_of_selected_bins(5,2))]

prob_L10_sum=sum(prob_L10)
prob_L10_mean=mean(prob_L10)

%L11

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L11_Antonina_grid_of_selected_bins')

prob_L11=[prob(Antonina_L11_grid_of_selected_bins(1,1),Antonina_L11_grid_of_selected_bins(1,2))
prob(Antonina_L11_grid_of_selected_bins(2,1),Antonina_L11_grid_of_selected_bins(2,2))
prob(Antonina_L11_grid_of_selected_bins(3,1),Antonina_L11_grid_of_selected_bins(3,2))
prob(Antonina_L11_grid_of_selected_bins(4,1),Antonina_L11_grid_of_selected_bins(4,2))]

prob_L11_sum=sum(prob_L11)
prob_L11_mean=mean(prob_L11)

%L12

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L12_Europinha_grid_of_selected_bins')

prob_L12=[prob(Europinha_L12_grid_of_selected_bins(1,1),Europinha_L12_grid_of_selected_bins(1,2))
prob(Europinha_L12_grid_of_selected_bins(2,1),Europinha_L12_grid_of_selected_bins(2,2))
prob(Europinha_L12_grid_of_selected_bins(3,1),Europinha_L12_grid_of_selected_bins(3,2))
prob(Europinha_L12_grid_of_selected_bins(4,1),Europinha_L12_grid_of_selected_bins(4,2))
prob(Europinha_L12_grid_of_selected_bins(5,1),Europinha_L12_grid_of_selected_bins(5,2))]


prob_L12_sum=sum(prob_L12)
prob_L12_mean=mean(prob_L12)

%L13

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L13_Eufrasina_grid_of_selected_bins')

prob_L13=[prob(Eufrasina_L13_grid_of_selected_bins(1,1),Eufrasina_L13_grid_of_selected_bins(1,2))
prob(Eufrasina_L13_grid_of_selected_bins(2,1),Eufrasina_L13_grid_of_selected_bins(2,2))
prob(Eufrasina_L13_grid_of_selected_bins(3,1),Eufrasina_L13_grid_of_selected_bins(3,2))
prob(Eufrasina_L13_grid_of_selected_bins(4,1),Eufrasina_L13_grid_of_selected_bins(4,2))]

prob_L13_sum=sum(prob_L13)
prob_L13_mean=mean(prob_L13)

%L14
 
%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L14_Piacaguera_grid_of_selected_bins')

prob_L14=[prob(Piacaguera_L14_grid_of_selected_bins(1,1),Piacaguera_L14_grid_of_selected_bins(1,2))	
prob(Piacaguera_L14_grid_of_selected_bins(2,1),Piacaguera_L14_grid_of_selected_bins(2,2))	
prob(Piacaguera_L14_grid_of_selected_bins(3,1),Piacaguera_L14_grid_of_selected_bins(3,2))	
prob(Piacaguera_L14_grid_of_selected_bins(4,1),Piacaguera_L14_grid_of_selected_bins(4,2))	
prob(Piacaguera_L14_grid_of_selected_bins(5,1),Piacaguera_L14_grid_of_selected_bins(5,2))	
prob(Piacaguera_L14_grid_of_selected_bins(6,1),Piacaguera_L14_grid_of_selected_bins(6,2))	
prob(Piacaguera_L14_grid_of_selected_bins(7,1),Piacaguera_L14_grid_of_selected_bins(7,2))	
prob(Piacaguera_L14_grid_of_selected_bins(8,1),Piacaguera_L14_grid_of_selected_bins(8,2))	
prob(Piacaguera_L14_grid_of_selected_bins(9,1),Piacaguera_L14_grid_of_selected_bins(9,2))]

prob_L14_sum=sum(prob_L14)
prob_L14_mean=mean(prob_L14)

%L15

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L15_Uba_grid_of_selected_bins')

prob_L15=[prob(Uba_L15_grid_of_selected_bins(1,1),Uba_L15_grid_of_selected_bins(1,2))
prob(Uba_L15_grid_of_selected_bins(2,1),Uba_L15_grid_of_selected_bins(2,2))
prob(Uba_L15_grid_of_selected_bins(3,1),Uba_L15_grid_of_selected_bins(3,2))
prob(Uba_L15_grid_of_selected_bins(4,1),Uba_L15_grid_of_selected_bins(4,2))
prob(Uba_L15_grid_of_selected_bins(5,1),Uba_L15_grid_of_selected_bins(5,2))
prob(Uba_L15_grid_of_selected_bins(6,1),Uba_L15_grid_of_selected_bins(6,2))
prob(Uba_L15_grid_of_selected_bins(7,1),Uba_L15_grid_of_selected_bins(7,2))
prob(Uba_L15_grid_of_selected_bins(8,1),Uba_L15_grid_of_selected_bins(8,2))
prob(Uba_L15_grid_of_selected_bins(9,1),Uba_L15_grid_of_selected_bins(9,2))
prob(Uba_L15_grid_of_selected_bins(10,1),Uba_L15_grid_of_selected_bins(10,2))]

prob_L15_sum=sum(prob_L15)
prob_L15_mean=mean(prob_L15)

%L16

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L16_Mariana_grid_of_selected_bins')

prob_L16=[prob(Mariana_L16_grid_of_selected_bins(1,1),Mariana_L16_grid_of_selected_bins(1,2))
prob(Mariana_L16_grid_of_selected_bins(2,1),Mariana_L16_grid_of_selected_bins(2,2))
prob(Mariana_L16_grid_of_selected_bins(3,1),Mariana_L16_grid_of_selected_bins(3,2))
prob(Mariana_L16_grid_of_selected_bins(4,1),Mariana_L16_grid_of_selected_bins(4,2))]

prob_L16_sum=sum(prob_L16)
prob_L16_mean=mean(prob_L16)

%L17

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L17_Gamelas_grid_of_selected_bins')

prob_L17=[prob(Gamelas_L17_grid_of_selected_bins(1,1),Gamelas_L17_grid_of_selected_bins(1,2))
prob(Gamelas_L17_grid_of_selected_bins(2,1),Gamelas_L17_grid_of_selected_bins(2,2))
prob(Gamelas_L17_grid_of_selected_bins(3,1),Gamelas_L17_grid_of_selected_bins(3,2))
prob(Gamelas_L17_grid_of_selected_bins(4,1),Gamelas_L17_grid_of_selected_bins(4,2))
prob(Gamelas_L17_grid_of_selected_bins(5,1),Gamelas_L17_grid_of_selected_bins(5,2))
prob(Gamelas_L17_grid_of_selected_bins(6,1),Gamelas_L17_grid_of_selected_bins(6,2))]

prob_L17_sum=sum(prob_L17)
prob_L17_mean=mean(prob_L17)

%L18

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L18_Guaraquecaba_grid_of_selected_bins')

prob_L18=[prob(Guaraquecaba_L18_grid_of_selected_bins(1,1),Guaraquecaba_L18_grid_of_selected_bins(1,2))
prob(Guaraquecaba_L18_grid_of_selected_bins(2,1),Guaraquecaba_L18_grid_of_selected_bins(2,2))
prob(Guaraquecaba_L18_grid_of_selected_bins(3,1),Guaraquecaba_L18_grid_of_selected_bins(3,2))
prob(Guaraquecaba_L18_grid_of_selected_bins(4,1),Guaraquecaba_L18_grid_of_selected_bins(4,2))]

prob_L18_sum=sum(prob_L18)
prob_L18_mean=mean(prob_L18)

%L19

%load('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\Selected_bins_praias\Grid_bins_selecionados\L19_Pecas_grid_of_selected_bins')

prob_L19=[prob(Pecas_L19_grid_of_selected_bins(1,1),Pecas_L19_grid_of_selected_bins(1,2))
prob(Pecas_L19_grid_of_selected_bins(2,1),Pecas_L19_grid_of_selected_bins(2,2))
prob(Pecas_L19_grid_of_selected_bins(3,1),Pecas_L19_grid_of_selected_bins(3,2))
prob(Pecas_L19_grid_of_selected_bins(4,1),Pecas_L19_grid_of_selected_bins(4,2))
prob(Pecas_L19_grid_of_selected_bins(5,1),Pecas_L19_grid_of_selected_bins(5,2))
prob(Pecas_L19_grid_of_selected_bins(6,1),Pecas_L19_grid_of_selected_bins(6,2))
prob(Pecas_L19_grid_of_selected_bins(7,1),Pecas_L19_grid_of_selected_bins(7,2))
prob(Pecas_L19_grid_of_selected_bins(8,1),Pecas_L19_grid_of_selected_bins(8,2))]


prob_L19_sum=sum(prob_L19)
prob_L19_mean=mean(prob_L19)

%Maximum

prob_L1_max=max(prob_L1)
prob_L2_max=max(prob_L2)
prob_L3_max=max(prob_L3)
prob_L4_max=max(prob_L4)
prob_L5_max=max(prob_L5)
prob_L6_max=max(prob_L6)
prob_L7_max=max(prob_L7)
prob_L8_max=max(prob_L8)
prob_L9_max=max(prob_L9)
prob_L10_max=max(prob_L10)
prob_L11_max=max(prob_L11)
prob_L12_max=max(prob_L12)
prob_L13_max=max(prob_L13)
prob_L14_max=max(prob_L14)
prob_L15_max=max(prob_L15)
prob_L16_max=max(prob_L16)
prob_L17_max=max(prob_L17)
prob_L18_max=max(prob_L18)
prob_L19_max=max(prob_L19)







%%
%All L's

probability_mean_of_bins_model_of_L_1_to_19=[prob_L1_mean
prob_L2_mean
prob_L3_mean
prob_L4_mean
prob_L5_mean
prob_L6_mean
prob_L7_mean
prob_L8_mean
prob_L9_mean
prob_L10_mean
prob_L11_mean
prob_L12_mean
prob_L13_mean
prob_L14_mean
prob_L15_mean
prob_L16_mean
prob_L17_mean
prob_L18_mean
prob_L19_mean]



probability_sum_of_bins_model_of_L_1_to_19=[prob_L1_sum
prob_L2_sum
prob_L3_sum
prob_L4_sum
prob_L5_sum
prob_L6_sum
prob_L7_sum
prob_L8_sum
prob_L9_sum
prob_L10_sum
prob_L11_sum
prob_L12_sum
prob_L13_sum
prob_L14_sum
prob_L15_sum
prob_L16_sum
prob_L17_sum
prob_L18_sum
prob_L19_sum]

probability_max_of_bins_model_of_L_1_to_19 = [prob_L1_max
prob_L2_max
prob_L3_max
prob_L4_max
prob_L5_max
prob_L6_max
prob_L7_max
prob_L8_max
prob_L9_max
prob_L10_max
prob_L11_max
prob_L12_max
prob_L13_max
prob_L14_max
prob_L15_max
prob_L16_max
prob_L17_max
prob_L18_max
prob_L19_max]



%Save sum
save('PDF_SUM_BINS_LOOP_'+(string(n)), 'probability_sum_of_bins_model_of_L_1_to_19') %trocar o source para cada resultado do modelo

csvwrite('PDF_SUM_BINS_LOOP_'+(string(n)), probability_sum_of_bins_model_of_L_1_to_19)

%Save mean
save('PDF_MEAN_BINS_LOOP_'+(string(n)), 'probability_mean_of_bins_model_of_L_1_to_19') %trocar o source para cada resultado do modelo

csvwrite('PDF_MEAN_BINS_LOOP_'+(string(n)), probability_mean_of_bins_model_of_L_1_to_19)

%Save Max
save('PDF_MAX_BINS_LOOP_'+(string(n)), 'probability_max_of_bins_model_of_L_1_to_19') %trocar o source para cada resultado do modelo

csvwrite('PDF_MAX_BINS_LOOP_'+(string(n)), probability_max_of_bins_model_of_L_1_to_19)



