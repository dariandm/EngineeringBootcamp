function []=WritePNG(pngInput,fname)

% Writes an RGB or RGBA image to a PNG file. 
% Assumption is that the input image is scaled between 0 and 1
%
% Written by: D. Darian Muresan
% Last modified: 6/28/22

% prepare for writing doubles that are bound to [0,1] to file.
pngInput(pngInput>1)=1;
pngInput(pngInput<0)=0;

[m,n,c]=size(pngInput);

% input has 3 or fewer channels
if c<4
    imwrite(pngInput,fname);
end

% if input has more than 4 channels then the 4th is alpha
if c>=4,
    imwrite(pngInput(:,:,1:3), fname, 'Alpha', pngInput(:,:,4));
end
