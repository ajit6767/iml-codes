clear
img = imread("C:\Users\Acer\OneDrive\Desktop\New folder\5th sem\Figure.jpg");
imshow(img);
title('Original Image (fig1)');
pause

resized_img = imresize(img, 0.5);
imshow(resized_img);
title('Resized Image (fig2)');
imwrite(img, 'fig1.jpg');
imwrite(resized_img, 'fig2.jpg');
pause

gray_img = rgb2gray(resized_img);
imshow(gray_img);
title('Grayscale Image (fig3)');
imwrite(gray_img, 'fig3.jpg');
pause

gray_array = gray_img(:);
pause

[rows, cols] = size(gray_img);
reconstructed_gray_img = reshape(gray_array, [rows, cols]);
imshow(reconstructed_gray_img);
title('Reconstructed Grayscale Image (fig4)');
imwrite(reconstructed_gray_img, 'fig4.jpg');
pause

% fig4 = imread('fig4.jpg');
% fig5 = repmat(fig4,[1,1,3]);
% imwrite(fig5, 'fig5.jpg');
% figure;
% imshow("fig5.jpg");
% title('colour imagefrom gray scale(fig 5)');

% color_img = cat(3, reconstructed_gray_img, reconstructed_gray_img, reconstructed_gray_img);
% imshow(color_img);
% title('Color Image from Grayscale (fig5)');
% imwrite(color_img, 'fig5.jpg');

fig4 = imread('fig4.jpg');

% Ensure it’s a single-channel grayscale image
if size(fig4, 3) == 1
    % Create an RGB image from the grayscale image
    fig5 = repmat(fig4, [1, 1, 3]);
else
    error('The input image is not grayscale.');
end

% Save and display the image
imwrite(fig5, 'fig4.jpg');
figure;
imshow(fig5);
title('Color Image from Grayscale (fig5)');








