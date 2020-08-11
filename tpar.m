function [D]= tpar(N,NZ,tmax,tw,ntw)
    D = zeros(N,NZ,ntw);
    ll = 1:NZ;

    tvals = 2:tmax;
    njws = floor(tvals/tw);
    jwrites = mod(tvals,tw);
    njw_values = njws(jwrites == 0);

    for kk=1:N
        temp = zeros(NZ, ntw);
        for njw_val = njw_values
            temp(:, njw_val) = kk + (ll - 1) * N + njw_val;
        end
        D(kk, :, :) = temp;
    end
end
