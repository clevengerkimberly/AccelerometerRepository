# Estimating energy expenditure from raw accelerometry in three types of locomotion
### Brandes 2012
---

## Description
Activity-specific linear regression equations were developed for walking, cycling, and stair walking using acceleration measured by a Dynaport worn on the lower back. Root Mean Square Error (RMSE) was 2.39 (walk), 6.90 (cycle), and 5.80 (stairs) kJ/min for the equation including weight and acceleration, 2.16, 6.67, and 5.57 kJ/min for the equation including weight, acceleration, and their interaction, and 34.00, 97.22, and 84.36 J/min/kg for the equation with only acceleration as the input.


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |185 (91 males) healthy participants, 8-81 years of age |
| *Setting*  |Outside on campus |
| *Activities*  |Bicycling, overground/self-paced walking, stairs, stationary   |
| *Criterion* |MetaMax 3b (VO2)   |
| *Accelerometer(s)* |Dynaport on lower back   |
| *Validation approach* |Leave-one-out cross-validation   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/b0ae796591943b477c483d3c6087e7950cbdadf9/phase%20_images/Phase2.JPG)

---
## Instructions
Acceleration (g) was summarized by applying a fourth-order band-pass frequency filter to each acceleration axis (0.1–15 Hz), following which the vector magnitude was calculated (square root of the sum of the squared acceleration in each axis). Then, the following activity-specific regression equations are used to calculate activity energy expenditure. Weight is the participant's body weight (kg).
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/002873d6d51a16cc2d72f41ec616ba9798fb5c14/Brandes2012/brandes.JPG)

---
## Source Information
#### *Reference*
Brandes, M., VT, V. H., HannöVer, V., & Brage, S. (2012). Estimating energy expenditure from raw accelerometry in three types of locomotion. Medicine and Science in Sports and Exercise, 44(11), 2235-2242. https://doi.org/10.1249/MSS.0b013e318260402b [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/002873d6d51a16cc2d72f41ec616ba9798fb5c14/Brandes2012/Brandes2013.pdf)


#### *Corresponding author*
Mirko Brandes, mirko.brandes@uni-oldenburg.de
