clear all
clc
warning('off')
%--dictionary construction
G_uiuc_data;
%--random sample indexes for training and testing using for all
%comparsion methods.
load ('randl.mat');
%--noise level: 0 means clean image.
sigma = [0,5,10,15,20]; 
%--class attribute: [class_num, train_num, all_num]. all_num means the number of selected samples for a class during training.
uiuc = [18,6,12];        

par = uiuc;
 for k = 1 : length(sigma)
    load(['uiuc_dic_sigma',num2str(sigma(k)),'.mat']);
    [a1,b1]=pca(Gau');
    Gau = a1'*Gau;
    for m=1:size(SpaDic,2)
       temp=reshape(SpaDic(:,m),64,64);
       temp=temp';
       SpaDic(:,m)=temp(:);
    end
    [a2,b2]=pca(SpaDic');
    SpaDic = a2'*SpaDic;
    for time = 1:10
        sum_t = 1;
        for i = 1 : par(1)
            for j = 1 : par(2)
               Vtr(:,sum_t) = Gau(:,(i-1)*par(3)+randl(time,j));
               Vtt(:,sum_t) = Gau(:,(i-1)*par(3)+randl(time,j+par(2)));

               Ztr(:,sum_t) = SpaDic(:,(i-1)*par(3)+randl(time,j));
               Ztt(:,sum_t) = SpaDic(:,(i-1)*par(3)+randl(time,j+par(2)));  
               sum_t = sum_t + 1;
            end
        end
        acc(:,time) = J3S_main(tr_lab,tt_lab,Vtr,Vtt,Ztr,Ztt);
        clear Vtr Vtt Ztr Ztt
    end
    Acc{k,1}=acc;
 end