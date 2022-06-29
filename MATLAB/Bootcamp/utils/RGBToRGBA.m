function [rgbaImage]=RGBToRGBA(rgbImage)

% Convert an RGB image to an RGBA image
% Written by: Darian Muresan
% Last modified: 6/26/22

% get sizes of the input image
[m,n,c]=size(rgbImage);

% create output imagels
rgbaImage = ones(m,n,4);
% try this too, what's the difference
% rgbaImage = zeros(m,n,4);

% deal with RGB images
if(c==3)
    % assign first three channels to RGB image 
    rgbaImage(:,:,1:3)=rgbImage;
end

% deal with grayscale images
if(c==1)
    for i=1:3,
        rgbaImage(:,:,i)=rgbImage;
    end
end