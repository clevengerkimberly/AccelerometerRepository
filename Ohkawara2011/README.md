# Real-time estimation of daily physical activity intensity by a triaxial accelerometer and a gravity-removal classification algorithm
### Ohkawara 2011
---

## Description
Magnitude of filtered acceleration and the ratio of unfiltered to filtered acceleration is used to determine activity type (sedentary, household, or locomotive), then activity-specific equations are used to predict METs in adults wearing a waist-worn accelerometer. Models were developed in adults participating in a variety of laboratory activities and cross-validated in a holdout sample. Correlation coefficients were 0.907 to 0.968 and standard errors of the estimate were 0.445 to 0.804 METs. 


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |44 (21 males) healthy adults, 42.6±13.7 years of age |
| *Setting*  |Laboratory and track |
| *Activities*  |Activities of daily living, overground walking and running, stairs, stationary   |
| *Criterion* |Douglas bag (VO2)   |
| *Accelerometer(s)* |LIS3LV02DQ MEMs accelerometer on left waist which was later released as the Omron Activity Style Pro HJA-350IT   |
| *Validation approach* |Holdout of 22 participants   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1 an 2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1and2.JPG)

---
## Instructions
Acceleration was calculated as the average of the absolute value of the accelerometer output of each axis in 10 s epochs. Synthetic acceleration was calculated (i.e., vector magnitude, square root of the sum of the squared acceleration values in each axis) before and after passing the acceleration data through a high-pass filter with a cut-off frequency of 0.7 Hz. Then, the filtered synthetic acceleration and the ratio of unfiltered to filtered synthetic acceleration were used to classify activity type as locomotive, household, or sedentary. Activity-specific equations are then used to predict METs. A number of models (linear and non-linear, sex-specific, general) were tested which are provided below but one model was designated as ‘final.’

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ohkawara2011/Ohkawara.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ohkawara2011/Ohkawarafinal.JPG)

---
## Source Information
#### *Reference*
Ohkawara, K., Oshima, Y., Hikihara, Y., Ishikawa-Takata, K., Tabata, I., & Tanaka, S. (2011). Real-time estimation of daily physical activity intensity by a triaxial accelerometer and a gravity-removal classification algorithm. British Journal of Nutrition, 105(11), 1681-1691. https://doi.org/10.1017/S0007114510005441 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ohkawara2011/Ohkawara2011.pdf)


#### *Corresponding author*
Kazunori Ohkawara, ohkawara@nih.go.jp
