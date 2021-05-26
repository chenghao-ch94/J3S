function [CC]=genGaussian(data,alpha,b)
    for n=1:size(data,1)

        theD=data{n};
        Rfeat_dim=size(theD,1);
        shift = 1e-03.*eye(Rfeat_dim);
        regionD = ones(size(theD,1)+1); 
        gama = (1-alpha)/(2*alpha);
        b2 = b^2;
        COVD = cov(theD') + trace(cov(theD')).*shift; 
        [U S V] = svd(COVD);
        diag_S = diag(S);      
        diag_S = sign(diag_S).*((gama.^2+abs(diag_S/alpha)).^(0.55)-gama);
        COVD = U*(diag(diag_S))*U'; 
    
        regionD(1:size(theD,1),1:size(theD,1)) = (COVD + b2.*(mean(theD,2)*mean(theD,2)')); 
        regionD(1:size(theD,1),1+size(theD,1)) =  b.*mean(theD,2);
        regionD(1+size(theD,1),1:size(theD,1)) =  b.*mean(theD,2)';

        [U, S, V] = svd(regionD);         
        diag_S = diag(S);
        diag_S = diag_S + 1e-16;
        log_diag_S = sign(diag_S).*abs(diag_S).^(0.9);
        regionD = U*(diag(log_diag_S))*U'; 

        true_mat = true(size(regionD,1),size(regionD,1));
        in_triu = triu(true_mat);
        CC(:,n)=regionD(in_triu);
    end
end