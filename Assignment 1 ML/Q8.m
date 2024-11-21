clear;
close all;
clc;

R = input('Enter your RollNo. :'); 
N = 10 + R;
randomArray = randi([1, 100], 1, N);
disp('Generated Array:');
disp(randomArray);
resultMatrix = countUniqueElements(randomArray);
disp('Number and their repetitions:');
disp(resultMatrix);
pause;
figure;
x = resultMatrix(:,1);
y = resultMatrix(:,2);
plot(x,y,'*b');
title('Abhay-2D');
xlabel('Numbers');
ylabel('Number of occurences ');
pause;
% x1=zeros(1,length(resultMatrix));
% y1=zeros(1,length(resultMatrix));
% x2=zeros(1,length(resultMatrix));
% y2=zeros(1,length(resultMatrix));
% for i=1:1:length(resultMatrix)
%     if rem(resultMatrix(i,1),2)==0
%         x1(i)=resultMatrix(i,1);
%         y1(i)=resultMatrix(i,2);
%     else
%         x2(i)=resultMatrix(i,1);
%         y2(i)=resultMatrix(i,2);
%     end
% end
% plot(x1,y1,'dr');
% hold on;
% plot(x2,y2,'og');
sumValues = 0;
figure;
for i = 1:1:length(resultMatrix)
    if rem(resultMatrix(i,1),2) == 0
        hold on;
        plot(resultMatrix(i,1),resultMatrix(i,2),'dr');
        sumValues = sumValues + resultMatrix(i,2); 
    else
        hold on;
        plot(resultMatrix(i,1),resultMatrix(i,2),'og');
        sumValues = sumValues + resultMatrix(i,2);
    end
end
grid on;
title('Abhay-2D');
xlabel('Numbers');
ylabel('Number of occurences ');

pause;
sumValues = sumValues/(10+R);
rangeY = zeros(1,length(resultMatrix));
for i=1:1:length(resultMatrix)
    rangeY(i)=sumValues;
end
figure;
hold on;
plot(resultMatrix(:,1),rangeY,':b');


