num = [1];
den = [1 1.009 5.56];
t = 0:0.0001:10;
G = tf(num,den)
[y,x,t] = step(G,t);
%stepplot(G)
plot(x,y,'DisplayName','2° Ordem')
hold on
grid
num = [1 115.28];
G = tf(num,den)
[y,x,t] = step(G,t);
plot(x,y,'DisplayName','Original')

%legend('Resposta de 2° Ordem')
for k = 0:50:150
    t = 0:0.0001:1000;
    num = [1 k];
    G=tf(num,den)   
    [y,x,t] = step(G,t);
    plot(x,y,'DisplayName','')
end
legend
