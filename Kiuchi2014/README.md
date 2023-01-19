# Preliminary study for the assessment of physical activity using a triaxial accelerometer with a gyro sensor on the upper limbs of subjects with paraplegia driving a wheelchair on a treadmill
### Kiuchi 2014
---

## Description
Twelve total models (three feature sets at four different wear locations) were developed for predicting energy expenditure using acceleration and gyroscopic angular velocity in manual wheelchair users. Models are available for each wrist and upper arm. The coefficient of determination (R2) was 0.50 to 0.87.
 


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |6 male wheelchair users with spinal cord injury, 22-61 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Treadmill self-propulsion   |
| *Criterion* |Arco system AR-1 Type-4 (VO2)   |
| *Accelerometer(s)* |MicroStone accelerometer and gyroscope on both wrists, upper arms   |
| *Validation approach* |Comparison to criterion   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0 and 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase01.JPG)


---
## Instructions
Acceleration data were high-pass filtered with a cutoff frequency of 0.5 Hz and a low-pass filter with a cutoff frequency of 5 Hz. Gyroscope data were not filtered. The filtered acceleration and raw angular velocity data were calculated as the average of the absolute values in each direction, defined as anteroposterior (x-axis), vertical (y-axis) and mediolateral (z-axis). Three models at each wear location (12 total) are available to predict energy expenditure (kcal/kg/min). Input variables include acceleration (A; m/s2), angular velocity (ω:; deg/s), age (years), height (cm), weight (kg), and upper limb length (cm; measured from the acromion angle to the middle fingertip). For acceleration and angular velocity, when more than one axis is included in parentheses, the input variable is the synthesis of acceleration or angular velocity in the listed axes. For example, A (x,y) is the synthesis of acceleration in the x- and y-axes. While not explicitly defined, the related papers they have cited indicate that synthetic acceleration is the square root of the sum of the squared values in each axis. In this example, the square root of the sum of the squared acceleration in the x- and y-axes.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Kiuchi2014/KiuchiModel12.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Kiuchi2014/KiuchiModel3.JPG)



---
## Source Information
#### *Reference*
Kiuchi, K., Inayama, T., Muraoka, Y., Ikemoto, S., Uemura, O., & Mizuno, K. (2014). Preliminary study for the assessment of physical activity using a triaxial accelerometer with a gyro sensor on the upper limbs of subjects with paraplegia driving a wheelchair on a treadmill. Spinal Cord, 52(7), 556-563. https://doi.org/10.1038/sc.2014.70 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Kiuchi2014/Kiuchi.pdf)


#### *Corresponding author*
T Inayama, tinayama@tmu.ac.jp
