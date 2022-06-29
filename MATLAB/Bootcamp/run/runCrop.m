% Script to run edit tools 

% read input image ...
fileName = 'lemur.png';
hStart = 10;
hStop  = 100;
wStart = 40;
wStop  = 100;

imgIn = ReadImageAsDouble(fileName);
imgOut= booCrop(imgIn,hStart,hStop,wStart,wStop);

% visualize input
figure(1);
imagesc(imgIn);
% impixel -- shows RGB colors.
truesize;

% visualize output
figure(2);
imagesc(imgOut);
truesize;