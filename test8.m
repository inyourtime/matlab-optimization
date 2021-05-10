fun = @(x) (42*x(1)*x(2) + 180*x(1).^2);
x0 = [2,2];
val = fmincon(fun,x0,[],[],[],[],[],[],@confuneq);
w = val(:,1)
h = val(:,2)

function [c,ceq] = confuneq(x)
c = [];
ceq = (x(1).^2 * x(2)) - 10/3;
end

