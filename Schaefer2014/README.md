# Establishing and evaluating wrist cutpoints for the GENEActiv accelerometer in youth
### Schaefer 2014
---

## Description
Cut-points for classifying physical activity intensity from signal magnitude vector divided by sampling frequency were generated using receiver operating characteristics (ROC) analysis for children wearing GENEActiv monitors on the non-dominant wrist. Sensitivity and specificity ranged from 91 to 97% and 85 to 88%, respectively.


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |24 children, 6-11 y of age |
| *Setting*  |Laboratory |
| *Activities*  |Active video games, stationary, treadmill walking/running   |
| *Criterion* |Oxycon Mobile (VO2)   |
| *Accelerometer(s)* |GENEActiv on non-dominant wrist   |
| *Validation approach* |Leave-one-out cross-validation  |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
Data were filtered using a bandpass filter with cutoffs of 0.1 and 15 Hz, then signal magnitude vector per 1-sec was calculated as square root of the sum of the squared acceleration in each axis, which was then divided by sampling frequency. Below are the developed cut-points. However, as noted in the R package GGIR, these cut-points are sensitive to sampling rate, so they provide a scaled version which can be applied to any raw acceleration data.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Schaefer2014/Schaefer.JPG)

---
## Source Information
#### *Reference*
Schaefer, C. A., Nigg, C. R., Hill, J. O., Brink, L. A., & Browning, R. C. (2014). Establishing and evaluating wrist cutpoints for the GENEActiv accelerometer in youth. Medicine and Science in Sports and Exercise, 46(4), 826. https://doi.org/10.1249%2FMSS.0000000000000150 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Schaefer2014/Schaefer.pdf)


#### *Corresponding author*
Christine Schaefer, Christine.a.schaefer@gmail.com 
