# Number of Days Required to Estimate Habitual Activity Using Wrist-Worn GENEActiv Accelerometer: A Cross-Sectional Study
### Dillon 2016
---

## Description
Cut-points for classifying physical activity intensity from signal magnitude vector generated for adults wearing GENEActiv monitors on each wrist. Sensitivity and specificity ranged from 67.9 to 97.1% and 67.9 to 97.0%, respectively.



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |56 adults, 18-65 y of age |
| *Setting*  |Not reported |
| *Activities*  |Activities of daily living, stationary, walking/running   |
| *Criterion* |Cosmed K4b2 (VO2)    |
| *Accelerometer(s)* |GENEActiv on each wrist   |
| *Validation approach* |Comparison to criterion   |
 

---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
SVM is calculated using the equation below as the square root of the sum of the squared acceleration in each axis, minus gravity, summed over the 15-sec epoch. However, as noted in the R package [GGIR](https://cran.r-project.org/web/packages/GGIR/vignettes/CutPoints.html), both sets of cut-points would be sensitive to sampling rate (30 and 100 Hz in the original study), so they provide a scaled version which can be applied to any raw acceleration data.


---
## Source Information
#### *Reference*
Dillon, C. B., Fitzgerald, A. P., Kearney, P. M., Perry, I. J., Rennie, K. L., Kozarski, R., & Phillips, C. M. (2016). Number of days required to estimate habitual activity using wrist-worn GENEActiv accelerometer: a cross-sectional study. PloS one, 11(5), e0109913. https://doi.org/10.1371%2Fjournal.pone.0109913 [Link to Paper]()



#### *Corresponding author*
Christina Dillon, c.dillon@ucc.ie 
