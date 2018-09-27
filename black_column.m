function summer=black_column(img_clean)
  
  for i=1:length(img_clean(1,:))
    summer(i)=65*255-sum(img_clean(:,i));
  end
