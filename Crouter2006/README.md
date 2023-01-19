# A novel method for using accelerometer data to predict energy expenditure
### Crouter 2006
---

## Description
A 2-regression method is presented in which hip-worn ActiGraph counts/min and the coefficient of variation in counts/10-s over a minute are used to determine which of two equations is used to predict METs. This approach was developed in adults performing structured activities over a range of intensities. Mean bias was 0.1 METs. This method has been updated in [Crouter, 2010](https://github.com/clevengerkimberly/AccelerometerRepository/tree/main/Crouter2010).


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
The models can be implemented as described below or using the TwoRegression R package.
Counts/min and the coefficient of variation (CV) for each minute (calculated using counts/10-s) are used to determine the correct equation for predicting METs.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Crouter2006/Crouter2006.JPG)

---
## Source Information
#### *Reference*
Crouter, S. E., Clowers, K. G., & Bassett Jr, D. R. (2006). A novel method for using accelerometer data to predict energy expenditure. Journal of Applied Physiology, 100(4), 1324-1331. https://doi.org/10.1152/japplphysiol.00818.2005 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Crouter2006/Crouter2006.pdf)



#### *Corresponding author*
Scott Crouter, sec62@cornell.edu
