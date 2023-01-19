# Validity of the Apple iPhone®/iPod Touch® as an accelerometer-based physical activity monitor: a proof-of-concept study
### Nolan 2014
---

## Description
Acceleration measured by an iPod touch worn on the lower back is used to determine speed and grade of walking or running. Then, pre-existing equations are used to calculate energy expenditure for adults during treadmill walking and running. Bias was 0.35 METs during walking and -0.43 METs during running.
 


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |25 (11 males) healthy adults, 25.0±3.3 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Treadmill walking and running   |
| *Criterion* |Parvomedics TrueOne2400 (VO2)   |
| *Accelerometer(s)* |iPod Touch on lower back   |
| *Validation approach* |Leave-one-out cross-validation   |




---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
Three acceleration features were extracted using a 30-s epoch- standard deviation of the vertical acceleration (YSD), root mean square of the medio-lateral acceleration (XRMS), and the average of the normalized sum of the squared acceleration values multiplied by two to yield acceleration units per minute (AU). The equations for these features are provided below but it should be noted that in their study, data were collected at a sampling rate of 64 Hz, so the ‘1920’ and ‘960’ reflect this over a 30-s epoch (i.e., 64*30=1920) and would be different if using a different sampling frequency. First, a binary logistic regression is used to determine if the activity is walking or running (as log odds of running). Regression models are then used for predicting walking or running speed (km/hr). Finally, pre-existing equations can be used to predict METs from the predicted walking or running speed.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Nolan2014/NolanLogistic.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Nolan2014/Nolan.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Nolan2014/NolanMETs.JPG)

---
## Source Information
#### *Reference*
Nolan, M., Mitchell, J. R., & Doyle-Baker, P. K. (2014). Validity of the Apple iPhone®/iPod Touch® as an accelerometer-based physical activity monitor: a proof-of-concept study. Journal of Physical Activity and Health, 11(4), 759-769. https://doi.org/10.1123/jpah.2011-0336 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Nolan2014/Nolan.pdf)


#### *Corresponding author*
Meaghan Nolan
