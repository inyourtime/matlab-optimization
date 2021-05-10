fun = @(x) -(x(1) * x(2));
x0 = [0,0];
Aeq = [9,20];
beq = 700;
val = fmincon(fun,x0,[],[],Aeq,beq);
x = val(:,1)
y = val(:,2)