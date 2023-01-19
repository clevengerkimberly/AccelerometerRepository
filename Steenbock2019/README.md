# Accelerometry-based prediction of energy expenditure in preschoolers
### Steenbock 2019
---

## Description
Twenty-four models were developed for predicting energy expenditure in young children using accleration metrics from one of six monitor/wear location combinations (ActiGraph at each hip, GENEActiv at each wrist and the right hip, ActivPal on right thigh). Models were developed from children performing indoor and outdoor age-appropriate activities using leave-one-out cross-validation. Another 48 models are available for kJ/min and J/min/kg but are not included in this repository.

The following models are available. Root Mean Square Error (RMSE) is also provided.
* Artificial neural network for ActiGraph on right hip (1.66 METs)
* Linear model for ActiGraph on right hip (1.70 METs)
* Mixed linear model for ActiGraph on right hip (1.70 METs)
* Random forest for ActiGraph on right hip (1.56 METs)
* Artificial neural network for ActiGraph on left hip (1.63 METs)
* Linear model for ActiGraph on left hip (1.67 METs)
* Mixed linear model for ActiGraph on left hip (1.67 METs)
* Random forest for ActiGraph on left hip (1.52 METs)
* Artificial neural network for GENEActiv on right hip (1.66 METs)
* Linear model for GENEActiv on right hip (1.68 METs)
* Mixed linear model for GENEActiv on right hip (1.69 METs)
* Random forest for GENEActiv on right hip (1.53 METs)
* Artificial neural network for GENEActiv on right wrist (1.62 METs)
* Linear model for GENEActiv on right wrist (1.69 METs)
* Mixed linear model for GENEActiv on right wrist (1.69 METs)
* Random forest for GENEActiv on right wrist (1.48 METs)
* Artificial neural network for GENEActiv on left wrist (1.61 METs)
* Linear model for GENEActiv on left wrist (1.70 METs)
* Mixed linear model for GENEActiv on left wrist (1.69 METs)
* Random forest for GENEActiv on left wrist (1.47 METs)
* Artificial neural network for ActivPal on right thigh (1.81 METs)
* Linear model for ActivPal on right thigh (1.69 METs)
* Mixed linear model for ActivPal on right thigh (1.69 METs)
* Random forest for ActivPal on right thigh (1.56 METs)

---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |41 (22 males) healthy children, 3.0-6.3 years of age |
| *Setting*  |School |
| *Activities*  |Free-choice, games, overground/self-paced walking and running, stationary   |
| *Criterion* |MetaMax 3b (VO2)   |
| *Accelerometer(s)* |ActiGraph right hip, ActiGraph left hip, GENEActiv right hip, GENEActiv right wrist, GENEActiv left wrist, ActivPal right thigh (models are for one location/monitor so not all needed)   |
| *Validation approach* |Leave-one-out cross-validation   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0, 2 and 4.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase024.JPG)

---
## Instructions
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/code.R) can be used to read in a csv file with the necessary variables (as described in the [data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/datadictionary.xlsx) and seen in the [sample data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/sampledata.csv)). The chosen model can then be used to predict energy expenditure. The authors also provide some code for [extracting features](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/example_convert_data.R). Further instructions are in the [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/code.R). 
This code relies on R software which can be downloaded for free at https://www.r-project.org/


---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/code.R)
* [Example data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/sampledata.csv)
* [Data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/datadictionary.xlsx)
* [Data conversion code (not edited/used by repository)](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/example_convert_data.R)
* [ActiGraph artificial neural network right hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/nn_actigraph_right_METs_30s.Rds)
* [ActiGraph Linear model right hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/lm_actigraph_right_METs_30s.Rds)
* [ActiGraph Mixed linear model right hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/,lm_actigraph_right_METs_30s.Rds)
* [ActiGraph Random forest for ActiGraph right hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/rf_actigraph_right_METs_30s.Rds)
* [ActiGraph Artificial neural network for ActiGraph left hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/nn_actigraph_left_METs_30s.Rds)
* [ActiGraph Linear model for ActiGraph left hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/lm_actigraph_right_METs_30s.Rds)
* [ActiGraph Mixed linear model for ActiGraph left hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/,lm_actigraph_right_METs_30s.Rds)
* [ActiGraph Random forest for ActiGraph left hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/rf_actigraph_right_METs_30s.Rds)
* [GENEActiv Artificial neural network for GENEActiv right hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/nn_geneactiv_hip_right_METs_30s.Rds)
* [GENEActiv Linear model for GENEActiv right hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/lm_geneactiv_hip_right_METs_30s.Rds)
* [GENEActiv Mixed linear model for GENEActiv right hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/mlm_geneactiv_hip_right_METs_30s.Rds)
* [GENEActiv Random forest for GENEActiv right hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/rf_geneactiv_hip_right_METs_30s.Rds)
* [GENEActiv Artificial neural network for GENEActiv right wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/nn_geneactiv_wrist_right_METs_30s.Rds)
* [GENEActiv Linear model for GENEActiv right wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/lm_geneactiv_wrist_right_METs_30s.Rds)
* [GENEActiv Mixed linear model for GENEActiv right wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/mlm_geneactiv_wrist_right_METs_30s.Rds)
* [GENEActiv Random forest for GENEActiv right wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/rf_geneactiv_wrist_right_METs_30s.Rds)
* [GENEActiv Artificial neural network for GENEActiv left wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/nn_geneactiv_wrist_left_METs_30s.Rds)
* [GENEActiv Linear model for GENEActiv left wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/lm_geneactiv_wrist_left_METs_30s.Rds)
* [GENEActiv Mixed linear model for GENEActiv left wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/mlm_geneactiv_wrist_left_METs_30s.Rds)
* [GENEActiv Random forest for GENEActiv left wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/rf_geneactiv_wrist_left_METs_30s.Rds)
* [ActivPal Artificial neural network for ActivPal right thigh](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/nn_activpal_METs_30s.Rds)
* [ActivPal Linear model for ActivPal right thigh](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/lm_activpal_METs_30s.Rds)
* [ActivPal Mixed linear model for ActivPal right thigh](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/mlm_activpal_METs_30s.Rds)
* [ActivPal Random forest for ActivPal right thigh](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/rf_activpal_METs_30s.Rds)

**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Reference:
Steenbock, B., Wright, M. N., Wirsik, N., & Brandes, M. (2019). Accelerometry-based prediction of energy expenditure in preschoolers. Journal for the Measurement of Physical Behaviour, 2(2), 94-102. https://doi.org/10.1123/jmpb.2018-0032 [Link to article](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Steenbock2019/Steenbock.pdf)


#### *Original source for code*
https://github.com/bips-hb/EE_prediction



#### *Corresponding author*
Berit Steenbock, steenbock@leibniz-bips.de
