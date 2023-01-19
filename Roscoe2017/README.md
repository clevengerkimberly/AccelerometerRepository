# Calibration of GENEActiv accelerometer wrist cut-points for the assessment of physical activity intensity of preschool aged children
### Roscoe 2017
---

## Description
Cut-points for classifying physical activity intensity from signal magnitude vector were generated using receiver operating characteristics (ROC) analysis for children wearing GENEActiv monitors on the non-dominant wrist. Sensitivity and specificity ranged from 10 to 100% and 10 to 90%, respectively.



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |21 children, 4-5 y of age |
| *Setting*  |Laboratory |
| *Activities*  |Stationary, treadmill walking/running  |
| *Criterion* |MetaMax 3B (VO2)   |
| *Accelerometer(s)* |GENEActiv on each wrist   |
| *Validation approach* |Comparison to criterion   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
Signal magnitude vector per 1-sec was calculated as square root of the sum of the squared acceleration in each axis, minus gravity. Below are the developed cut-points. However, as noted in the R package [GGIR](https://cran.r-project.org/web/packages/GGIR/vignettes/CutPoints.html), these cut-points are sensitive to sampling rate, so they provide a scaled version which can be applied to any raw acceleration data.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Roscoe2017/Roscoe.JPG)


---
## Source Information
#### *Reference*
Roscoe, C. M., James, R. S., & Duncan, M. J. (2017). Calibration of GENEActiv accelerometer wrist cut-points for the assessment of physical activity intensity of preschool aged children. European Journal of Pediatrics, 176(8), 1093-1098. https://doi.org/10.1007/s00431-017-2948-2 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Roscoe2017/Roscoe.pdf)


#### *Corresponding author*
Clare Roscoe, roscoec@uni.coventry.ac.uk 
