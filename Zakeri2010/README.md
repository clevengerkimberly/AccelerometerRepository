# Multivariate adaptive regression splines models for the prediction of energy expenditure in children and adolescents
### Zakeri 2010
---

## Description
A multivariate adaptive regression splines (MARS) model is developed to predict 24-hour total energy expenditure (TEE) overall and awake, sleep, and activity energy expenditure separately in children and adolescents based on room calorimetry. The model was cross-validated in an independent sample. Root Mean Square Error (RMSE) was 168, 138, 40, and 122 kcal for 24-hour, awake, sleep, and activity periods, respectively.


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |109 (61 males) healthy children and adolescents, 5-18 years of age |
| *Setting*  |Calorimeter |
| *Activities*  |Active video games, activities of daily living, exercise, stationary, treadmill walking and running, unstructured   |
| *Criterion* |Room indirect calorimeter (VO2)   |
| *Accelerometer(s)* |Mini Mitter Actiheart on chest   |
| *Validation approach* |Independent sample cross-validation in 61 participants   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 2 and 4.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase24.JPG)

---
## Instructions
Four models to predict energy expenditure (kcal/min) are provided- one for overall 24-h energy expenditure, and models for awake, sleep, and activity energy expenditure separately. MARS models rely on optimizing combinations of basis functions which are defined below. As described in the footnote, the functions are used as decision points to determine which value will be used in the model. If the result of the function is greater than zero, it takes on the upper bound value; if the result of the function is less than zero, it takes on the lower bound value. Input variables include participant demographics, heart rate features, and acceleration features.


![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Zakeri2010/Zakeri2010_1.JPG)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Zakeri2010/Zakeri2010_2.JPG)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Zakeri2010/Zakeri2010_3.JPG)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Zakeri2010/Zakeri2010_4.JPG)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Zakeri2010/Zakeri2010BaseFunctions.JPG)


---
## Source Information
#### *Reference*
Zakeri, I. F., Adolph, A. L., Puyau, M. R., Vohra, F. A., & Butte, N. F. (2010). Multivariate adaptive regression splines models for the prediction of energy expenditure in children and adolescents. Journal of Applied Physiology, 108(1), 128-136. https://doi.org/10.1152/japplphysiol.00729.2009. [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Zakeri2010/Zakeri2010.pdf)
 
#### *Corresponding author*
Nancy Butte, nbutte@bcm.edu
