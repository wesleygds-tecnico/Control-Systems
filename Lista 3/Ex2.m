num = conv([1 -4 18],[1 2]);
den =  conv([1 0 -2],[1 12]);
G = tf(num,den)
damp(G)
rlocus(G)
sgrid(0.7,2.45)
[k,poles] = rlocfind(G)
r=rlocus(G,k) % Retorna as raízes
%r=rlocus(G,0.666)

