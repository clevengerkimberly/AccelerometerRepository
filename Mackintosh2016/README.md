# Investigating optimal accelerometer placement for energy expenditure prediction in children using a machine learning approach
### Mackintosh 2016
---

## Description
Thirteen models were developed for predicting energy expenditure in children using ActiGraph monitors worn at the chest, and each hip, ankle, wrist, and knees (and combinations of monitors). Models were developed for count data using children playing active video games and walking/running on a treadmill and cross-validated using leave-one-out cross-validation.
 
The following models are available. Root mean square error (RMSE) is also provided.
* Artificial neural network for all nine accelerometers (1.46 METs)
* Artificial neural network for chest (1.2-1.3 METs*)
* Artificial neural network for chest, right hip, right ankle (1.2-1.3 METs*)
* Artificial neural network for chest, right knee, right wrist, right hip (1.2 METs*)
* Artificial neural network for left ankle (1.2-1.3 METs*)
* Artificial neural network for left hip (1.2-1.3 METs*)
* Artificial neural network for left knee (1.3 METs*)
* Artificial neural network for left wrist (1.3 METs*)
* Artificial neural network for right ankle (1.2-1.3 METs*)
* Artificial neural network for right hip (1.2-1.3 METs*)
* Artificial neural network for right knee (1.3 METs*)
* Artificial neural network for right wrist (1.3 METs*)
* Artificial neural network for right wrist, right knee (1.2-1.3 METs*)
*estimated from Figure


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |27 (15 males) healthy children with a mean age 10.8±1.1 y |
| *Setting*  |Laboratory |
| *Activities*  |Active video games, treadmill walking and running   |
| *Criterion* |MetaMax 3b (VO2)   |
| *Accelerometer(s)* |ActiGraph GT3X+ at the chest, both hips, wrists, ankles, knees (not all needed for models)   |
| *Validation approach* |Leave-one-out cross-validation   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/code.R) can be used to read in a csv file with the necessary features and then use the chosen model to predict energy expenditure in METs for 15-sec windows. There is a separate file for each of the thirteen models. There is an [example data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/sample_data.csv) sheet with the variables described in the [data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/datadictionary.xlsx). Since not all monitors are used in each model, you will only need the variables for the appropriate monitor, not every variable present in the example data sheet. Further instructions are in the [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/code.R). 
This code relies on R software which can be downloaded for free at https://www.r-project.org/

---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/code.R)
* [Example data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/sample_data.csv)
* [Data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/datadictionary.xlsx)
* [Artificial neural network for all nine monitors](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/ALL.RData)
* [Artificial neural network for chest](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/C.RData)
* [Artificial neural network for chest, right hip, right ankle](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/C_RH_RA.RData)
* [Artificial neural network for chest, right knee, right wrist, right hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/C_RK_RW_RH.RData)
* [Artificial neural network for left ankle](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/LA.RData)
* [Artificial neural network for left hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/LH.RData)
* [Artificial neural network for left knee](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/LK.RData)
* [Artificial neural network for left wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/LW.RData)
* [Artificial neural network for right ankle](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/RA.RData)
* [Artificial neural network for right hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/RH.RData)
* [Artificial neural network for right knee](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/RK.RData)
* [Artificial neural network for right wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/RW.RData)
* [Artificial neural network for right wrist, right knee](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/RW_RK.RData)


**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Mackintosh, K. A., Montoye, A. H. K., Pfeiffer, K. A., & McNarry, M. A. (2016). Investigating optimal accelerometer placement for energy expenditure prediction in children using a machine learning approach. Physiological Measurement, 37(10), 1728. https://doi.org/10.1088/0967-3334/37/10/1728 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Mackintosh2016/Mackintosh2016.pdf)

#### *Original source for code*
https://sites.google.com/site/alexmontoye/machine-learning-model-code


#### *Corresponding author*
Kelly Mackintosh, k.mackintosh@swansea.ac.uk
