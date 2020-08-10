N=4;
NZ=3;
tmax=60;
tw=20;
ntw=tmax/tw;

disp=zeros(N,NZ,ntw)
[disp]=tpar(N,NZ,tmax,tw,ntw);