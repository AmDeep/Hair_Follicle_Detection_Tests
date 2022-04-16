function plot_results(patient,method)

% -------------------------------------------------------------------------
%% patient: number of patient to visualize the images 
%{1,2,3,4,5,6,7,8,9}
%% method:
% gt: Ground truth (expert manual segmentation)
% dl: proposed deep learning segmentation method
% -------------------------------------------------------------------------
%% An example to perform a visualization:
% plot_result(1,'gt');%
% This command displays the images belonging to the first patient of the
% database with the segmentation of ground truth.
%%
load('skin_db.mat');
num_images=30;
num_layers=2;
color=[1 0 0; 0 1 1 ];  %['r','c']

if patient==1
    patient=skin_db.patient01;
elseif patient==2
    patient=skin_db.patient02;
elseif patient==3
    patient=skin_db.patient03;
elseif patient==4
    patient=skin_db.patient04;
elseif patient==5
    patient=skin_db.patient05;
elseif patient==6
    patient=skin_db.patient06;
elseif patient==7
    patient=skin_db.patient07;
elseif patient==8
    patient=skin_db.patient08;
elseif patient==9
    patient=skin_db.patient08;
end

if strcmp(method,'gt')
    method=patient.gtnew;
elseif strcmp(method,'dl')
    method=patient.dl;
    
end

images=patient.oct;

for i=1:num_images
    if strcmp(method,'dl')
    im=uint8(imresize(images(:,:,i),[526,975]));
    else
    im=uint8(images(:,:,i));    
    end
    imshow(mat2gray(im)),title(sprintf('%03d',i));
    hold on;
    
    for j=1:num_layers
        
        plot(method{i,j}.x,method{i,j}.y,'Color',color(j,:),'LineWidth',1.5)
        
    end
    
    
    pause;
    
end

