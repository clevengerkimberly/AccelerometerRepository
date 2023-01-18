# Laboratory-based and free-living algorithms for energy expenditure estimation in preschool children: A free-living evaluation
### Ahmadi 2020
---

## Description
Four models were developed for predicting energy expenditure in preschoolers using raw acceleration features from either a hip or non-dominant wrist-worn ActiGraph accelerometer. Models were trained using 20-min of free-play from 15 participants and cross-validated in a holdout sample of 10 participants. 
The following models are available. Root Mean Square Error (RMSE) is also provided.
* Random forest for the non-dominant wrist (0.96 METs)
* Support vector machine for the non-dominant wrist (0.99 METs)
* Artificial neural network for the right hip (0.96 METs)
* Random forest for the right hip (0.96 METs)

---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |25 (20 males) healthy children, 3-5 years of age|
| *Setting*  |Home, park, other community setting|
| *Activities*  | 20-min of free-play |
| *Criterion* | MetaMax 3b (VO2) |
| *Accelerometer(s)* | ActiGraph GT3X+ on hip or non-dominant wrist |
| *Accelerometer(s)* | Holdout of 10 participants|

---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in phase 2 and 3.![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/0cb5f3ab8b5857ac285220d865cad6286cba1164/phase%20_images/Phase23.JPG)

---
## Instructions
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/code.R) can be used to read in a 'csv' file with the necessary features and then use the chosen model to predict energy expenditure in kcals/min for each 10-sec window. There is a separate file for each of the four models- the [wrist random forest](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/wrist_rf.RData), [wrist support vector machine](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/wrist_svm.RData), [hip artificial neural network](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/hip_ann.RData), and [hip random forest](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/hip_rf.RData). For both the [hip](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/example_hip_data.csv) and [wrist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/example_wrist_data.csv) there is an example data sheet with the variables described in the [data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/datadictionary.xlsx) that need to be present in the csv file. Further instructions are in the [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/code.R). 
This code relies on R software which can be downloaded for free at https://www.r-project.org/

---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/code.R)
* [Example hip data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/example_hip_data.csv)
* [Example wrist data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/example_wrist_data.csv)
* [Data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/datadictionary.xlsx)
* [Wrist random forest](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/wrist_rf.RData)
* [Wrist support vector machine](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/wrist_svm.RData)
* [Hip artificial neural network](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/hip_ann.RData)
* [Hip random forest](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/hip_rf.RData)



**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Ahmadi MN, Chowdhury A, Pavey T,Trost SG (2020) Laboratory-based and free-living algorithms for energy expenditure estimation in preschool children: A free-living evaluation. PLoS One 15(5): e0233229. https://doi.org/10.1371/journal.pone.0233229 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/f8362c18a512e68ff0c6c1413585f7016cc3bcc2/Ahmadi2020/Ahmadi.pdf)

#### *Original source for code*
https://github.com/MA-QUT/Preschool_EE_Models_PLOS_One


#### *Corresponding author*
Stewart G. Trost, s.trost@qut.edu.au
