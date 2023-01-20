# Cross-validation and comparison of energy expenditure prediction models using count-based and raw accelerometer data in youth
### Montoye 2019
---

## Description
Six models were developed for predicting energy expenditure in children using either a right hip or left wrist-worn ActiGraph accelerometer or a combination of both monitors. Models were developed for raw acceleration data and count data separately. Models were trained using children playing active video games and walking/running on a treadmill and cross-validated in an independent sample of 15 participants who played active video games.

The following models are available. Root Mean Square Error (RMSE) is also provided.
* Artificial neural network for hip-worn monitor using count data (1.2 METs)
* Artificial neural network for hip-worn monitor using raw data (1.9 METs)
* Artificial neural network for wrist-worn monitor using count data (~2.2 METs*)
* Artificial neural network for wrist-worn monitor using raw data (3.4 METs)
* Artificial neural network for hip- and wrist-worn monitors (combined) using count data (~1.8 METs*)
* Artificial neural network for hip- and wrist-worn monitors (combined) using raw data (1.7 METs)
*estimated from Figure 


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |27 (15 males) healthy children with a mean age 11.6±1.0 years |
| *Setting*  |Laboratory |
| *Activities*  |Active video games, treadmill walking and running   |
| *Criterion* |MetaMax 3b (VO2) in development or OxyCon Mobile (VO2) in cross-validation   |
| *Accelerometer(s)* |ActiGraph GT3X+ at the right hip and left wrist   |
| *Validation approach* |Cross-validation in an independent sample of 34 children   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in 0, 1, and 4.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase01and4.JPG)

---
## Instructions
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/code.R) can be used to read in a csv file with the necessary features and then use the chosen model to predict energy expenditure in METs for 15-sec windows. There is a separate file for each of the six models- the [hip count](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/hip_count.RData), [hip raw](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/hip_raw.RData), [wrist count](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/wrist_count.RData), [wrist raw](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/wrist_raw.RData), [combination count](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/combo_count.RData), and [combination raw](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/combo_raw.RData) models. There is an [example data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/sample_data.csv) sheet with the variables described in the [data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/datadictionary.csv) that need to be present in the csv file (this data sheet includes all wear locations and count/raw data). Further instructions are in the [R code.](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/code.R)
This code relies on R software which can be downloaded for free at https://www.r-project.org/



---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/code.R)
* [Example data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/sample_data.csv)
* [Data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/datadictionary.csv)
* [Hip count model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/hip_count.RData)
* [Hip raw model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/hip_raw.RData)
* [Wrist count model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/wrist_count.RData)
* [Wrist raw model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/wrist_raw.RData)
* [Combination count model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/combo_count.RData)
* [Combination raw model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/combo_raw.RData)


**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Montoye, A. H., Clevenger, K. A., Mackintosh, K. A., McNarry, M. A., & Pfeiffer, K. A. (2019). Cross-validation and comparison of energy expenditure prediction models using count-based and raw accelerometer data in youth. Journal for the Measurement of Physical Behaviour, 2(4), 237-246. https://doi.org/10.1123/jmpb.2018-0011 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2019/Montoye2019.pdf)


#### *Original source for code*
https://drive.google.com/file/d/1SlnXJBh6WUpxJJAjAovVbNw8hW54PhbZ/view



#### *Corresponding author*
Alexander H.K. Montoye, montoyeah@alma.edu
