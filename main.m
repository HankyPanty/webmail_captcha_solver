% jk=csvread('database.csv');
% 
% ctr=1;
% for h=1:size(jk(:,2))

im_old=imread(strcat('catches\image_generator (',int2str(33),').png'));

im_new=func_clean(im_old);
% can add edge detection here
imwrite(im_new,strcat(int2str(33),'trial.png'));

% Till here we compleated cleaning
% Now clustering

% vect_black=black_column(im_new);
% vect_cluster=kmeans(im_new',5);

%plot(vect_black);
%hold on;

% plot(vect_cluster);

%for i=1:length(im_new(:,1));
%	for j=1:length(im_new(1,:));
%    im_new_vect(i,j,ctr)=im_new(i,j);
%  end
%end

% ctr=ctr+1
% end

