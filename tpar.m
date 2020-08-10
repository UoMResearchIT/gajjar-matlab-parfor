function [D]= tpar(N,NZ,tmax,tw,ntw)
    D = zeros(N,NZ,ntw);
    ll = 1:NZ;

    parfor kk=1:N
        temp = zeros(NZ, ntw);
        for jj=2:tmax
            jwrite=mod(jj,tw);
            njw=floor(jj/tw);
            if(jwrite==0)
                temp(:, njw) = kk+(ll-1)*N+njw;
            end
        end
        D(kk, :, :) = temp;
    end
end
