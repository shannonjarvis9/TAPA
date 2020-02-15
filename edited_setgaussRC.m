Coupled = 1;
TwoCarriers = 1;
RC = 0;

nx = 201;
l = 1e-6;

x =linspace(0,l,nx);
dx = x(2)-x(1);
xm = x(1:nx-1) + 0.5*dx;

Nd = linspace(1e16, 20e16, nx); % )1e16 * 1e6; % Const. 1/cm3 (100 cm/m)^3
%Nd = 1e16 * 1e6;
NetDoping = ones(1,nx).*Nd; % doping

x0 = l/2;
nw = l/20;
npDisturbance = 1e16*1e6*exp(-((x-x0)/nw).^2);

LVbc = 0;
RVbc = 0;

TStop = 14200000*1e-18;
PlDelt = 100000*1e-18;

% PlotYAxis = {[-5e-7 5e-7] [-1 5] [-0.001 0.001]...
%     [6e20 12e20] [6e20 12e20] [4e43 13e43]...
%     [-5e21 3e21] [-5e31 3e31] [-1.1e8 1.1e8] ...
%     [-1e8 1e8] [-10e-3 10e-3] [0 10e21]};

%Magnitude of bounds much much larger
%n,p (scond row) dec, third dec too


doPlotImage = 0;
PlotFile = 'Gau2CarRC.gif';
