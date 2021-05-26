clear
clc

tr_lab = zeros(108,1);
for i = 1 : 18 * 6
   tr_lab(i,1) = floor((i-1)/6) + 1;   
end
tt_lab = tr_lab;
sigg = [0,5,10,15,20];
b = 0.4;
alpha = 0.3;

for k = 1 : length(sigg)
    param.sig  = sigg(k);                  % sigma
    param  = getParam(param);
    sum = 1;
    load(['uiuc_noise',num2str(param.sig),'.mat']);
    for x = 1 : size(deepf,1)
        for y = 1 : size(deepf,2)
            uiuc_dat{sum,1} = double(deepf{x,y});
            W = UTL_imagedenoising(double(deepf{x,y}), param);
            SpaDic(:,sum) = W(:);
            sum = sum + 1;
        end
    end
    Gau = genGaussian(uiuc_dat,alpha,b);
    save(['uiuc_dic_sigma',num2str(param.sig)],'Gau','SpaDic','tr_lab','tt_lab','b','alpha');
end



