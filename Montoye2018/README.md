# Cross-validation and out-of-sample testing of physical activity intensity predictions with a wrist-worn accelerometer
### Montoye 2018
---

## Description
Four models were developed for classifying physical activity intensity in adults using a GENEActiv accelerometer worn on the left wrist. Models were trained using adults performing simulated activities of daily living, locomotion, and other exercises and cross-validated in an independent sample who performed similar activities.

The following models are available. Classification accuracy is also provided.
* Artificial neural network (77.7%*)
* Random forest (78.5%*)
* Decision tree (75.7%*)
* Support vector machine (70.9%*)
*which specific models are provided is not indicated so these are approximate 


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |39 (19 males) healthy adults, 18-35 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, cycling, walking and running, resistance exercise, stairs, stationary behaviors   |
| *Criterion* |Direct observation of activity type and the MET compendium   |
| *Accelerometer(s)* |GENEActiv on the left wrist   |
| *Validation approach* |Cross-validation in an independent sample of 24 adults   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0, 1, and 4.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase01and4.JPG)

---
## Instructions
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/code.R) can be used to read in a csv file with the necessary features and then use the chosen model to predict energy expenditure in METs for 30-sec windows. There is a separate file for each of the four models- the [artificial neural network](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/bsu_neural_network.RData), [random forest](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/bsu_random_forest.RData), [decision tree](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/bsu_decision_tree.RData), and [support vector machine](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/bsu_support_vector_machine.RData). There is an [example data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/sample_data.csv) sheet with the variables described in the [data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/datadictionary.xlsx) that need to be present in the csv file. Further instructions are in the [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/code.R). 
This code relies on R software which can be downloaded for free at https://www.r-project.org/


---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/code.R)
* [Example data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/sample_data.csv)
* [Data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/datadictionary.xlsx)
* [Artificial neural network model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/bsu_neural_network.RData)
* [Random forest model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/bsu_random_forest.RData)
* [Decision tree model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/bsu_decision_tree.RData)
* [Support vector machine model](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/bsu_support_vector_machine.RData)


**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Montoye, A. H., Westgate, B. S., Fonley, M. R., & Pfeiffer, K. A. (2018). Cross-validation and out-of-sample testing of physical activity intensity predictions with a wrist-worn accelerometer. Journal of Applied Physiology, 124(5), 1284-1293. https://doi.org/10.1152/japplphysiol.00760.2017 [Link to article](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2018/Montoye2018.pdf)




#### *Original source for code*
https://drive.google.com/file/d/0B-BgdTzyd2OxMGlLR1ZhTj-I0R28/view


#### *Corresponding author*
Alexander H.K. Montoye, montoyeah@alma.edu
