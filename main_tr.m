% jk=csvread('databaseee.csv');

total_img=ones(3250,252);
for h=1:size(databaseee(:,2))
%     im_old=imread('input.png');
    
    da=databaseee{h,2};
    im_old=imread(strcat('catches\image_generator (',int2str(h),').png'));
    
    im_bw=func_bw(im_old);
    im_2=func_clean_tr(im_bw);
    [im_3a,im_3b]=edge_trial(im_2);
    
%     j=h*65-64
%     total_img(j:(j+64),:)=im_3b(:,:);
    
    
%     figure;
%     imshowpair(im_3a,im_3b,'montage')
    imwrite(im_3b,strcat('trrr\',int2str(h),'trial.png'));

%     figure;
%     imshowpair(im_bw,im_2,'montage')
%     figure;
%     imshowpair(im_3a,im_3b,'montage')
end

imwrite(total_img,'yehaivo.png');