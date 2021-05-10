fun = @(x) (2*pi*x(1)*x(2) + pi*x(1).^2);
x0 = [0.01,0.01];
val = fmincon(fun,x0,[],[],[],[],[],[],@confuneq);
r = val(:,1)
h = val(:,2)
function [c,ceq] = confuneq(x)
c = [];
ceq = pi*x(1).^2*x(2) - 30;
end
