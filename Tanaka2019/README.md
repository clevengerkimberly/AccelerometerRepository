# Prediction of physical activity intensity with accelerometry in young children
### Tanaka 2019
---

## Description
The ratio of unfiltered to filtered acceleration is used to determine non-locomotive vs. locomotive activities, then activity-specific equations are used to predict METs in young children wearing a waist-worn accelerometer. Coefficient of determination (R2) was 0.846 to 0.961 and standard error of the estimate was 0.350 to 0.428 METs.



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |37 (19 males) healthy children, 4-6 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, overground walking and running, sports/other games, stairs, stationary   |
| *Criterion* |Douglas bag (VO2)   |
| *Accelerometer(s)* |Omron Active Style Pro on waist   |
| *Validation approach* |Comparison to criterion   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
Synthetic acceleration was calculated (i.e., vector magnitude, square root of the sum of the squared acceleration values in each axis) before and after passing the acceleration data through a high-pass filter with a cut-off frequency of 0.7 Hz. Then, the ratio of unfiltered to filtered synthetic acceleration was used to classify activity type as non-ambulatory or ambulatory. If the ratio was over 1.16, the non-ambulatory equation was used to predict METs while the ambulatory equation was used if the ratio was less than 1.16. The article recommends the use of the ‘quadratic’ equation for non-ambulatory activities.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Tanaka2019/Tanaka.JPG)


---
## Source Information
#### *Reference*
Tanaka, C., Hikihara, Y., Ando, T., Oshima, Y., Usui, C., Ohgi, Y., ... & Tanaka, S. (2019). Prediction of physical activity intensity with accelerometry in young children. International Journal of Environmental Research and Public Health, 16(6), 931. https://doi.org/10.3390/ijerph16060931 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Tanaka2019/Tanaka.pdf)


#### *Corresponding author*
Chiaki Tanaka, c-tanaka@obirin.ac.jp
