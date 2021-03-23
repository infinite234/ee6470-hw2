# Homework-2: Implementation of 3*3 Gaussian blur filter in systemc using fifo channels and also implementing a buffer that will send necessary rows of image pixels until they are not used.

### _Shivani Singh (309591030)_

## Introduction
For making a gaussian blur filter 

In this homework, two types of implementation is done:
-Part one is editing the given sobel filter to Gaussian filter in cpp using 3*3 gaussian kernel and\\
-Part two is implementing the gaussian filter in systemc


## Implementation details 

### - Gaussian Kernel Generation
The approximation to 3x3 Gaussian kernel used in designing gaussian filter is:\\
```sh
#define filterWidth 3
#define filterHeight 3

double filter[filterHeight][filterWidth] ={{1, 2, 1},{2, 4, 2},{1, 2, 1}};
double factor = 1.0 / 16.0;
double bias = 0.0;
```
After designing the kernel we need to implement it to bitmap image for blurring. The center value of this filter will be the largest. 


### - Applying Gaussian kernel to bitmap image
This code represents the application of the gaussian blur on bitmap image. Lets say the height and width of the image is equal to h and w. Thus to apply filter we need to slide the kernel through the whole image. In this example, to find index of 0th row and oth column after applying blur filter we need to take only some part of kernel thus we will take the kernel indices as (-1,0,1) and will check if the summation of image indices and kernel indices in the range of width and height, the remaining part of kernel not in the bound will be discarded.
```sh
for (v = -yBound; v != yBound + adjustY; ++v) {
          for (u = -xBound; u != xBound + adjustX; ++u) {
            if (x + u >= 0 && x + u < width && y + v >= 0 && y + v < height) {
              R = *(image_s + byte_per_pixel * (width * (y + v) + (x + u)) + 2);
              G = *(image_s + byte_per_pixel * (width * (y + v) + (x + u)) + 1);
              B = *(image_s + byte_per_pixel * (width * (y + v) + (x + u)) + 0);
               
              Red += R * ker[u + xBound][v + yBound];
              Green += G *ker[u + xBound][v + yBound];
              Blue += B* ker[u + xBound][v + yBound];

              total+= ker[u + xBound][v + yBound];
            }}}
```
In this code we are finding the RGB (double) value frrom the source image . since the output will only be blurred, so no need to convert into grayscale. After finding RGB value we will convolve it with kernel values to get the new RGB values. 

```sh
// Convert into rgb
        *(image_t + byte_per_pixel * (width * y + x) + 2) = int(Red/total);
        *(image_t + byte_per_pixel * (width * y + x) + 1) = int(Green/total);
        *(image_t + byte_per_pixel * (width * y + x) + 0) = int(Blue/total);
```
Since the value of the kernel value is in integer and the factor for 3*3 matrix is 16 we will edit the target image RGB value for the same positions as of source image to (new RGB value/factor). Thus, successful implementation of applying gaussian blur filter is done.

### - SystemC Implementation
In systemc, firstly three processes are made using sc_module i.e. input(read bmp), calculation(apply_gauss) and output(write bmp). So, the tesbench sends the value of r,g,b of target bitmap image to the gauss_filter where gauss_filter reads the r,g,b value and then compute the r,g,b and result value for output image and sends to the tesbench.cpp when the image is written.
```sh
"Testbench.cpp"                      |                "Gauss_filter.cpp"
o_r.write(R);                        |                 double R =i_r.read();
o_g.write(G);                        |                 double G =i_r.read();
o_b.write(B);                        |                 double B = i_b.read();
```


## Algorithm and Design
The following design is for the FIFO implementation of the gaussian filter. 

![source image](https://github.com/infinite234/ee6470-hw2/blob/main/hw2/gauss_filter.png)<br/>

For the Cache gaussian filter

![source image](https://github.com/infinite234/ee6470-hw2/blob/main/hw2/cache.png)<br/>

## Experimental results
The input given to the code is a bitmap file and the output er get is a blur image bitmap file.
### Part one
lena.bmp is the original image whereas len_gauss.bmp is the  new blurr image. (software.(.cpp))<br/>
lena_std_short.bmp.<br/>

![source image](https://raw.githubusercontent.com/infinite234/ee6470/main/hw1/gauss_fiter_cpp/lena_std_short.bmp)<br/>
lena_gauss.bmp<br/>
![target image](https://raw.githubusercontent.com/infinite234/ee6470/main/hw1/gauss_fiter_cpp/lena_gauss2.bmp)<br/><br/>


### Part two
lena_std_short.bmp is the original image whereas lena_gauss2.bmp is the  new blurr image.(systemc)<br/>
lena_std_short.bmp.<br/>

![source image](https://raw.githubusercontent.com/infinite234/ee6470/main/hw1/gauss_fiter_cpp/lena_std_short.bmp)<br/>

lena_gauss2.bmp<br/>
![target image](https://raw.githubusercontent.com/infinite234/ee6470/main/hw1/gauss_fiter_cpp/lena_gauss2.bmp)<br/>

## Simulation Results
The gaussian part implementation using FIFO channels completes in 655366 ns and the pixel count is equal to 
Simulation for gaussian_fifo.<br/>

![source image](https://github.com/infinite234/ee6470-hw2/blob/main/hw2/cache_gaussian_fifo/Screenshot%20from%202021-03-23%2000-26-42.png)<br/>

The gaussian part implementation using FIFO channels completes in 589830 ns and the pixel count is equal to 198115.
Simulation for cache_gaussian_fifo.<br/>

![source image](https://github.com/infinite234/ee6470-hw2/blob/main/hw2/gaussian_fifo/Screenshot%20from%202021-03-23%2000-13-28.png)<br/>


## Conclusion
Thus, successful implementation of gaussian blur filter in software and hardware(systemc) has been done resulting to successful blurring lena.bmp and lena_gauss2.bmp image  as shown in results.

