function [readImage]=ReadImageAsDouble(fname)

% Read an unsigned int 8 image and convert to double
%
% Written by: D. Darian Muresan
% Last modified: 6/28/22

readImage = imread(fname);
readImage = double(readImage)/255;