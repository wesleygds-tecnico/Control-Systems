num = [1 5 9];
den =  conv([1 0 0],[1 3]);
G = tf(num,den)
zeta = 0.6;
rlocus(G)
%sgrid(zeta,2)