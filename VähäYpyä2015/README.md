# Validation of cut-points for evaluating the intensity of physical activity with accelerometry-based mean amplitude deviation (MAD)
### Vähä‐Ypyä 2015
---

## Description
Equations to predict oxygen consumption (mL/kg/min) and activity intensity cut-points for mean amplitude deviation (MAD) were determined from adults wearing a hip-worn monitor while walking and running. Sensitivity (96-100%) and specificity (95-96%) are reported for the cut-points. Correlation coefficients for the prediction models were 0.958 (overall), 0.943 (walking), and 0.975 (with ancillary demographic information).



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |29 (15 males) healthy adults, 35±11 years of age |
| *Setting*  |Indoor track |
| *Activities*  |Overground walking and running   |
| *Criterion* |Oxycon (VO2)   |
| *Accelerometer(s)* |Hookie AM13 on left or right hip and middle back   |
| *Validation approach* |Comparison to criterion   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase2.JPG)

---
## Instructions
Calculate MAD (mg) as the mean distance of data points about the mean where N is the number of samples in the epoch and j is the start of the epoch, ri is the ith resultant sample within the epoch and Rave is the mean resultant value of the epoch. This can also be done in R using a package like acc or GGIR. In this paper, they used an epoch of 6 s.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/V%C3%A4h%C3%A4Ypy%C3%A42015/VY.JPG)

Three equations are presented for predicting oxygen consumption (mL/kg/min), an overall equation with only MAD as an input, a walking-specific equation with MAD as the input, and an overall equation with additional demographic input variables of height (cm), weight (kg), waist circumference (cm), age (years), VO2peak (ml/kg/min), and the mean speed during the final two minutes of a graded exercise test to volitional exhaustion (vmax in m/s). Each epoch can also be classified as a specific activity intensity using the cut-points, which were 91 mg and 414 mg for 3 and 6 METs, respectively.

 
VO2 (mL/kg/min) = 10.015 * e<sup>0.0017*MAD</sup>

Walking VO2 (mL/kg/min) = 7.920 + 0.0331*MAD

VO2 (mL/kg/min) = 2.351 * e<sup>(0.00177*MAD-0.282*vmax+0.0183*VO2peak+0.0117*height-0.0142*weight+0.00693*waist circumference-0.00211*age)</sup>


---
## Source Information
#### *Reference*
Vähä-Ypyä, H., Vasankari, T., Husu, P., Mänttäri, A., Vuorimaa, T., Suni, J., & Sievänen, H. (2015). Validation of cut-points for evaluating the intensity of physical activity with accelerometry-based mean amplitude deviation (MAD). PloS One, 10(8), e0134813.
https://doi.org/10.1371/journal.pone.0134813 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/V%C3%A4h%C3%A4Ypy%C3%A42015/Vaha-Ypya2015.PDF)


#### *Corresponding author*
Henri Vähä‐Ypyä, henri.vaha-ypya@uta.fi
