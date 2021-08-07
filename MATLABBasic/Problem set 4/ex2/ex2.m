
clear;
k=2
G0=1
c=1
sys = @(t,x) [x(1)-k*x(2);x(1)-c*x(2)-G0]; 
xmin=-10;xmax=10;sep=1;
ymin=5;ymax=15;
phasefield(sys,xmin:0.25:xmax,ymin:0.25:ymax);
     hold on
     for x0=xmin:sep:xmax
         for y0=ymin:sep:ymax
            [ts,xs] = ode45(sys,[0 6],[x0 y0]);
            plot(xs(:,1),xs(:,2))
         end
     end
     for x0=xmin:sep:xmax
         for y0=ymin:sep:ymax
            [ts,xs] = ode45(sys,[0 -6],[x0 y0]);
            plot(xs(:,1),xs(:,2))
         end
     end
     hold off
axis([xmin xmax ymin ymax])
fsize=18;
title('I’ = I – KS, S’ = I - CS - G0')
set(gca,'XTick',xmin:sep:xmax,'FontSize',fsize)
set(gca,'YTick',xmin:sep:xmax,'FontSize',fsize)
xlabel('x(t)','FontSize',fsize)
ylabel('y(t)','FontSize',fsize)