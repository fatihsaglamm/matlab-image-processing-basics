clear all; clc;
A3_2526622("Plate1.png");

function A3_2526622(inputImage)


% Read an image
inputImage = imread(inputImage);

% Call the function to segment the image
segmentedImage = segmentImage(inputImage);

% Call the function to count the eggs in the segmented image
numberOfEggs(segmentedImage);
end

% Function to segment the input image
function segmentedImage = segmentImage(inputImage)
    % Convert to grayscale 
    
        inputImage = rgb2gray(inputImage);
    

    % Calculate a threshold using Otsu's method
    t = graythresh(inputImage);
    t = t * 255; 

    % Apply thresholding
    segmentedImage = inputImage;
    segmentedImage(segmentedImage <= t) = 0;
    segmentedImage(segmentedImage > t) = 255;

    % Display the Images
    figure;
    imshow(inputImage);
    title('Original Image');
    
    figure;
    imshow(segmentedImage);
    title('Segmented Image - Bilevel Thresholding');
end

% Function to count the eggs in the segmented image
function numberOfEggs = numberOfEggs(segmentedImage)
  

    % Morphological operations to clean up the image
    se = strel('disk', 10); % Structural element
    cleanedImage = imopen(segmentedImage, se); % opening process
    cleanedImage = imfill(cleanedImage, 'holes');  % Fill holes in the objects


    % Display intermediate results
    figure;
    subplot(1, 2, 1);
    imshow(segmentedImage);
    title('Original Binary Image');

    subplot(1, 2, 2);
    imshow(cleanedImage);
    title('After Morphological Opening');

    % Define size thresholds for eggs
    minSize = 925;
    maxSize = 1020; 

    % Find connected components
    C = bwconncomp(cleanedImage);

    % Get the number of pixels in each connected component
    numPixels = cellfun(@numel, C.PixelIdxList);

    % Filter components based on size
    eggCount = 0;
    for j = 1:C.NumObjects
        if (numPixels(j) >= minSize && numPixels(j) <= maxSize)
           eggCount = eggCount + 0.5; % Increment by 0.5 for each numPixels is betwenn minSize maxSize egg
        end
    end

   

    % Display final result
        figure;

    imshow(cleanedImage); 
    title(sprintf(' Identified Eggs: %d', eggCount));
   
end

