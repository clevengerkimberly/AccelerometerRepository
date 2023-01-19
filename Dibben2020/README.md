# Physical activity assessment by accelerometry in people with heart failure
### Dibben 2020
---

## Description
Thresholds were created for two acceleration-based metrics (sum of vector magnitudes and mean amplitude deviation) for GENEActiv monitors worn at the hip and each wrist in patients with heart failure. Proportion of correct predictions were 96 (right wrist), 99 (left wrist), and 95% (waist) for sum of vector magnitudes and 69 (right wrist), 64 (left wrist), and 87% (waist) for mean amplitude deviation.


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |22 (17 males) participants with heart failure, 70.7±14.1 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, overground walking, stationary   |
| *Criterion* |Oxycon Mobile (VO2)   |
| *Accelerometer(s)* |GENEActiv on left hip and both wrists   |
| *Validation approach* |Leave-one-out cross-validation  |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
Thresholds are available for two acceleration-based metrics, sum of vector magnitudes (SVM) and mean amplitude deviation (MAD). For SVM, vector magnitude (square root of the sum of the squared acceleration in each axis) minus 1000 mg is calculated for each epoch. Mean amplitude deviation is the typical distance of points around the mean (this can also be done in R using a package like acc or GGIR). Threshold were derived using mixed effects regression and receiver operator characteristic for each wear location. The authors recommend use of the regression-derived SVM cut-points.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Dibben2020/DibbenSVM.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Dibben2020/DibbernMAD.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Dibben2020/DibbenSVMcut.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Dibben2020/DIbbenMADcut.JPG)


---
## Source Information
#### *Reference*
Dibben, G. O., Gandhi, M. M., Taylor, R. S., Dalal, H. M., Metcalf, B., Doherty, P., ... & Hillsdon, M. (2020). Physical activity assessment by accelerometry in people with heart failure. BMC Sports Science, Medicine and Rehabilitation, 12(1), 1-12. https://doi.org/10.1186/s13102-020-00196-7 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Dibben2020/Dibben.pdf)


#### *Corresponding author*
Grace Dibben, Gd318@exeter.ac.uk
