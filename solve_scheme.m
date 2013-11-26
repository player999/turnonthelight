function res = solve_scheme(scheme)
[type, pos] = scheme2string(scheme);
fun = @(x)(-eval_bits(type,x));
options = gaoptimset('PopulationType','bitstring','PopulationSize',1000,'Generations',100);
opt = ga(fun,length(pos),[],[],[],[],[],[],[],options);
res = string2scheme(type,opt);