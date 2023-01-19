# Accelerometry calibration in people with class II-III obesity: energy expenditure prediction and physical activity intensity identification
### Diniz-Sousa 2020
---

## Description
For both a hip- and back-worn ActiGraph monitor, three regression equations were created for predicting energy expenditure using either count-based or acceleration-based input features (six total models). Root Mean Square Error (RMSE) was 0.88-1.02 kcal/min. Cut-points to classify activity intensity from each metric were determined with a sensitivity of 0.89-1.00 and a specificity of 0.79-0.99.



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |43 (11 males) adults with class 2 or 3 obesity, 42.6±9.2 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Stationary, treadmill walking   |
| *Criterion* |Oxycon Pro (VO2)   |
| *Accelerometer(s)* |ActiGraph GT9X on right hip and lower back   |
| *Validation approach* |Leave-one-out cross-validation   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
ActiGraph counts were used to calculate the ‘activity counts’ (AC) metric as the resultant vector over a 5-s epoch (this is not further defined but is typically the square root of the sum of the squared counts in each axis, i.e., vector magnitude). Euclidean Norm Minus One (ENMO) and Mean Amplitude Deviation (MAD) were calculated for each 5-s epoch using the R package GGIR. Six regression equations were developed and are provided below- one for each of the three metrics at each of the two monitor locations (back, hip). Cut-points are also provided for determining activity intensity for each 5-s epoch from activity counts, MAD, or ENMO for each monitor wear location.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/DinizSousa2020/DInizSousa.JPG)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/DinizSousa2020/DinizSousaCP.JPG)


---
## Source Information
#### *Reference*
Diniz-Sousa, F., Veras, L., Ribeiro, J. C., Boppre, G., Devezas, V., Santos-Sousa, H., ... & Fonseca, H. (2020). Accelerometry calibration in people with class II-III obesity: energy expenditure prediction and physical activity intensity identification. Gait & Posture, 76, 104-109. https://doi.org/10.1016/j.gaitpost.2019.11.008 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/DinizSousa2020/DinizSousa.pdf)


#### *Corresponding author*
Florêncio Diniz-Sousa, joseflorenciosousa@gmail.com
