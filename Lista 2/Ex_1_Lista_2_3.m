num = [1];
den = [1 0.014 0.0068];
t = 0:0.0001:1000;
G = tf(num,den)
[y,x,t] = step(G,t);
%stepplot(G)
plot(x,y,'DisplayName','2° Ordem')
hold on
grid
num = [1 -0.0006];
G = tf(num,den)
[y,x,t] = step(G,t);
plot(x,y,'DisplayName','Original')

%legend('Resposta de 2° Ordem')
for k = 0:0.0002:0.0006
    t = 0:0.0001:1000;
    num = [1 k];
    G=tf(num,den)   
    [y,x,t] = step(G,t);
    plot(x,y,'DisplayName','')
end
legend
