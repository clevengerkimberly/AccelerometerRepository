# Wrist-independent energy expenditure prediction models from raw accelerometer data
### Montoye 2016_3
---

## Description
Six artificial neural networks were developed for estimating energy expenditure in adults using a GENEActiv worn on either wrist and three different raw acceleration feature sets. Adults performed simulated activities of daily living, locomotion, and other exercises and the model was cross-validated using leave-one-out cross validation. This paper also developed algorithms for predicting on which wrist a monitor was worn but these are not included in the repository at this time.

The following models are available. Root Mean Square Error (RMSE) for individual models was not provided but overall, was 1.47 METs for feature set 1, 1.39 METs for feature set 2, and 1.25 METs for feature set 3.
* Artificial neural network for left wrist monitor using feature set 1
* Artificial neural network for left wrist monitor using feature set 2
* Artificial neural network for left wrist monitor using feature set 3
* Artificial neural network for right wrist monitor using feature set 1
* Artificial neural network for right wrist monitor using feature set 2
* Artificial neural network for right wrist monitor using feature set 3

---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |39 (19 males) healthy adults, 18-44 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, cycling, walking and running, resistance exercise, stairs, stationary behaviors   |
| *Criterion* |Oxycon Mobile (VO2)   |
| *Accelerometer(s)* |GENEActiv on either wrist   |
| *Validation approach* |Leave-one-out cross-validation   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0 and 2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase02.JPG)

---
## Instructions
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/code.R) can be used to read in a csv file with the necessary features and then use the neural network to predict energy expenditure for each 30-s window. There is a separate file for each of the six models. There is an example data sheet for each of the monitor wear locations ([left](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/sample_left_data.csv) and [right](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/sample_right_data.csv) wrist) with the variables described in the [data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/datadictionary.csv) that need to be present in the csv file. Further instructions are in the [R code.](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/code.R)
This code relies on R software which can be downloaded for free at https://www.r-project.org/

---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/code.R)
* [Example left wrist data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/sample_left_data.csv)
* [Example right wrist data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/sample_right_data.csv)
* [Data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/datadictionary.csv)
* [Left wrist model feature set 1](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/VM_L.RData)
* [Left wrist model feature set 2](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/ABS_L.RData)
* [Left wrist model feature set 3](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/raw_L.RData)
* [Right wrist model feature set 1](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/VM_R.RData)
* [Right wrist model feature set 2](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/ABS_R.RData)
* [Right wrist model feature set 3](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/raw_R.RData)

**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Montoye, A. H., Pivarnik, J. M., Mudd, L. M., Biswas, S., & Pfeiffer, K. A. (2016). Wrist-independent energy expenditure prediction models from raw accelerometer data. Physiological Measurement, 37(10), 1770. https://doi.org/10.1088/0967-3334/37/10/1770 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2016_3/Montoye_2016_3.pdf)


#### *Original source for code*
https://drive.google.com/open?id=0B-BgdTzyd2OxRDZTQWVxZW1qMzA



#### *Corresponding author*
Alexander H.K. Montoye, montoyeah@alma.edu
