# A real-time and self-calibrating algorithm based on triaxial accelerometer signals for the detection of human posture and activity
### Curone 2010
---

## Description
Thresholds for signal magnitude area are determined to classify activity intensity. While a classification algorithm that combines these acceleration thresholds for activity intensity and posture recognition to predict activity type is also described, it is outside the scope of this repository. Regarding activity intensity, 94.9 (inactive), 99.9 (mild), and 98.2% (intense) of samples are correctly classified.



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |10 participants |
| *Setting*  |Not reported |
| *Activities*  |Falling, jumping, stairs, stationary, walking, and running   |
| *Criterion* |Activity type   |
| *Accelerometer(s)* |ADXL330 on upper part of trunk  |
| *Validation approach* |Cross-validation using 6 participants performing the same activities in a gym   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
A fifth-order digital mean filter is applied, then voltage is converted to acceleration. A self-calibrating procedure is defined within the paper. To retrieve inertial accelerations caused by movement (i.e., to remove gravitation acceleration), a third-order digital elliptical IIR filter with a cutoff frequency of 0.3 Hz, 0.1 dB passband ripple, and stopband at −100 dB is used. Signal magnitude area (SMA) per second is calculated using the formula below where ic is the inertial acceleration. SMA can then be used for activity intensity classification using thresholds of <0.2 g (inactive), 0.2-0.7 g (mild), or >0.7 g (intense).

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Curone2010/CuroneSMA.JPG)


---
## Source Information
#### *Reference*
Curone, D., Bertolotti, G. M., Cristiani, A., Secco, E. L., & Magenes, G. (2010). A real-time and self-calibrating algorithm based on triaxial accelerometer signals for the detection of human posture and activity. IEEE Transactions on Information Technology in Biomedicine, 14(4), 1098-1105. https://doi.org/10.1109/TITB.2010.205069 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Curone2010/Curone.pdf)


#### *Corresponding author*
Davide Curone, davide.curone@eucentre.it
