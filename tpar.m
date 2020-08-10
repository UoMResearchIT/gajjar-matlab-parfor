function [D]= tpar(N,NZ,tmax,tw,ntw)
    dt=.1
    D=zeros(N,NZ,ntw);
    for kk=1:N
        ll=1:NZ;
        for jj=2:tmax
            t=jj*dt;
            jwrite=mod(jj,tw);
            njw=floor(jj/tw);
            if(jwrite==0);
                v(ll)=kk+(ll-1)*N+njw ;
                D(kk,:,njw)=v(:);
            end
        end
    end
end
