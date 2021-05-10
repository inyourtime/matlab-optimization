fun = @(x) -(x(1) * x(2));
x0 = [0,0];
Aeq = [1,1];
beq = [300];
val = fmincon(fun,x0,[],[],Aeq,beq);
x = val(:,1)
y = val(:,2)