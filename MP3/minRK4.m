function [t,y] = minRK4(fun, tspan, y1, n) % anpassa (:,1) , undersök globalt trunkeringsfel
a = tspan(1);
b = tspan(2);
t = linspace(a, b, n+1);
h = (b-a)/n;
y = zeros(length(y1),length(t));

y(1:length(y1)) = y1;

for i = 1:n
    k1 = fun(t(:,i),y(:,i));
    k2 = fun(t(:,i) + h/2, y(:,i) + h * k1 / 2);
    k3 = fun(t(:,i) + h/2, y(:,i) + h * k2 / 2);
    k4 = fun(t(:,i)+h,y(:,i) + h*k3);
    y(:,i+1) = y(:,i) + h*(k1 + 2*k2 + 2*k3 + k4)/6;
end

y = y';
end