# Estimating energy expenditure with ActiGraph GT9X inertial measurement unit
### Hibbing 2018 (2)
---

## Description
Fifteen 2-regression models were created for five wear locations (hip, each wrist and ankle) using Euclidean Norm Minus One (ENMO), gyroscope vector magnitude, and direction changes to predict METs. Models were developed in healthy adults performing a variety of laboratory-based activities. Root Mean Square Error (RMSE) was 1.00 to 1.14 METs for hip, 1.18 to 1.24 METs for left wrist, 1.28 to 1.29 METs for right wrist, 1.01 to 1.16 METs for left ankle, and 1.01 to 1.18 METs for right ankle.
 


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |30 (20 males) healthy adults, 23.0±2.3 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, overground/self-paced walking and running, sports, stairs, stationary   |
| *Criterion* |Cosmed K4b2 (VO2)   |
| *Accelerometer(s)* |ActiGraph GT9X on right hip, both wrists, and both ankles   |
| *Validation approach* |Leave-one-out cross-validation   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0 and 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase01.JPG)

---
## Instructions
The models can be implemented as described below or using the [TwoRegression](https://cran.r-project.org/web/packages/TwoRegression/vignettes/TwoRegression.html) R package.
For each wear location, three separate 2-regression models were created using Euclidean Norm Minus One (ENMO), ENMO plus gyroscope vector magnitude (GVM), or ENMO plus GVM plus direction changes per 5-s as input features (all at a 1-s epoch).

ENMO (mg) was calculated for each 1-s epoch as the square root of the sum of the squared acceleration in each axis (i.e., vector magnitude) minus one. GVM (degrees/s) for each 1-s epoch was calculated as the square root of the sum of the squared values in each axis after the 100 Hz data were low-pass filtered at 35 Hz using a second-order Butterworth filter. For each 1-s epoch, direction changes per 5-s was determined using the ActiGraph’s magnetometer data. Magnetometer data from each axis were averaged into 1-s epochs, and then recoded to reflect cardinal direction for that second (using the conversion scheme for vertical orientation wherein the y-axis points vertically in the frontal plane in the anatomical position for a hip-worn monitor). Each second of cardinal direction was then compared with the two previous and two following seconds, and the number of direction changes during that 5-s window was used to specify the direction changes per 5-s for that 1-s epoch of interest.

For the 2-regression models, either an ENMO or GVM threshold is used to determine sedentary vs. non-sedentary behavior. Any epoch at or below the ‘sedentary threshold’ is assigned a MET value of 1.25 METs. Then, a threshold for coefficient of variation (CV) in either ENMO or GVM over 10-s determines whether the behavior is continuous walking/running vs. intermittent activity. CV over 10-s for each 1-s epoch is calculated using all possible combinations of the nine surrounding epochs (e.g., the epoch of interest plus the preceding 9 epochs, the epoch of interest plus the preceding 8 epochs and the 1 subsequent epoch, etc.). The minimum CV for each 1-s epoch is compared to the ‘CWR threshold,' which is used to determine which regression equation to use- the one for continuous walking and running or the one for intermittent activity.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018_2/Hibbing2.JPG)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018_2/Hibbing3.JPG)

---
## Source Information
#### *Reference*
Hibbing, P. R., Lamunion, S. R., Kaplan, A. S., & Crouter, S. E. (2018). Estimating energy expenditure with ActiGraph GT9X inertial measurement unit. Medicine and Science in Sports and Exercise, 50(5), 1093-1102. https://doi.org/10.1249/MSS.0000000000001532 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018_2/Hibbing2018.pdf)
 


#### *Corresponding author*
Paul Hibbing, phibbing@vols.utk.edu
