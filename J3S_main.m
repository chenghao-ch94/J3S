function [rate] = J3S_main(tr_lab,tt_lab,Vtr,Vtt,Ztr,Ztt)
% Statistical Dictionary: Vtr/Vtt  Spatial Dictionary: Ztr/Ztt
    count = 1;
    ww = 0.1:0.1:1.0;
    for i = 1 : length(ww)
        w1 = ww(i);
        W = [w1;1-w1];
        if(w1==0 || w1==1)
            flag = 1; 
        else
            flag = 0;
        end
        for ii = 1 : length(tt_lab)
            switch flag
                case 0
                    cost = J3S_sp(Vtr,Ztr,Vtt(:,ii),Ztt(:,ii),tr_lab,W);
                otherwise
                    cost = J3S_sp_Only(Vtr,Ztr,Vtt(:,ii),Ztt(:,ii),tr_lab,W);
            end        
            [~,b] = sort(cost);
            pre_lab(ii,1) = b(1); 
        end
        cnum = length( find((tt_lab-pre_lab) == 0) );
        rate(count,1) = cnum / length(tt_lab);
        count = count + 1;
    end
end