clear; 
close all;
clc;
R = input('Enter your last 3digits of your RollNo. :');
M = input('Month of your Dob :');
W = input('Date of your Dob :');

coeff = [R R*M W 25];
roots_of_eq = roots(coeff);
disp('The roots are :');
disp(roots_of_eq);