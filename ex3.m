fun = @(x) 45*pi*x(1).^2 + 86*pi*x(1)*x(2);
x0 = [.01,.01];
val = fmincon(fun,x0,[],[],[],[],[],[],@confuneq);
x = val(:,1)
l = val(:,2)

function [c,ceq] = confuneq(x)
c = [];
ceq = pi*x(1).^2*x(2) - 200;
end
