# Tri-axial high-resolution acceleration for oxygen uptake estimation: validation of a multi-sensor device and a novel analysis method
### Weippert 2013
---

## Description
Four models to predict oxygen consumption (mL/kg/min) are developed in adults wearing a chest-worn accelerometer while participating in a variety of activities in the laboratory. Bias was 1.5 to 1.9 mL/kg/min across models.



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |23 (15 males) healthy adults, 21-54 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, stationary, treadmill walking and running   |
| *Criterion* |Oxycon Pro (VO2)   |
| *Accelerometer(s)* | Equivital on chest  |
| *Validation approach* |Holdout of 11 participants   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0 and 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase01.JPG)

---
## Instructions
Four models to predict oxygen consumption (mL/kg/min) are available using one of three accelerometer input features in 30-s epochs. Formulas for each feature are also provided below. Overall dynamic body acceleration (ODBA) is calculated by subtracting the mean accelerometer output of each axis from the corresponding raw accelerometer output, integrating the absolute (rectified) values of the x, y, and z axes over a 30-s time window, and then summing the integrals. Total acceleration variability (TAV) is calculated as the sum of the instantaneous variability (AV) over a defined interval. Vector-based dynamic body acceleration (VeDBA) can be calculated as the instantaneous vector magnitude (square root of the sum of the squared acceleration in each axis) minus the average vector magnitude acceleration over 30 s. Model A, B, and C are single linear regression models while model B2 is a 2-regression (or branched) model wherein the TAV value is used to determine which equation should be used for prediction of oxygen consumption.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Weippert2013/Weippert.JPG)

### ODBA
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Weippert2013/WeippertODBA.JPG)

### TAV
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Weippert2013/WeipperTAV1.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Weippert2013/WeippertTAV2.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Weippert2013/WeipperTAV3.JPG)


### VeDBA
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Weippert2013/WeippertveDBA.JPG)



---
## Source Information
#### *Reference*
Weippert, M., Stielow, J., Kumar, M., Kreuzfeld, S., Rieger, A., & Stoll, R. (2013). Tri-axial high-resolution acceleration for oxygen uptake estimation: validation of a multi-sensor device and a novel analysis method. Applied Physiology, Nutrition, and Metabolism, 38(3), 345-351. https://dx.doi.org/10.1139/apnm-2012-0228 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Weippert2013/Weippert.pdf)



#### *Corresponding author*
Matthias Weippert, matthias.weippert@uni-rostock.de
