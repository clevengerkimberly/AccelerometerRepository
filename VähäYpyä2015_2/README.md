# A universal, accurate intensity‐based classification of different physical activities using raw data of accelerometer
### Vähä‐Ypyä 2015 (2)
---

## Description
Cut-points for mean amplitude deviation (MAD) that can be used for any accelerometer brand were determined from adults wearing three monitors at the hip participating in walking and running. Sensitivity (98.3-100%) and specificity (96.9-100%) are reported.


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |21 (4 males) healthy adults, 42±11 years of age |
| *Setting*  |Inside track|
| *Activities*  |Overground/self-paced walking and running, stationary   |
| *Criterion* |Activity type   |
| *Accelerometer(s)* |Hookie AM13, ActiGraph GT3X, and GulfCoast X6-1A on hip   |
| *Validation approach* |Comparison to criterion   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase2.JPG)

---
## Instructions
While the authors compare several features derived from the accelerometers, they conclude that MAD performed the best and thus, only present results from this metric. Calculate MAD (mg) as the mean distance of data points about the mean where n is the number of samples in the epoch, ri is the ith resultant sample within the epoch and r(bar) is the mean resultant value of the epoch. This can also be done in R using a package like acc or GGIR. In this paper, they used an epoch of 5.1 s (Hookie), 4.3 s (ActiGraph), or 6.4 s (GulfCoast).

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/V%C3%A4h%C3%A4Ypy%C3%A42015_2/aitt.png)

Each epoch can they be classified using the cut-points, which can be used with any accelerometer model. Activities were divided into five distinct intensity classes; sedentary behaviors (class 0), slow walking (class 1), normal walking (class 2), brisk walking (class 3), and jogging and running (class 4). Limit 1 separates the intensity class 0 from class 1, limit 2 the class 1 from class 2, limit 3 the class 3 from class 2 and limit 4 the class 4 from class 3.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/V%C3%A4h%C3%A4Ypy%C3%A42015_2/VH2015_2.JPG)

---
## Source Information
#### *Reference*
Vähä‐Ypyä, H., Vasankari, T., Husu, P., Suni, J., & Sievänen, H. (2015). A universal, accurate intensity‐based classification of different physical activities using raw data of accelerometer. Clinical Physiology and Functional Imaging, 35(1), 64-70. https://doi.org/10.1111/cpf.12127 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/V%C3%A4h%C3%A4Ypy%C3%A42015_2/vahaypya2015_2.pdf)


#### *Corresponding author*
Henri Vähä‐Ypyä, henri.vaha-ypya@uta.fi
