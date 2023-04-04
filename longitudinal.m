clc 
clear all 
close all


t = 10
ts = 20

r = 3
A = 3.23
Cd = 0.4
M = [1400, 1800]
rho =1.225
Kp = [2000, 4000, 1000]
Kd = [470, 470*2, 470*0.5]
Ki = [850, 850*2, 850*0.5]
kp = 2000
kd = 470
ki = 850


for i = 1:length(M)
    m = M(i)
    k = 0.5*rho*A*Cd/m
    x = 0.5*m*k^0.5
    tmp = sim('cruisecontrol.slx')
    hold on
    grid on
    plot(tmp.response)
    if i==length(M)
        plot(tmp.ref)
    end
    xlabel 'Time (s)'
    ylabel 'Velocity (m/s)'
    title 'Varying Mass'
    legend('1400 kg','1800 kg','Reference')
end


% tiledlayout(2,1)
% nexttile
% for i=1:3
%     ki=Ki(i)
%     tmp = sim('cruisecontrol.slx')
%     plot(tmp.disturbance)
%     hold on
%     grid on
%     if i==3
%         plot(tmp.reference)
%     end
% end
% xlabel 'Time (s)'
% ylabel 'Velocity (m/s)'
% title 'Effect of Ki on Transient Response'
% legend('Control','Ki doubled','Ki halved','Reference')
% hold off
% 
% nexttile
% for i=1:3
%     ki=Ki(i)
%     tmp = sim('cruisecontrol.slx')
%     plot(tmp.sserror)
%     hold on 
%     grid on 
%     if i==3
%         plot(tmp.zero)
%     end
% end
% xlabel 'Time (s)'
% ylabel 'Velocity (m/s)'
% title 'Effect of Ki on Steady State Error'
% legend('Control','Ki doubled','Ki halved','Reference')
% hold off
% 





% hold on
% grid on
% plot(tmp.simout)
% plot(tmp.simout1)
% plot(tmp.simout2)
% xlabel 'Time (s)'
% ylabel 'Velocity (m/s)'
% title 'Linearized Dynamics'
% legend('1','2','3')

% hold on 
% grid on 
% for i = 1:3
%     ki=Ki(i)
% tmp = sim('cruisecontrol.slx')
% plot(tmp.response)
% if i ==3
%     plot(tmp.ref)
% end
% xlabel 'Time (s)'
% ylabel 'Velocity (m/s)'
% title 'Varying Integral Gain'
% end
% legend('Control','Ki Doubled','Ki Halved','Reference')
