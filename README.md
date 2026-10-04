# MATLAB Image Processing Basics

A collection of MATLAB image processing exercises covering spatial filtering, noise removal, edge detection, image enhancement, and image merging.

The project was developed as part of the **CNG466 – Fundamentals of Image Processing** course.

## Projects

### Q1 – Noise Removal with Median Filtering

This task removes a black pen mark from a noisy image using a median filter.

Main steps:

- Load the noisy image
- Display the original image and histogram
- Apply a `15 × 15` median filter
- Save the cleaned image
- Display the cleaned result and histogram

## Q2 – Image Denoising and Edge Detection

This task removes noise using an averaging filter and compares edge maps before and after denoising.

Main techniques:

- `9 × 9` averaging filter
- Horizontal Sobel filtering
- Vertical Sobel filtering
- Combined edge detection
- Visual comparison between noisy and cleaned images

## Q3 – Image Merging

This task combines two grayscale images into a single result.

The program:

- Loads two images
- Displays both input images
- Merges them
- Displays the merged result

## Q4 – Custom Image Merging

This task repeats the image-merging process using custom images.

The workflow includes:

- Loading two RGB images
- Converting them to grayscale
- Resizing one image using bicubic interpolation
- Matching image dimensions
- Merging both images
- Displaying the final result

## Technologies

- MATLAB
- Image Processing
- Spatial Filtering
- Median Filtering
- Mean Filtering
- Sobel Edge Detection
- Histogram Analysis
- Grayscale Conversion
- Bicubic Interpolation
- Image Merging

## Project Structure

```text
matlab-image-processing-basics/
│
├── Q1_noise_removal.m
├── Q2_denoising_edge_detection.m
├── Q3_image_merging.m
├── Q4_custom_image_merging.m
│
├── background.jpg
├── landscape.jpg
│
├── README.md
└── .gitignore
```

## Key Concepts

This project demonstrates:

- Spatial-domain image enhancement
- Noise reduction
- Median filtering
- Average filtering
- Edge detection
- Sobel operators
- Image histograms
- Image resizing
- Image addition and merging
- MATLAB image manipulation

## Academic Context

Developed as part of:

**CNG466 – Fundamentals of Image Processing**

Middle East Technical University, Northern Cyprus Campus.

## Author

Fatih Sağlam