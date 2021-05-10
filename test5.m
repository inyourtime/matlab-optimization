fun = @(x) -(x(1).^2 * x(2));
x0 = [0.01,0.01];
val = fmincon(fun,x0,[],[],[],[],[],[],@confuneq);
w = val(:,1)
h = val(:,2)

function [c,ceq] = confuneq(x)
c = [];
ceq = 4*x(1)*x(2) + x(1).^2 - 45;
end