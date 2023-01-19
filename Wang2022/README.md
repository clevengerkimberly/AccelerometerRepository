# Calibration of an Accelerometer Activity Index Among Older Women and Its Association With Cardiometabolic Risk Factors
### Wang 2022
---

## Description
Linear regression to predict METS and cut-points to classify activity intensity from accelerometer activity index (AAI) derived from a hip-worn ActiGraph monitor in older women. Sensitivity was 79-82%, specificity was 88-97%, and root mean square error was 0.482-0.503 METs.


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |199 older women, 60-91 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, overground walking, stationary   |
| *Criterion* |Oxycon Mobile (VO2)    |
| *Accelerometer(s)* |ActiGraph GT3X+ on right hip   |
| *Validation approach* |Five-fold cross-validation   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
Calculate AAI using the relative equation described by [Bai et al., 2016](https://doi.org/10.1371/journal.pone.0160644), then aggregate into AAI per 15-sec by taking the sum of AAI per second within the 15-sec epoch. The authors provided an overall model to predict METs from AAI, an age-specific model to predict METs from AAI, and cut-points to classify activity intensity based on AAI. AAI can also be calculated using the 'ActivityIndex' R package.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Wang2022/wang1.png)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Wang2022/wang2.png)

---
## Source Information
#### *Reference*
Wang, G., Wu, S., Evenson, K. R., Kang, I., LaMonte, M. J., Bellettiere, J., ... & Di, C. (2022). Calibration of an Accelerometer Activity Index Among Older Women and Its Association With Cardiometabolic Risk Factors. Journal for the Measurement of Physical Behaviour, 5(3), 145-155. https://doi.org/10.1123/jmpb.2021-0031 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Wang2022/wang.pdf)



#### *Corresponding author*
Chongzhi Di, cdi@fredhutch.org 
