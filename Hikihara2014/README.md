# Prediction models discriminating between nonlocomotive and locomotive activities in children using a triaxial accelerometer with a gravity-removal physical activity classification algorithm
### Hikihara 2014
---

## Description
A 2-regression model was developed in children wearing a waist-worn Omron accelerometer. The threshold of unfiltered to filtered synthetic acceleration is used to determine whether a ‘locomotive’ or ‘non-locomotive’ equation is used to predict METs. Root Mean Square Error (RMSE) was 0.508 to 0.694 METs.



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |68 (42 males) healthy children, 6-12 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, video games, overground walking and running, stairs, stationary   |
| *Criterion* |Douglas bag (VO2)   |
| *Accelerometer(s)* |Omron worn on the waist   |
| *Validation approach* |Holdout of 20 participants   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
Synthetic acceleration was calculated (i.e., vector magnitude, square root of the sum of the squared acceleration values in each axis) before and after passing the acceleration data through a high-pass filter with a cut-off frequency of 0.7 Hz (second-order Butterworth). A threshold for the ratio of unfiltered synthetic acceleration to filtered synthetic acceleration is used to determine which regression equation to use to predict METs. If this ratio is less than 1.12, then the locomotive equation is used. Acceleration data were analyzed using a 10-s epoch. Equations are available with and without the inclusion of weight, age, and sex.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hikihara2014/Hikihara3.JPG)


---
## Source Information
#### *Reference*
Hikihara, Y., Tanaka, C., Oshima, Y., Ohkawara, K., Ishikawa-Takata, K., & Tanaka, S. (2014). Prediction models discriminating between nonlocomotive and locomotive activities in children using a triaxial accelerometer with a gravity-removal physical activity classification algorithm. PloS One, 9(4), e94940. https://doi.org/10.1371/journal.pone.0094940 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hikihara2014/Hikihara2014.PDF)



#### *Corresponding author*
Yuki Hikihara, hikihara.yuki@it-chiba.ac.jp
