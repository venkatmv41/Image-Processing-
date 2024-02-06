% Read in cracks and convert to grayscale
refImg = im2gray(imread("00004.jpg"));
newImg = im2gray(imread("00143.jpg"));

threshold_value = graythresh(refImg);
newImgBW = imbinarize(newImg, threshold_value);
matchImg = imhistmatch(newImg,refImg);
matchImgBW = imbinarize(matchImg, threshold_value);

% Uncomment below to display Crack 00143 and both segmentations
montage({newImg, newImgBW, matchImgBW})