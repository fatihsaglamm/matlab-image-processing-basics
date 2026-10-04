# MATLAB Image Processing Projects

A collection of MATLAB projects covering **image enhancement, restoration, frequency-domain filtering, edge detection, segmentation, morphology, and object counting**.

These projects were developed as part of the **CNG466 – Fundamentals of Image Processing** course at Middle East Technical University, Northern Cyprus Campus.

The repository demonstrates a progression from basic spatial-domain operations to more advanced restoration and segmentation techniques.

## Projects

### Assignment 1 – Spatial Domain Image Enhancement

The first assignment focuses on fundamental spatial-domain image processing techniques.

Topics include:

- Histogram analysis
- Median filtering
- Mean filtering
- Noise reduction
- Sobel edge detection
- Image merging
- Grayscale conversion
- Bicubic resizing

The tasks include removing unwanted image artifacts, denoising images while examining edge preservation, and combining multiple images. :chatgpt-content-reference{index="0"}

---

### Assignment 2 – Image Restoration and Reconstruction

The second assignment focuses on identifying and removing different types of image degradation in both the **spatial and frequency domains**. :chatgpt-content-reference{index="1"}

Implemented techniques include:

- 2D Fourier Transform
- Frequency spectrum analysis
- Ideal Notch Reject Filtering
- Order-statistic filtering
- Motion blur modeling
- Disk blur modeling
- Wiener deconvolution
- Sobel edge comparison

The project investigates several noisy or blurred images and applies different restoration approaches depending on the detected degradation.

Example processing flow:

```text
Input Image
    ↓
Noise / Blur Analysis
    ↓
Spatial or Frequency-Domain Processing
    ↓
Image Restoration
    ↓
Edge Comparison
    ↓
Recovered Image
```

For periodic noise, the implementation uses Fourier analysis and an ideal notch reject filter. :chatgpt-content-reference{index="2"}

For blurred images, Wiener deconvolution is used together with motion and disk point-spread functions. :chatgpt-content-reference{index="3"}

---

### Assignment 3 – Image Segmentation and Morphology

The third assignment focuses on **image segmentation and morphological image processing**.

The goal is to segment egg regions from breakfast plate images and estimate the number of eggs in the image. :chatgpt-content-reference{index="4"}

The implementation includes:

- Grayscale conversion
- Otsu thresholding
- Binary image segmentation
- Morphological opening
- Hole filling
- Connected-component analysis
- Size-based object filtering
- Egg counting

The segmentation stage uses Otsu’s thresholding method. :chatgpt-content-reference{index="5"}

Morphological processing is then applied using operations such as:

```text
strel
imopen
imfill
bwconncomp
```

Connected components are analyzed by size to estimate the final egg count. :chatgpt-content-reference{index="6"}

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
├── assignment-3-segmentation-morphology/
│   └── egg_segmentation_counting.m
│
├── README.md
└── .gitignore
```

## Technologies

- MATLAB
- Image Processing Toolbox
- Digital Image Processing
- Spatial Filtering
- Frequency-Domain Processing
- Fourier Transform
- Morphological Processing
- Image Segmentation

## Key Concepts

This repository demonstrates:

- Image enhancement
- Median filtering
- Mean filtering
- Histogram analysis
- Sobel edge detection
- Image merging
- Fourier-domain analysis
- Notch reject filtering
- Wiener deconvolution
- Motion blur restoration
- Image segmentation
- Otsu thresholding
- Morphological opening
- Hole filling
- Connected-component analysis
- Object counting

## Learning Progression

```text
Assignment 1
Spatial-Domain Enhancement
Filtering + Edge Detection
        ↓
Assignment 2
Image Restoration
FFT + Frequency-Domain Filtering
        ↓
Assignment 3
Segmentation + Morphology
Object Detection and Counting
```

## Running the Projects

Open MATLAB and navigate to the desired assignment folder.

Example:

```matlab
Q1_noise_removal
```

or:

```matlab
image_restoration
```

For Assignment 3:

```matlab
egg_segmentation_counting("Plate1.png")
```

Some scripts require input images with specific filenames.

## Notes

Course-provided input images may not be included in the repository.

Users should provide the required image files before running the corresponding scripts.

## Academic Context

Developed as part of:

**CNG466 – Fundamentals of Image Processing**

Middle East Technical University, Northern Cyprus Campus.

## Author

Fatih Sağlam