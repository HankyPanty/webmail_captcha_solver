function img_final = func_bw(imag_inp)

img_final = 0.2989*imag_inp(:,:,1)+0.5870*imag_inp(:,:,2)+0.1140*imag_inp(:,:,3);

% for i=1:length(imag_inp(:,1,1));
%   for j=1:length(imag_inp(1,:,1));  
%     img_inp(i,j)=sum(imag_inp(i,j,:));
%   end
% end
% 
% img_final=img_inp/3;