# MATLAB Image Processing Projects

A collection of MATLAB projects focused on **digital image enhancement, restoration, filtering, edge detection, frequency-domain processing, and image reconstruction**.

The repository demonstrates both spatial-domain and frequency-domain image processing techniques through practical experiments developed for the **CNG466 – Fundamentals of Image Processing** course.

## Projects

### Assignment 1 – Spatial Domain Image Enhancement

The first assignment focuses on fundamental spatial-domain image processing techniques.

#### Noise and Artifact Removal

A median filter is applied to remove unwanted image artifacts while preserving important visual structures.

Techniques include:

- Image histogram analysis
- Median filtering
- Spatial-domain enhancement
- Image reconstruction

#### Denoising and Edge Detection

A noisy image is processed using an averaging filter and analyzed before and after denoising.

The implementation includes:

- `9 × 9` averaging filter
- Horizontal Sobel operator
- Vertical Sobel operator
- Combined edge maps
- Edge-preservation analysis

#### Image Merging

Two grayscale images are combined into a single image.

The project also includes a custom image-merging experiment using:

- RGB-to-grayscale conversion
- Bicubic interpolation
- Image resizing
- Pixel-wise image addition

## Assignment 2 – Image Restoration and Reconstruction

The second assignment extends the project into more advanced **spatial and frequency-domain restoration techniques**.

The goal is to identify different types of image degradation and select suitable filters to recover the images while preserving edges and structural information. :chatgpt-content-reference{index="0"}

### Periodic Noise Removal

Periodic noise is analyzed using the Fourier transform.

The processing pipeline includes:

```text
Image
  ↓
2D Fourier Transform
  ↓
Frequency Spectrum Analysis
  ↓
Ideal Notch Reject Filter
  ↓
Inverse Fourier Transform
  ↓
Recovered Image
```

The implementation uses:

- `fft2`
- `fftshift`
- Frequency-spectrum visualization
- Ideal notch reject filtering
- `ifft2`

The script identifies periodic noise and suppresses selected frequency components using a notch reject filter. :chatgpt-content-reference{index="1"}

### Additive Noise Filtering

A noisy image is investigated using spatial-domain statistics and histogram analysis.

An order-statistic filter is then used to reduce the detected noise.

The restored image is compared with the original using Sobel edge maps. :chatgpt-content-reference{index="2"}

### Motion Blur Restoration

The project models motion blur using:

```matlab
fspecial('motion', 25, 55)
```

and performs restoration using **Wiener deconvolution**.

The workflow includes:

- Fourier-domain analysis
- Motion blur modeling
- Noise-to-signal ratio estimation
- Wiener filtering
- Edge comparison

:chatgpt-content-reference{index="3"}

### Disk Blur Restoration

Another degraded image is modeled using a disk-shaped point spread function:

```matlab
fspecial('disk', 7)
```

Wiener deconvolution is then applied to reconstruct the image. :chatgpt-content-reference{index="4"}

## Edge Analysis

Sobel operators are used throughout the experiments to compare structural information before and after restoration.

Horizontal operator:

```text
-1 -2 -1
 0  0  0
 1  2  1
```

Vertical operator:

```text
-1  0  1
-2  0  2
-1  0  1
```

The horizontal and vertical responses are combined to visualize the overall edge structure.

## Repository Structure

```text
matlab-image-processing/
│
├── assignment-1-spatial-enhancement/
│   ├── Q1_noise_removal.m
│   ├── Q2_denoising_edge_detection.m
│   ├── Q3_image_merging.m
│   └── Q4_custom_image_merging.m
│
├── assignment-2-image-restoration/
│   └── image_restoration.m
│
├── README.md
└── .gitignore
```

## Technologies

- MATLAB
- Digital Image Processing
- Image Processing Toolbox
- Spatial Filtering
- Frequency-Domain Processing
- Fourier Transform
- Wiener Deconvolution
- Sobel Edge Detection
- Histogram Analysis
- Image Reconstruction

## Key Concepts

This repository demonstrates:

- Spatial-domain image enhancement
- Median filtering
- Mean filtering
- Order-statistic filtering
- Noise analysis
- Periodic noise removal
- Fourier transforms
- Frequency-spectrum analysis
- Notch reject filters
- Motion blur modeling
- Point Spread Functions
- Wiener filtering
- Image deconvolution
- Sobel edge detection
- Bicubic interpolation
- Image merging
- Image reconstruction

## Running the Projects

Open MATLAB and navigate to the project directory.

For Assignment 1, run the desired script:

```matlab
Q1_noise_removal
Q2_denoising_edge_detection
Q3_image_merging
Q4_custom_image_merging
```

For Assignment 2:

```matlab
image_restoration
```

Some scripts expect input images with specific filenames.

## Notes

Course-provided input images may not be included in the repository.

Users should provide the required input images before running the corresponding scripts.

## Academic Context

Developed as part of:

**CNG466 – Fundamentals of Image Processing**

Middle East Technical University, Northern Cyprus Campus.

## Author

Fatih Sağlam