# Distributed lag and spline modeling for predicting energy expenditure from accelerometry in youth
### Choi 2010
---

## Description
Five prediction models for energy expenditure were developed using ActiGraph GT1M monitors worn on the hip, wrist, and ankle while adolescents performed a variety of activities in a room calorimeter. Root Mean Square Error (RMSE) was 143.0 (hip + wrist + ankle), 155.8 (hip + wrist), 163.6 (hip), 180.6 (wrist), and 151.2 (ankle) kcal/day. When used to classify physical activity intensity, classification accuracy was 63 to 75% (sedentary), 68 to 79% (light), and 34 to 80% (moderate-to-vigorous) depending on the prediction model used.



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |76 (29 males) healthy adolescents, 10-17 years of age |
| *Setting*  |Room calorimeter |
| *Activities*  |Activities of daily living, cycling, stationary, stepping, treadmill running, walking   |
| *Criterion* |Room calorimeter (VO2)   |
| *Accelerometer(s)* |ActiGraph GT1M on dominant hip, wrist, and/or ankle   |
| *Validation approach* |Leave-one-out cross-validation   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0 and 2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/ecb6ffdbb52576efcccac15665d24a84a4adb6b6/phase%20_images/Phase0and2.JPG)

---
## Instructions
Coefficients and equations for total energy expenditure (TEE), physical activity energy expenditure (PAEE), and METs are provided below for different combinations of monitors (hip + wrist + ankle, hip + wrist, hip, wrist, ankle). The following description of model notation is provided. ‘gender’ is coded as 0 for females and 1 for males. 
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/904d98a18728bc61fe48a822a2c601891ceb3f65/Choi2010/choidesc.JPG)

### TEE coefficients and equations
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/904d98a18728bc61fe48a822a2c601891ceb3f65/Choi2010/Choi.JPG)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/904d98a18728bc61fe48a822a2c601891ceb3f65/Choi2010/choiteeequation.JPG)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Choi2010/choiteeequation2.JPG)

### PAEE coefficients and equations
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Choi2010/choipaee.JPG)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/904d98a18728bc61fe48a822a2c601891ceb3f65/Choi2010/choipaeeequation1.JPG)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Choi2010/choipaeeequation2.JPG)

### METs coefficients and equations
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Choi2010/choimet.JPG)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Choi2010/choimetequations.JPG)



---
## Source Information
#### *Reference*
Choi, L., Chen, K. Y., Acra, S. A., & Buchowski, M. S. (2010). Distributed lag and spline modeling for predicting energy expenditure from accelerometry in youth. Journal of Applied Physiology, 108(2), 314-327. https://doi.org/ 10.1152/japplphysiol.00374.2009 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Choi2010/Choi%2C%202010.pdf)


#### *Corresponding author*
Leena Choi, leena.choi@vanderbilt.edu
