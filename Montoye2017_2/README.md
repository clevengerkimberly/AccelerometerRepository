# Evaluation of the activPAL accelerometer for physical activity and energy expenditure estimation in a semi-structured setting
### Montoye 2017_2
---

## Description
An artificial neural network with a Root Mean Square Error (RMSE) of 1.07 METs was developed for estimating energy expenditure in adults using an ActivPal accelerometer worn on the right thigh.  Adults performed simulated activities of daily living, locomotion, and other exercises and the model was cross-validated using leave-one-out cross validation.


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |41 (20 males) healthy adults, 18-35 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, cycling, walking and running, resistance exercise, stairs, stationary behaviors   |
| *Criterion* |Oxycon Mobile (VO2)   |
| *Accelerometer(s)* |ActivPal on the right thigh   |
| *Validation approach* |Leave-one-out cross-validation   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase2.JPG)

---
## Instructions
Instructions.

The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017_2/code.R) can be used to read in a csv file with the necessary features and then use the [artificial neural network](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017_2/APthighANN_FeatureSet2.RData) to predict energy expenditure in METs for 30-sec windows. There is an [example data sheet](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017_2/example_data.csv) with the variables described in the [data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017_2/datadictionary.xlsx) that need to be present in the csv file. Further instructions are in the [R code.](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017_2/code.R)
This code relies on R software which can be downloaded for free at https://www.r-project.org/



---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017_2/code.R)
* [Example data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017_2/example_data.csv)
* [Data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017_2/datadictionary.xlsx)
* [Artificial neural network model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017_2/APthighANN_FeatureSet2.RData)


**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Montoye, A. H., Pivarnik, J. M., Mudd, L. M., Biswas, S., & Pfeiffer, K. A. (2017). Evaluation of the activPAL accelerometer for physical activity and energy expenditure estimation in a semi-structured setting. Journal of Science and Medicine in Sport, 20(11), 1003-1007. http://dx.doi.org/10.1016/j.jsams.2017.04.011 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2017_2/Montoye2017_2.pdf)

#### *Original source for code*
https://drive.google.com/open?id=0B-BgdTzyd2OxQllsS19wLXBNVjQ


#### *Corresponding author*
Alexander H.K. Montoye, montoyeah@alma.edu
