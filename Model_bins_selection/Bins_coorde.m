
%Select manually the bin coordinate -> saving with L number (ex. L1)+
%"underline"(_) + the number of the bin selected (ex.  "L1_1")

%All bins selected must be saved on Workscape. Further, the script will
%compile de data.

%You must save de file created With a "Name". This file will must open for
%the next model bin selection->

Encantadas_L1_bin=[L1_1.Position
    L1_2.Position
    L1_3.Position
    L1_4.Position
    L1_5.Position
    L1_6.Position
    L1_7.Position
    L1_8.Position
    L1_9.Position]

limoeiro_L2_bin=[L2_1.Position
    L2_2.Position
    L2_3.Position
    L2_4.Position
    L2_5.Position
    L2_6.Position
    L2_7.Position
    L2_8.Position]


POeste_L3_Bins=[L3_1.Position
    L3_2.Position
    L3_3.Position
    L3_4.Position
    L3_5.Position
    L3_6.Position]

Ponta_do_Poco_L4=[L4_1.Position
    L4_2.Position
    L4_3.Position
    L4_4.Position
    L4_5.Position
    L4_6.Position]

Rasa_Cotinga_L5=[L5_1.Position
    L5_2.Position
    L5_3.Position
    L5_4.Position
    L5_5.Position
    L5_6.Position]

Ilha_Cobras_L6=[L4_1.Position
    L4_2.Position
    L4_3.Position
    L4_4.Position]

Itibere_L7=[L7_1.Position
    L7_2.Position
    L7_3.Position]

Trapiche_Rocio_L8=[L8_1.Position
    L8_2.Position
    L8_3.Position
    L8_4.Position
    L8_5.Position
    L8_6.Position]

Emboguacu_L9=[L9_1.Position
    L9_2.Position
    L9_3.Position
    L9_4.Position
    L9_5.Position
    L9_6.Position]

Teixeira_L10=[L10_1.Position
    L10_2.Position
    L10_3.Position
    L10_4.Position
    L10_5.Position]

Antonina_L11=[L11_1.Position
    L11_2.Position
    L11_3.Position
    L11_4.Position]

Europinha_L12=[L12_1.Position
    L12_2.Position
    L12_3.Position
    L12_4.Position
    L12_5.Position]

Eufrasina_L13=[L13_1.Position
    L13_2.Position
    L13_3.Position
    L13_4.Position]


Piacaguera_L14=[L14_1.Position
    L14_2.Position
    L14_3.Position
    L14_4.Position
    L14_5.Position
    L14_6.Position
    L14_7.Position
    L14_8.Position
    L14_9.Position]

Uba_L15=[L15_1.Position
    L15_2.Position
    L15_3.Position
    L15_4.Position
    L15_5.Position
    L15_6.Position
    L15_7.Position
    L15_8.Position
    L15_9.Position
    L15_10.Position]

Mariana_L16=[L16_1.Position
    L16_2.Position
    L16_3.Position
    L16_4.Position
    L16_5.Position
    L16_6.Position]

Gamelas_L17=[L17_1.Position
    L17_2.Position
    L17_3.Position
    L17_4.Position
    L17_5.Position
    L17_6.Position]

Guaraquecaba_L18=[L18_1.Position
    L18_2.Position
    L18_3.Position
    L18_4.Position]

Pecas_L19=[L19_1.Position
    L19_2.Position
    L19_3.Position
    L19_4.Position
    L19_5.Position
    L19_6.Position
    L19_7.Position
    L19_8.Position]


    
selected_bins.Encantadas_L1_bin=Encantadas_L1_bin
selected_bins.limoeiro_L2_bin=limoeiro_L2_bin
selected_bins.POeste_L3_Bins=POeste_L3_Bins
selected_bins.Ponta_do_Poco_L4=Ponta_do_Poco_L4
selected_bins.Rasa_Cotinga_L5=Rasa_Cotinga_L5
selected_bins.Ilha_Cobras_L6=Ilha_Cobras_L6
selected_bins.Itibere_L7=Itibere_L7
selected_bins.Trapiche_Rocio_L8=Trapiche_Rocio_L8
selected_bins.Emboguacu_L9=Emboguacu_L9
selected_bins.Teixeira_L10=Teixeira_L10
selected_bins.Antonina_L11=Antonina_L11
selected_bins.Europinha_L12=Europinha_L12
selected_bins.Eufrasina_L13=Eufrasina_L13
selected_bins.Piacaguera_L14=Piacaguera_L14
selected_bins.Uba_L15=Uba_L15
selected_bins.Mariana_L16=Mariana_L16
selected_bins.Gamelas_L17=Gamelas_L17
selected_bins.Guaraquecaba_L18=Guaraquecaba_L18
selected_bins.Pecas_L19=Pecas_L19



save('selected_bins','Encantadas_L1_bin','limoeiro_L2_bin','POeste_L3_Bins',...
    'Ponta_do_Poco_L4','Rasa_Cotinga_L5','Ilha_Cobras_L6','Itibere_L7',...
    'Trapiche_Rocio_L8','Emboguacu_L9','Teixeira_L10','Antonina_L11',...
    'Europinha_L12','Eufrasina_L13','Piacaguera_L14','Uba_L15','Mariana_L16',...
    'Gamelas_L17','Pecas_L19','Guaraquecaba_L18');