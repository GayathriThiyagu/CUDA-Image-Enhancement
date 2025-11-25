#!/bin/bash

echo "Compiling CUDA image enhancement code..."
make

echo "Creating output directory..."
mkdir -p output

echo "Running image enhancement operations..."

# Rotate image 90 degrees
echo "Rotating image by 90 degrees..."
./image_enhancement --input input/large_image1.jpg --output output/rotated_90.jpg --operation rotate --angle 90

# Enhance contrast
echo "Enhancing contrast..."
./image_enhancement --input input/large_image2.png --output output/contrast_enhanced.png --operation contrast --factor 1.5

# Adjust brightness
echo "Adjusting brightness..."
./image_enhancement --input input/test_image.bmp --output output/brightened.bmp --operation brightness --value 25

echo "All image enhancement operations completed!"
echo "Output files are in the 'output/' directory"
