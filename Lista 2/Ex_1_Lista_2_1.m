num = [1];
den = [1 0.015 0.021];
t = 0:0.01:1000;
G = tf(num,den)
[y,x,t] = step(G,t);
%stepplot(G)
plot(x,y,'DisplayName','2° Ordem')
hold on
grid
num = [1 0.133];
G = tf(num,den)
[y,x,t] = step(G,t);
plot(x,y,'DisplayName','Original')

%legend('Resposta de 2° Ordem')
for k = 0:0.1:0.2
    num = [1 k];
    G=tf(num,den)   
    [y,x,t] = step(G,t);
    plot(x,y,'DisplayName','')
end
legend

%sys = tf([1 5 9],conv(conv([1 0],[1 0]),[1 3]))
%[p,z] = pzmap(sys)
pzmap(G)
%zeta = 0.5;
%rlocus(sys)
%sgrid(zeta,0)
%[K,pd] = rlocfind(sys)
%damp(sys)