clear; 
close all;
clc;
n = input('Enter no. of rows :');
Matrix = randi(10,n);
determinant = det(Matrix);
disp(Matrix);
disp(determinant);