function cost = J3S_sp(Vtr,Ztr,vtest,ztest,tr_lab,W)

    if(size(Vtr,1)~=0)
        for i = 1:size(Vtr,2)
            Vtr(:,i) = Vtr(:,i)/norm(Vtr(:,i));
        end
        vtest = vtest/norm(vtest);
    end
    if(size(Ztr,1)~=0)
        for i = 1:size(Ztr,2)
            Ztr(:,i) = Ztr(:,i)/norm(Ztr(:,i));
        end
        ztest = ztest/norm(ztest);
    end

    lamda = 0.001;
    n = size(Vtr,2);
    ite_num = 50;
    eps = 1e-16;
    G = eye(n);
    I = eye(n);

    for iter = 1 : ite_num
       
        %update au and ac
        MM = Vtr'*Vtr+lamda/W(1)*I+lamda/W(1)*G;
        MM2 = Ztr'*Ztr+lamda/W(2)*I+lamda/W(2)*G;
        ac = MM\Vtr'*vtest;
        ap = MM2\Ztr'*ztest;

        %update G
        for i=1:n
            G(i,i)=1/(2*norm([ac(i),ap(i)])+eps);
        end
        loss(iter) = W(1)*norm(vtest-Vtr*ac)^2 + W(2)*norm(ztest-Ztr*ap)^2 + lamda*norm(ac)^2 ...
                  + lamda*norm(ap)^2 + lamda*trace([ac, ap]'*G*[ac, ap]);

        if(iter>=2 && abs(loss(iter)-loss(iter-1))<1e-6)
            break;
        end
    end
    %class reconstruction error
    for i = 1 : length(unique(tr_lab))
        V1 = [];
        ac1 = [];
        Z1 = [];
        ap1 = [];
        for j = 1 : n
           if(tr_lab(j) == i)
               V1 = [V1,Vtr(:,j)];
               Z1 = [Z1,Ztr(:,j)];
               ac1 = [ac1;ac(j)];
               ap1 = [ap1;ap(j)];
           end        
        end
        cost(i)=W(1)*norm(vtest-V1*ac1)^2+W(2)*norm(ztest-Z1*ap1)^2;
    end
    
end