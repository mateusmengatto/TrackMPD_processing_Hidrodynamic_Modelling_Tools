
[X,Y,Z] = xyz2grid('E:\OneDrive - ufpr.br\Área de Trabalho\OGCM Paranaguá - Boundary Conditions\griddataxyz.xyz')

mapCEP = shaperead('E:\OneDrive - ufpr.br\Área de Trabalho\OGCM Paranaguá - Boundary Conditions\LC_PR_SC_alta.shp') %usado no modelo
mapCEP2 = shaperead('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\SHAPEFILES_e_Maps\Shape_PGUA_GUARA\Shapefile_para_plots_Pgua_Guara_mais_norte.shp') %original
Source14_shape=shaperead('E:\OneDrive - ufpr.br\Dissertação_MESTRADO\MODELAGEM (Track_MPD)\SHAPEFILES_e_Maps\Poligono Espera navios\poligono porto organizados.shp')

gray=[0.8 0.8 0.8]
h = imagesc(X(1,:),Y(:,1),Z);
set(h,'alphadata',~isnan(Z))
mapshow(mapCEP,'FaceColor', gray)
mapshow(mapCEP2,'FaceColor', 'none', 'Edgecolor', 'k', 'LineWidth', 1)


