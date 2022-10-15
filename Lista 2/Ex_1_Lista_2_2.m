num = [1];
den = [1 0.911 4.884];
t = 0:0.0001:10;
G = tf(num,den)
[y,x,t] = step(G,t);
%stepplot(G)
plot(x,y,'DisplayName','2° Ordem')
hold on
grid
num = [1 0.269];
G = tf(num,den)
[y,x,t] = step(G,t);
plot(x,y,'DisplayName','Original')

%legend('Resposta de 2° Ordem')
for k = 0:0.1:0.2
    t = 0:0.0001:10;
    num = [1 k];
    G=tf(num,den)   
    [y,x,t] = step(G,t);
    plot(x,y,'DisplayName','')
end
legend
