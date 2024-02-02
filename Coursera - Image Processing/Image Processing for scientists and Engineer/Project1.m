img = imread("boston night.JPG");
% Enter your code below
g = im2gray(img); 
subplot(411); imshow(g);

gamma_out=imadjust(g,[],[],1/2);
subplot(412); imshow(gamma_out);

final_img = imrotate(gamma_out,-1,'crop'); 
subplot(413); imshow(final_img);

imgAdjusted  = uint8(final_img);
imtool(imgAdjusted);


