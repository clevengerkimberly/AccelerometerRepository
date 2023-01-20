# Validation of accelerometer-based energy expenditure prediction models in structured and simulated free-living settings
### Montoye 2017
---

## Description
Four acceleration-based artificial neural networks were developed for estimating energy expenditure in adults using an ActiGraph worn at one of four wear locations- the right hip, right ankle, or either wrist. Adults performed simulated activities of daily living, locomotion, and other exercises and the model was cross-validated using leave-one-out cross validation. This paper also developed identical algorithms using only structured or only simulated free-living data for training but they are not currently included in the repository.

The following models are available. Root Mean Square Error (RMSE) is also provided.
* Artificial neural network for left wrist monitor (1.07 METs)
* Artificial neural network for right wrist monitor (1.09 METs)
* Artificial neural network for right ankle monitor (0.89 METs)
* Artificial neural network for right hip monitor (1.02 METs) 


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  | |
| *Setting*  | |
| *Activities*  |   |
| *Criterion* |   |
| *Accelerometer(s)* |   |
| *Validation approach* |   |

Development/Validation
Sample: 24 (12 males) healthy adults, 18-80 years of age

Setting: Laboratory

Activities: Activities of daily living, cycling, walking and running, resistance exercise, stairs, stationary behaviors

Criterion: Oxycon Mobile (VO2)

Accelerometer(s): ActiGraph GT9X on right hip, ankle, and both wrists

Validation approach: Leave-one-out cross-validation
 

 

---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0 and 2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase02.JPG)

---
## Instructions
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/code.R) can be used to read in a csv file with the necessary features and then use the neural network to predict energy expenditure for each 30-s window. There is a separate file for each of the four models. There is an example data sheet for each of the monitor wear locations ([ankle](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/sample_ankle_data.csv), [hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/sample_hip_data.csv), [left](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/sample_left_data.csv) and [right](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/sample_right_data.csv) wrist) with the variables described in the [data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/datadictionary.csv) that need to be present in the csv file. Further instructions are in the [R code.](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/code.R)
This code relies on R software which can be downloaded for free at https://www.r-project.org/


---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/code.R)
* [Example left wrist data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/sample_left_data.csv)
* [Example right wrist data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/sample_right_data.csv)
* [Example hip data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/sample_hip_data.csv)
* [Example ankle data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/sample_ankle_data.csv)
* [Data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/datadictionary.csv)
* [Left wrist model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/V1V2_LW.RData)
* [Right wrist model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/V1V2_RW.RData)
* [Hip model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/V1V2_Hip.RData)
* [Ankle model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/V1V2_Ank.RData)


**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Montoye, A. H., Conger, S. A., Connolly, C. P., Imboden, M. T., Nelson, M. B., Bock, J. M., & Kaminsky, L. A. (2017). Validation of accelerometer-based energy expenditure prediction models in structured and simulated free-living settings. Measurement in Physical Education and Exercise Science, 21(4), 223-234. https://doi.org/10.1080/1091367X.2017.1337638 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017/Montoye2017.pdf)

#### *Original source for code*
https://drive.google.com/file/d/0B-BgdTzyd2OxUDhwRWR6OTJwZmM/edit


#### *Corresponding author*
Alexander H.K. Montoye, montoyeah@alma.edu
