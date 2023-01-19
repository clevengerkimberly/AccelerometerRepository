# A refined 2-regression model for the ActiGraph accelerometer
### Crouter 2010
---

## Description
An updated 2-regression method is presented in which the coefficient of variation in counts/10-s from a hip-worn ActiGraph is used to determine which of two equations is used to predict METs. This approach was developed in adults performing structured activities over a range of intensities. Mean bias was 0.1 METs and average Root Mean Square Error (RMSE) across activities was 0.84 METs.  



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |48 (24 males) healthy adults, 21-69 years of age |
| *Setting*  |Laboratory, university, or home |
| *Activities*  |Activities of daily living, overground walking and running, sports, stairs, stationary   |
| *Criterion* |Cosmed K4b2 (VO2)   |
| *Accelerometer(s)* |ActiGraph 7164 on right hip   |
| *Validation approach* |Holdout of 15 participants   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase2.JPG)

---
## Instructions
The models can be implemented as described below or using the [TwoRegression](https://cran.r-project.org/web/packages/TwoRegression/vignettes/TwoRegression.html) R package.
The coefficient of variation (CV) for each 10-second epoch and all possible combinations of the surrounding five 10-sec epochs is calculated. So, the CV is calculated for the 10-sec epoch of interest and the 1) five 10-sec epochs before, 2) four 10-sec epochs before and one 10-sec epoch after, 3) three 10-sec epochs before and two 10-sec epochs after, 4) two 10-sec epochs before and three 10-sec epochs after, 5) one 10-sec epoch before and four 10-sec epochs after, and 6) five 10-sec epochs that followed. Then, the lowest CV for each 10-second epoch is used to determine the appropriate equation for predicting METs/min.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Crouter2010/Crouter2010.png)


---
## Source Information
#### *Reference*
Crouter, S. E., Kuffel, E., Haas, J. D., Frongillo, E. A., & Bassett Jr, D. R. (2010). A refined 2-regression model for the ActiGraph accelerometer. Medicine and Science in Sports and Exercise, 42(5), 1029. https://doi.org/10.1249/MSS.0b013e3181c37458 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Crouter2010/Crouter2010.pdf)


#### *Corresponding author*
Scott Crouter, Scott.crouter@umb.edu
