clear; 
close all;
clc;
n = input('Enter value of (n) :');
Matrix = rand(n);
for i = 1:1:n
    rollno = input('Enter RollNo. :');
    Matrix(1,i) = rollno;
end
disp(Matrix);

