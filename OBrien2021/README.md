# Development and Validation of an activPAL Accelerometry Count-Based Model of Physical Activity Intensity in Adults
### O'Brien 2021
---

## Description
Logarithmic equation to predict METs from thigh-worn activPAL data in adults. R2 was 0.68 with an absolute error of 18 ± 13% in the laboratory cross-validation. When compared to a pedometer during free-living, absolute error was 14.5 ± 16.0 and 7.1 ± 15.1 minutes per day for moderate and vigorous activity, respectively.



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |40 (16 males) adults, 25 ± 6 years of age |
| *Setting*  |Laboratory, free-living |
| *Activities*  |Treadmill walking, free-living   |
| *Criterion* |Indirect calorimetry for laboratory model development (VO2), PiezoRxD for free-living cross-validation portion   |
| *Accelerometer(s)* |activPAL3 on right thigh   |
| *Validation approach* |Holdout (n=20)   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1 and 3.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1and3.JPG)

---
## Instructions
activPAL counts per 15-sec are used as the input to the logarithmic equation 1.85*e<sup>(0.00005*counts)</sup> to predict METs. This corresponds to cut-points of 8810(moderate) and 22621 (vigorous) counts.


---
## Source Information
#### *Reference*
O'Brien, M. W., Wu, Y., Johns, J. A., Poitras, J., & Kimmerly, D. S. (2021). Development and validation of an activPAL accelerometry count-based model of physical activity intensity in adults. Medical Engineering & Physics, 95, 45-50. https://doi.org/10.1016/j.medengphy.2021.07.014 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/OBrien2021/obrien.pdf)


#### *Corresponding author*
Myles O'Brien, myles.obrien@dal.ca 
