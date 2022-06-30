function [blurred]=booBlur(imageIn,kernel)

% Blur an image by the kernel
% Written by: Darian Muresan
% Last Modified: June 29, 2022

[m,n,c]=size(imageIn);

% create a copy of the input image
blurred=imageIn;

% sum of all weights must add up to 1.
kernel = kernel / sum(kernel(:));


% blur each channel via convolution
for channel=1:c,
    blurred(:,:,channel)=conv2(imageIn(:,:,channel),kernel,"same");
end
