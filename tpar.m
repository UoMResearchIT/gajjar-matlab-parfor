function [D]= tpar(N,NZ,tmax,tw,ntw)
    D = zeros(N,NZ,ntw);
    ll = 1:NZ;

    tvals = 2:tmax;
    njws = floor(tvals/tw);
    jwrites = mod(tvals,tw);
    njw_values = njws(jwrites == 0);

    for kk=1:N
        D(kk, :, :) = repmat(kk + (ll' - 1) * N, 1, 3) + njw_values;
    end
end
