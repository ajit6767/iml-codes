clear; 
close all;
clc;
N = input('Enter no. of elements : ');
% random generated array
unsortedArray = randi(100,1,N);

% Calling the bubble sort function
sortedArray = bubbleSort(unsortedArray);

disp(unsortedArray);
disp('Sorted Array:');
disp(sortedArray);
