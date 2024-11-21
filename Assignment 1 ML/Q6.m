clear; 
close all;
clc;
R = input('Enter your RollNo. : ');
N = input('No. of points you need to plot : ');
x=zeros(1,N);
y=zeros(1,N);
theta=linspace(0,2*pi,N);
for i=1:N
    x(i)=R*cos(theta(i));
    y(i)=R*sin(theta(i));
end
figure;
plot(x,y,'.k');
axis equal;
grid on;
title('Abhay-2D Circle');
xlabel('X-Axis');
ylabel('Y-Axis');
