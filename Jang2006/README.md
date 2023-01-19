# An wearable energy expenditure analysis system based on the 15-channel whole-body segment acceleration measurement
### Jang 2006
---

## Description
Combination of 7 accelerometers (15 total axes) is used to predict energy expenditure using a simple calculation converting acceleration into velocity and then, work. The sample involves three adults performing walking and running activities. Correlations between the criterion and prediction for specific individuals were 0.9571, 0.9818, and 0.9019.


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |3 male adults in their 20s |
| *Setting*  |Laboratory |
| *Activities*  |Treadmill walking and running   |
| *Criterion* |Cosmed K4b2 (VO2)   |
| *Accelerometer(s)* |Analog Devices ADXL210E on both arms, thighs, ankles and IDEEA on chest   |
| *Validation approach* |Comparison to criterion   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase0.JPG)

---
## Instructions
Acceleration is filtered using a low and high pass filter (more details not provided) and integrated to calculate velocity which is used to calculate kinetic energy and then total work (energy expenditure).

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Jang2006/Jang.JPG)

---
## Source Information
#### *Reference*
Jang, Y., Jung, M. W., Kang, J., & Kim, H. C. (2006, January). An wearable energy expenditure analysis system based on the 15-channel whole-body segment acceleration measurement. In 2005 IEEE Engineering in Medicine and Biology 27th Annual Conference (pp. 3834-3836). IEEE. https://doi.org/10.1109/IEMBS.2005.1615296 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Jang2006/Jang.pdf)



#### *Corresponding author*Yongwon Jang
