# Use of a 2-regression model for estimating energy expenditure in children
### Crouter 2012
---

## Description
Two 2-regression models to predict METs were developed for a hip-worn ActiGraph in children (one for vertical axis and one for vector magnitude counts/10-s). Mean bias was 0.06 METs for vector magnitude counts and 0.15 METs for vertical axis counts.


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |106 (55 males) healthy children, 8-15 years of age |
| *Setting*  |Inside/outside |
| *Activities*  |Activities of daily living, overground/self-paced walking and running, sports/exercise, stationary   |
| *Criterion* |Cosmed K4b2 (VO2)   |
| *Accelerometer(s)* |ActiGraph GT3X on right hip   |
| *Validation approach* |Holdout of 33 participants   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase2.JPG)

---
## Instructions
The models can be implemented as described below or using the [TwoRegression](https://cran.r-project.org/web/packages/TwoRegression/vignettes/TwoRegression.html) R package.
There are separate formulas for either vertical axis counts/10-s or vector magnitude counts/10-s (square root of the sum of the squared counts in each axis). The coefficient of variation (CV) for each 10-second epoch and all possible combinations of the surrounding five 10-sec epochs is calculated. So, the CV is calculated for the 10-sec epoch of interest and the 1) five 10-sec epochs before, 2) four 10-sec epochs before and one 10-sec epoch after, 3) three 10-sec epochs before and two 10-sec epochs after, 4) two 10-sec epochs before and three 10-sec epochs after, 5) one 10-sec epoch before and four 10-sec epochs after, and 6) five 10-sec epochs that followed. Then, the lowest CV for each 10-second epoch is used to determine the appropriate equation for predicting METs/min.

### Vertical axis counts

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Crouter2012/Crouter2012VA.JPG)


### Vector magnitude counts

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Crouter2012/Crouter2012VM.JPG)


---
## Source Information
#### *Reference*
Crouter, S. E., Horton, M., & Bassett Jr, D. R. (2012). Use of a 2-regression model for estimating energy expenditure in children. Medicine and Science in Sports and Exercise, 44(6), 1177. https://doi.org/10.1249/MSS.0b013e3182447825 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Crouter2012/Crouter2012.pdf)


#### *Corresponding author*
Scott Crouter, Scott.crouter@umb.edu
