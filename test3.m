fun = @(x) -((x(1) + 1) * (x(2) + 2));
x0 = [0,0];
Aeq = [1,2];
beq = 50;
val = fmincon(fun,x0,[],[],Aeq,beq);
x = val(:,1)
y = val(:,2)