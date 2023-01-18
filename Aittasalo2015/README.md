#  Mean amplitude deviation calculated from raw acceleration data: a novel method for classifying the intensity of adolescents’ physical activity irrespective of accelerometer brand
### Aittasalo 2015
---

## Description
Cut-points for mean amplitude deviation (MAD) for Hookie and ActiGraph monitors worn at the hip developed from adolescents performing walking and running. Sensitivity (95.0-100%), specificity (98.6-100%), and misclassification (0.0-2.5%) are reported.


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |20 (10 males) healthy adolescents, 13-15 years of age|
| *Setting*  |Laboratory and track|
| *Activities*  |Overground/self-paced walking and running, stationary |
| *Criterion* |Activity type   |
| *Accelerometer(s)* |ActiGraph GT3X on left hip, Hookie AM13 on right hip  |
| *Validation approach* |Comparison to activity type |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1 and 2. ![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/2b662badbd7d769c3fad61048fd333ef562871ba/phase%20_images/Phase1and2.JPG)

---
## Instructions
Calculate MAD (mg) as the mean distance of data points about the mean where n is the number of samples in the epoch, ri is the ith resultant sample within the epoch and r(bar) is the mean resultant value of the epoch (see formula).![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/771155935d57b7a009069a7a4964c9fbfe12fa95/Aittasalo2015/aitt.png) 

This can also be done in R using a package like acc or GGIR. In this paper, they used an epoch of 5.1 s (Hookie) or 4.3 s (ActiGraph).
Each epoch can they be classified using the cut-points, which are provided separately for the ActiGraph and Hookie monitors.

|ActiGraph	| Hookie|
|---|---|
|Cut 1 (sedentary-to-light)	|26.9	|28.7|
|Cut 2 (moderate)	|332.0	|338.0|
|Cut 3 (vigorous)|	558.3	|603.8|


---
## Source Information
#### *Reference*
Aittasalo, M., Vähä-Ypyä, H., Vasankari, T., Husu, P., Jussila, A. M., & Sievänen, H. (2015). Mean amplitude deviation calculated from raw acceleration data: a novel method for classifying the intensity of adolescents’ physical activity irrespective of accelerometer brand. BMC Sports Science, Medicine and Rehabilitation, 7(1), 1-7. https://doi.org/10.1186/s13102-015-0010-0 Link to paper


#### *Corresponding author*
Minna Aittasalo, minna.aittasalo@uta.fi
