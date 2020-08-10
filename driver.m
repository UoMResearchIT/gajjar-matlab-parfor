N=4;
NZ=3;
tmax=60;
tw=20;
ntw=tmax/tw;

result = tpar(N,NZ,tmax,tw,ntw);
disp(result)

correct_result(:,:,1) = [
     2     6    10;
     3     7    11;
     4     8    12;
     5     9    13];
 
correct_result(:,:,2) = [
     3     7    11;
     4     8    12;
     5     9    13;
     6    10    14];
 
 correct_result(:,:,3) = [
     4     8    12;
     5     9    13;
     6    10    14;
     7    11    15];
assert(isequal(result, correct_result))