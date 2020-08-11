function [D]= tpar(N,NZ,tmax,tw,ntw)
    D = zeros(N,NZ,ntw);
    ll = 1:NZ;

    tvals = 2:tmax;
    njws = floor(tvals/tw);
    jwrites = mod(tvals,tw);
    njw_values = njws(jwrites == 0);

    njw_vec_values = permute(repmat((njw_values)', [1, N, 3]), [2, 3 ,1]);
    D = repmat((ll - 1) * N, [N, 1, 3]) + (1:N)' + njw_vec_values;
end
