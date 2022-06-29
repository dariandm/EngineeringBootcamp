function [imgOut] = booCrop(imgIn,hStart,hStop,wStart,wStop)

% crops an image
%
% Written by: D. D. Muresan
% Last Modified: June 28, 2022

imgOut = imgIn(hStart:hStop,wStart:wStop,:);
