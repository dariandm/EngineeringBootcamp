function [imageThresh]=booThreshold(inputImage, thresholdValue)

% Blur an image by the kernel
% Written by: Darian Muresan
% Last Modified: June 29, 2022

[m,n,c]=size(inputImage);

% get maximum in the color channel
imageThresh = max(inputImage,[],3);

% set to zero small values
imageThresh(imageThresh<thresholdValue)=0;
% set to max large values
imageThresh(imageThresh>thresholdValue)=255;

