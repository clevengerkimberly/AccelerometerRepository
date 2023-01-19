# Accelerometer-based energy expenditure estimation methods and performance comparison
### Chuang 2013
---

## Description
Three approaches for predicting METS in adults wearing an accelerometer on the wrist and ankle are presented- 1) single MET regression, 2) activity-specific regression equations to predict METs during sitting, standing, walking upstairs, walking downstairs, level walking, running, and cycling, and 3) a mono-exponential MET equation which uses METs predicted from the single or activity-specific regressions as input. Standard error of the estimate (in METs) was 1.438 (single), from 0.354 to 1.511 (activity-specific), and on average, 0.888 for the mono-exponential method. Only the single and activity-specific regression are made available. 
 


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |10 healthy adults, 20-25 years of age |
| *Setting*  |Sports field |
| *Activities*  | Activities of daily living, bicycling, overground/self-paced walking and running, stairs, stationary  |
| *Criterion* |Cosmed K4b2 (VO2)   |
| *Accelerometer(s)* |Freescale MMA7445L on wrists and ankles (unclear if both)   |
| *Validation approach* |Comparison to criterion   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0 and 2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase0and2.JPG)

---
## Instructions
A high pass filter is used to remove gravitational acceleration and obtain body acceleration. Then, signal vector magnitude in 1 min windows is calculated as the square root of the sum of the squared acceleration in each axis. Features were extracted including 1) eleven time-domain features: count, standard deviation (STD), interquartile range (IQR), mean absolute deviation (MAD), norm, ratio of stance phase (RSP), skewness, kurtosis, the first, second, and third quartile (Q1, Q2, and Q3), and 2) two frequency-domain features: energy and entropy. More information about these features or how they were derived from the wrist and ankle sensors is not provided. Single and activity-specific regression equations are provided below.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Chuang2013/chuang1.JPG)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Chuang2013/Chuang2.JPG)

---
## Source Information
#### *Reference*
Chuang, F. C., Yang, Y. T. C., & Wang, J. S. (2013, July). Accelerometer-based energy expenditure estimation methods and performance comparison. In 2nd International Conference on Advances in Computer Science and Engineering (CSE 2013) (pp. 101-105). Atlantis Press. https://doi.org/10.2991/cse.2013.24 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Chuang2013/CHuang.pdf)

#### *Corresponding author*
Chuang, F. C., Yang, Y. T. C., & Wang, J. S. (2013, July). Accelerometer-based energy expenditure estimation methods and performance comparison. In 2nd International Conference on Advances in Computer Science and Engineering (CSE 2013) (pp. 101-105). Atlantis Press. https://doi.org/10.2991/cse.2013.24 Link to Paper
