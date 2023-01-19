# A new device to estimate VO2 during incline walking by accelerometry and barometry
### Yamazaki 2009
---

## Description
A model to predict oxygen consumption (mL/kg/min) during walking was developed in adults in the laboratory and cross-validated in a sub-sample of participants on an outdoor trail. The model uses acceleration and vertical upward and downward speed, as determined by changes in barometric pressure, as inputs. Correlation between predicted and actual oxygen consumption was 0.879 with a mean difference of -0.2 mL/kg/min.


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |42 (21 males) healthy adults, 63±7 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Stationary, treadmill walking   |
| *Criterion* |MetaMax 3b (VO2)   |
| *Accelerometer(s)* |ADXL210JE on right or left waist   |
| *Validation approach* |Cross-validation using additional visit by sub-sample of participants who walked on an outdoor trail   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
A model to predict oxygen consumption (mL/kg/min) from vector magnitude (VM in g), vertical upward speed (Hu in m/min), and the vertical downward speed (Hd in m/min) is provided. VM is an integration of total acceleration (square root of the sum of the squared acceleration in each axis) for the period minus VM during rest. Hu and Hd were calculated either using an equation incorporating treadmill speed (m/min) and incline (%) (left) in the laboratory or using changes in device-measured barometric pressure in field-based observations (right).

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Yamazaki2009/Yamazaki.JPG)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Yamazaki2009/YamazakiH.JPG)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Yamazaki2009/YamazakiHTM.JPG)

---
## Source Information
#### *Reference*
Yamazaki, T., Gen-No, H., Kamijo, Y. I., Okazaki, K., Masuki, S., & Nose, H. (2009). A new device to estimate VO2 during incline walking by accelerometry and barometry. Medicine and Science in Sports and Exercise, 41(12), 2213-2219. https://doi.org/10.1249/MSS.0b013e3181a9c452 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Yamazaki2009/Yamazaki.pdf)


#### *Corresponding author*
Hiroshi Nose, nosehir@shinshu-u.ac.jp
