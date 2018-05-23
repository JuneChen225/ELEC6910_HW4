rng default; % For reproducibility
X = [randn(100,2)*3-2*ones(100,2);
    randn(100,2)*1.3+3*ones(100,2).*[-5,3];
    randn(100,2)*3+ones(100,2).*[4,6];
    randn(100,2)*1+ones(100,2).*[6,3];
    randn(100,2)*0.5+ones(100,2).*[-7,3]];
    
  


figure;
plot(X(:,1),X(:,2),'.');
title 'Randomly Generated Data';

opts = statset('Display','final');
[idx,C] = kmeans(X,5,'Distance','cityblock', 'Replicates',5,'Options',opts);

figure;
plot(X(idx==1,1),X(idx==1,2),'r.','MarkerSize',12)
hold on
plot(X(idx==2,1),X(idx==2,2),'b.','MarkerSize',12)
hold on
plot(X(idx==3,1),X(idx==3,2),'g.','MarkerSize',12)
hold on
plot(X(idx==4,1),X(idx==4,2),'y.','MarkerSize',12)
hold on
plot(X(idx==5,1),X(idx==5,2),'c.','MarkerSize',12)

plot(C(:,1),C(:,2),'kx',...
     'MarkerSize',15,'LineWidth',3) 
legend('Cluster 1','Cluster 2','Centroids',...
       'Location','NW')
title 'Cluster Assignments and Centroids'
hold off