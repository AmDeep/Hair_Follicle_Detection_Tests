
----------------------------------------------------------------
Skin human DB
----------------------------------------------------------------


*** Content of the database ***

Database of human skin OCT is composed of a total of 270 images from 9 healthy humans with ages between 28 and 72 years old. The research protocol was approved by the Ethics Committee of the Capital Region of Denmark: no. H-16039077. The skin images were acquired from the cheek of the subjects using a UHR-OCT (ultrahigh-resolution) system developed by the Technical University of Denmark (DTU). The used UHR-OCT system achieves 6 and 2.2µm for lateral and axial resolution, respectively. 

Patients      Images    Dimensions
Patient01	30	601 x 975 	
Patient02	30	601 x 975
Patient03	30	601 x 975	
Patient04	30	526 x 975 	
Patient05	30	601 x 975 	
Patient06	30	601 x 995	
Patient07	30	601 x 995	
Patient08	30	551 x 995 	
Patient09	30	601 x 995	


In terms of image size, the number of image pixels varies from one patient to another. In order to be segmented through deep learning techniques, it is required that all images have the same dimension. For this reason, a rescaling of all images to the minimal dimension was performed, in this case, to 526x975 pixels. 
The epidermis surface and the dermo-epidermal junction on these images were manually segmented by an expert for training and validation purposes. 


*** Use of the database ***

After loading, the following variables are generated for each patient:

- oct: matrix with 30 human oct scans 
- name: name of the images
- gt:  ground truth (expert manual segmentation). Each row corresponds to the layers of each image. The first column corresponds to the upper part of the epidermis (coordinates x and y) and the second one corresponds to the dermo-epidermal junction (coordinates x and y). 
- dl:  proposed deep learning segmentation method. Each row corresponds to the layers of each image. The first column corresponds to the upper part of the epidermis (coordinates x and y) and the second one corresponds to the dermo-epidermal junction (coordinates x and y). 



*** Plot results ***

Run plot_results.m function. 

Example for plotting manual segmentation results of the first patient:

	> plot_results(1,'gt')


*** Extra information ***

For more information, see: del Amor R, Morales S, Colomer A, Mogensen M, Jensen M, Israelsen NM, Bang O and Naranjo V (2020) Automatic Segmentation of Epidermis and Hair Follicles in Optical
Coherence Tomography Images of Normal Skin by Convolutional Neural Networks. Front. Med. 7:220. doi: 10.3389/fmed.2020.00220