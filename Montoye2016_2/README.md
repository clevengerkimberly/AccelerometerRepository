# Validation and comparison of accelerometers worn on the hip, thigh, and wrists for measuring physical activity and sedentary behavior
### Montoye 2016_2
---

## Description
Four acceleration-based artificial neural networks were developed for estimating energy expenditure in adults using one of four accelerometers- an ActiGraph worn on the right hip or thigh or a GENEActiv worn on either wrist. Adults performed simulated activities of daily living, locomotion, and other exercises and the model was cross-validated using leave-one-out cross validation.

 

The following models are available. Weighted kappa coefficients are also provided.
* Artificial neural network for hip-worn monitor (0.90)
* Artificial neural network for thigh-worn monitor (0.99)
* Artificial neural network for left wrist-worn monitor (0.95)
* Artificial neural network for right wrist-worn monitor (0.78)


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |40 (19 males) healthy adults, 18-44 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, cycling, walking and running, resistance exercise, stairs, stationary behaviors   |
| *Criterion* |Direct observation of activity type and compendium   |
| *Accelerometer(s)* |ActiGraph on right hip or thigh, GENEActiv on either wrist   |
| *Validation approach* |Leave-one-out cross-validation   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0 and 2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase02.JPG)

---
## Instructions
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/code.R) can be used to read in a csv file with the necessary features and then use the neural network to predict physical activity intensity. There is a separate file for each of the four models- [hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/hip_PAintensity.RData), [thigh](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/thigh_PAintensity.RData), [left wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/left_PAintensity.RData), and [right wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/right_PAintensity.RData). There is an example data sheet for each of the four monitor wear locations ([hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/sample_hip_data.csv), [thigh](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/sample_thigh_data.csv), [left wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/sample_left_data.csv), [right wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/sample_right_data.csv)) with the variables described in the [data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/datadictionary.csv) that need to be present in the csv file. Further instructions are in the [R code.](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/code.R)

This code relies on R software which can be downloaded for free at https://www.r-project.org/

---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/code.R)
* [Example data]()
* [Data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/datadictionary.csv)
* [Example hip data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/sample_hip_data.csv)
* [Example thigh data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/sample_thigh_data.csv)
* [Example left wrist data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/sample_left_data.csv)
* [Example right wrist data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/sample_right_data.csv)
* [Hip model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/hip_PAintensity.RData)
* [Thigh model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/thigh_PAintensity.RData)
* [Left wrist model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/left_PAintensity.RData)
* [Right wrist model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/right_PAintensity.RData)

**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Montoye, A. H., Pivarnik, J. M., Mudd, L. M., Biswas, S., & Pfeiffer, K. A. (2016). Validation and comparison of accelerometers worn on the hip, thigh, and wrists for measuring physical activity and sedentary behavior. AIMS Public Health, 3(2), 298. https://doi.org/10.3934/publichealth.2016.2.298 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_2/Montoye2016_2.pdf)



#### *Original source for code*
https://drive.google.com/open?id=0B-BgdTzyd2OxazA1UE1zcTFEY1k


#### *Corresponding author*
Alexander H.K. Montoye, montoyeah@alma.edu
