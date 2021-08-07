model = createpde();
geometryFromEdges(model,@circleg);
figure 
pdegplot(model,'EdgeLabels','on'); 
axis equal
applyBoundaryCondition(model,'dirichlet','Edge',1:model.Geometry.NumEdges,'u',0);
specifyCoefficients(model,'m',0,'d',0,'c',1,'a',0,'f',1);
hmax = 0.1;
generateMesh(model,'Hmax',hmax);
figure
pdemesh(model); 
axis equal
results = solvepde(model);
u = results.NodalSolution;
pdeplot(model,'XYData',u)
title('Numerical Solution');
xlabel('x')
ylabel('y')
p = model.Mesh.Nodes;
exact = (1 - p(1,:).^2 - p(2,:).^2)/4;
pdeplot(model,'XYData',u - exact')
title('Error');
xlabel('x')
ylabel('y')
hmax = 0.1;
error = [];
err = 1;
while err > 5e-7 % run until error <= 5e-7
    generateMesh(model,'Hmax',hmax); % refine mesh
    results = solvepde(model);
    u = results.NodalSolution;
    p = model.Mesh.Nodes;
    exact = (1 - p(1,:).^2 - p(2,:).^2)/4; 
    err = norm(u - exact',inf); % compare with exact solution
    error = [error err]; % keep history of err
    hmax = hmax/2;
end
plot(error,'rx','MarkerSize',12);
ax = gca;
ax.XTick = 1:numel(error);
title('Error History');
xlabel('Iteration');
ylabel('Norm of Error');
figure
pdemesh(model); 
axis equal
figure
pdeplot(model,'XYData',u)
title('Numerical Solution');
xlabel('x')
ylabel('y')
p = model.Mesh.Nodes;
exact = (1 - p(1,:).^2 - p(2,:).^2)/4;
pdeplot(model,'XYData',u - exact')
title('Error');
xlabel('x')
ylabel('y')