clear all
close all 
clc 
data=rand(100,2)
option=[3 , 100 ,1e-5,0]
[Centers , U ] = fcm(data,2,option)
figure('na','Data');
scatter(data(:,1),data(:,2))
  
index1=find ( U(1,:)>U(2,:) )
index2=find ( U(2,:)>U(1,:) )

figure('na','Clusers');
scatter(data(index1,1),data(index1,2),'rx')
hold on
scatter(data(index2,1),data(index2,2),'gx')
scatter(Centers(1,1),Centers(1,2),'bo')
scatter(Centers(2,1),Centers(2,2),'ro')
hold off 
