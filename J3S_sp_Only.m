function cost = J3S_sp_Only(Vtr,Ztr,vtest,ztest,tr_lab,W)
    %Normalize
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
    I = eye(n);
    loss = 0;
    if(W(1) == 0)
        MM2 = Ztr'*Ztr+lamda*I;
        ap = MM2\Ztr'*ztest;
    end
    if(W(2) == 0)
        MM = Vtr'*Vtr+lamda*I; 
        ac = MM\Vtr'*vtest;
    end
    %class reconstruction error
    for i = 1 : length(unique(tr_lab))
        V1 = [];
        ac1 = [];
        Z1 = [];
        ap1 = [];
        if(W(1) == 0)
           	for j = 1 : n
                if(tr_lab(j) == i)
                    Z1 = [Z1,Ztr(:,j)];
                    ap1 = [ap1;ap(j)];
                end
            end
            cost(i) = norm(ztest-Z1*ap1)^2; 
        end                   
        if(W(2) == 0)
           	for j = 1 : n
                if(tr_lab(j) == i)
                    V1 = [V1,Vtr(:,j)];
                    ac1 = [ac1;ac(j)]; 
                end
            end
            cost(i) = norm(vtest-V1*ac1)^2;        
        end
    end
    
end