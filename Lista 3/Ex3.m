num = conv([1],[1]);
den =  conv([1 0],[1 3]);
G = tf(num,den)
damp(G)
rlocus(G)
%sgrid(0.7,2.45)
%[k,poles] = rlocfind(G)
%r=rlocus(G,k) 
