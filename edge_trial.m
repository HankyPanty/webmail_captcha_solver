function [BW1,BW2] = edge_trial(img)


BW1 = edge(img,'sobel');
BW2 = edge(img,'canny',0.45);
% figure;
% imshowpair(BW1,BW2,'montage')