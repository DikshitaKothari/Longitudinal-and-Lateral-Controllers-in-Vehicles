clc 
clear all
close all 

t = 1.5
v = [-10, -20]
v = v.*(5/18)
lr = 2.75/2

for i=1:length(v)
    A = v(i)/2 
    B = v(i)^2/(2*lr)
    tmp = sim('lanechanging.slx')
    hold on
    grid on
    plot(tmp.response)
end
xlabel 'Time (s)'
ylabel 'Lateral Position (m)'
title 'Transient Response: Undershoot'
legend('-10 km/h','-20 km/h')