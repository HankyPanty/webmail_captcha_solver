% cleaning function

function img_final = func_clean(imag_inp)

for i=1:length(imag_inp(:,1,1));
  for j=1:length(imag_inp(1,:,1));  
    img_inp(i,j)=sum(imag_inp(i,j,:));
  end
end

img_final=img_inp;

for i=2:length(img_inp(:,1));
  for j=2:length(img_inp(1,:));
        if (img_inp(i,j)>690)
            img_final(i,j)=255;
        else
            img_final(i,j)=0;
    end
  end
end

for i=2:(length(img_inp(:,1))-1)
    for j=2:(length(img_inp(1,:))-1)
        if (img_inp(i-1,j,:)>750)
            img_final(i,j)=255;
        end
        if (img_inp(i+1,j,:)>750)
            img_final(i,j)=255;
    end
        if (img_inp(i,j-1,:)>750)
            img_final(i,j)=255;
        end
        if (img_inp(i,j+1,:)>750)
            img_final(i,j)=255;
        end
  end
end

for k=1:2
c=0;
img_inp=img_final;

for i=2:(length(img_inp(:,1))-1)
    for j=2:(length(img_inp(1,:))-1)
    if (img_inp(i-1,j)>250)
        c=c+1;
        end
    if (img_inp(i+1,j)>250)
        c=c+1;
        end
    if (img_inp(i,j-1)>250)
        c=c+1;
        end
    if (img_inp(i,j+1)>250)
        c=c+1;
        end
    if (img_inp(i-1,j-1)>250)
        c=c+1;
        end
    if (img_inp(i-1,j+1)>250)
        c=c+1;
        end
    if (img_inp(i+1,j-1)>250)
        c=c+1;
        end
    if (img_inp(i+1,j+1)>250)
        c=c+1;
        end
    if c>5
      img_final(i,j)=255;
        end
    c=0;
    end
end
end