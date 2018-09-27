function img_final = func_clean_tr(img_inp)

img_final=img_inp;

% for i=2:length(img_inp(:,1));
%   for j=2:length(img_inp(1,:));
%         if (img_inp(i,j)>650)
%             img_final(i,j)=255;
%         else
%             img_final(i,j)=0;
%     end
%   end
% end

% for i=2:(length(img_inp(:,1))-1)
%     for j=2:(length(img_inp(1,:))-1)
%         if (img_inp(i-1,j,:)>700)
%             img_final(i,j)=255;
%         end
%         if (img_inp(i+1,j,:)>700)
%             img_final(i,j)=255;
%         end
%         if (img_inp(i,j-1,:)>700)
%             img_final(i,j)=255;
%         end
%         if (img_inp(i,j+1,:)>700)
%             img_final(i,j)=255;
%         end
%   end
% end
% 


for k=1:1
c=0;
img_inp=img_final;

for i=2:(length(img_inp(:,1))-1)
    for j=2:(length(img_inp(1,:))-1)
   if(img_final(i,j)<255)
    if (img_inp(i-1,j)>230)
        c=c+1;
    end
    if (img_inp(i+1,j)>230)
        c=c+1;
    end
    if (img_inp(i,j-1)>230)
        c=c+1;
    end
    if (img_inp(i,j+1)>230)
        c=c+1;
    end
    if (img_inp(i-1,j-1)>230)
        c=c+1;
    end
    if (img_inp(i-1,j+1)>230)
        c=c+1;
    end
    if (img_inp(i+1,j-1)>230)
        c=c+1;
    end
    if (img_inp(i+1,j+1)>230)
        c=c+1;
    end
    if c>5
      img_final(i,j)=255;
    end
    c=0;
   end
    end
end
end