# Estimation of activity energy expenditure based on activity classification using multi-site triaxial accelerometry
### Kim 2008
---

## Description
Three methods were developed using one adult participant- linear regression using a waist-worn accelerometer, linear regression using a combination of waist, ankle, and wrist accelerometers, and a linear regression using a combination of waist, ankle, and wrist accelerometers in which activity type (arm- or leg-dominant) was also included in the model. The coefficient of determination (R2) was 0.855 (waist only), 0.924 (waist, ankle, wrist), and 0.952 (waist, ankle, wrist, with activity type in model).


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |1 male adult, 30 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, stationary, walking and running   |
| *Criterion* |Cosmed K4b2 (VO2)   |
| *Accelerometer(s)* |Freescale MMA7260Q on ankle, waist, and wrist   |
| *Validation approach* |Comparison to criterion   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase0.JPG)

---
## Instructions
Acceleration is filtered at 0.3-19 Hz and the integral of the absolute value of the accelerometer output was calculated using the below equation where Axi(n), Ayi(n), and Azi(n) represent ith sampled acceleration at every 0.01 s over the given time period for the x, y and z axes, respectively. The acceleration values were then used in the developed linear regression equations. While it is stated that the activity type could be automatically classified into two categories (arm-dominant and leg-dominant activities) according to the ratio of wrist to ankle acceleration, more information was not provided.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Kim2008/KIMIAA.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Kim2008/Kim.JPG)

---
## Source Information
#### *Reference*
Kim, D., & Kim, H. C. (2008). Estimation of activity energy expenditure based on activity classification using multi-site triaxial accelerometry. Electronics Letters, 44(4), 266-267.https://doi.org/10.1049/el:20082139 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Kim2008/KimKim.pdf)


#### *Corresponding author*
HC Kim, hckim@snu.ac.kr
