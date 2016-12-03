%Program: MoneyDetector
%Author: fpt-rainnie (Pattaraporn Tulathum)


clear
clc
close

%read image
rgb = imread('img/Baht_19_edit.png');
%rgb = imread('img/Baht_23_edit.png');
%rgb = imread('img/Baht_32_edit.png');
figure; imshow(rgb)

%d = imdistline; %show distance estimate
[centers, radii] = imfindcircles(rgb,[40 70], 'ObjectPolarity','dark','Sensitivity',0.95);
h = viscircles(centers,radii);

sort(ceil(radii)) %sort radius of circles
figure, h = histogram(radii,4); %histogram of radius to count any types of coin

count = 0;
count = count + h.Values(1);
count = count + h.Values(2);
count = count + h.Values(3);
count = count + h.Values(4);
count

total = 0; 
total = total + h.Values(1);
total = total + h.Values(2)*2;
total = total + h.Values(3)*5;
total = total + h.Values(4)*10;
total