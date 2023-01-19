# Calibration of the GENEA accelerometer for assessment of physical activity intensity in children
### Phillips 2013
---

## Description
Three sets of cut-points for classifying physical activity intensity from signal magnitude vector (gravity subtracted) were generated using receiver operating characteristics (ROC) analysis for adults wearing GENEA monitors on the right hip and each wrist. Sensitivity and specificity ranged from 82 to 96% and 83 to 98%, respectively.


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |44 children, 8-14 y of age |
| *Setting*  |Laboratory |
| *Activities*  |Active video games, stationary, treadmill walking/running   |
| *Criterion* |Cosmed K4b2 (VO2)   |
| *Accelerometer(s)* |GENEA on right hip, each wrist   |
| *Validation approach* |Comparison with criterion   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
Signal magnitude vector (gravity subtracted) per 1-sec was calculated as square root of the sum of the squared acceleration in each axis, minus gravity. Below are the developed cut-points. However, as noted in the R package [GGIR](https://cran.r-project.org/web/packages/GGIR/vignettes/CutPoints.html), these cut-points are sensitive to sampling rate, so they provide a scaled version which can be applied to any raw acceleration data.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Phillips2013/Phillips.JPG)

---
## Source Information
#### *Reference*
Phillips, L. R., Parfitt, G., & Rowlands, A. V. (2013). Calibration of the GENEA accelerometer for assessment of physical activity intensity in children. Journal of Science and Medicine in Sport, 16(2), 124-128. https://doi.org/10.1016/j.jsams.2012.05.013 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Phillips2013/Phillips.pdf)

#### *Corresponding author*
Lisa Phillips, Lrsp201@exeter.ac.uk
