# Energy expenditure prediction using raw accelerometer data in simulated free living
### Montoye 2015
---

## Description
Sixteen artificial neural networks were developed for estimating energy expenditure from a thigh- or hip-worn ActiGraph or a GENEActiv worn on either wrist and four different sets of acceleration-based input features. Adults performed simulated activities of daily living, locomotion, and other exercises and the model was cross-validated using leave-one-out cross validation.

The following models are available. Root Mean Square Error (RMSE) is also provided.
* Artificial neural network for hip ActiGraph with first feature set (1.13 METs)
* Artificial neural network for hip ActiGraph with second feature set (1.32 METs)
* Artificial neural network for hip ActiGraph with third feature set (1.17 METs)
* Artificial neural network for hip ActiGraph with fourth feature set (1.20 METs)
* Artificial neural network for thigh ActiGraph with first feature set (1.04 METs)
* Artificial neural network for thigh ActiGraph with second feature set (1.08 METs)
* Artificial neural network for thigh ActiGraph with third feature set (1.04 METs)
* Artificial neural network for thigh ActiGraph with fourth feature set (1.04 METs)
* Artificial neural network for GENEActiv on right wrist with first feature set (1.18 METs)
* Artificial neural network for GENEActiv on right wrist with second feature set (1.25 METs)
* Artificial neural network for GENEActiv on right wrist with third feature set (1.27 METs)
* Artificial neural network for GENEActiv on right wrist with fourth feature set (1.21 METs)
* Artificial neural network for GENEActiv on left wrist with first feature set (1.18 METs)
* Artificial neural network for GENEActiv on left wrist with second feature set (1.26 METs)
* Artificial neural network for GENEActiv on left wrist with third feature set (1.26 METs)
* Artificial neural network for GENEActiv on left wrist with fourth feature set (1.15 METs)


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |39 (19 males) healthy adults 18-44 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, cycling, overground/self-paced walking and running, resistance exercise, stairs, stationary behaviors   |
| *Criterion* |Oxycon Mobile (VO2)   |
| *Accelerometer(s)* |ActiGraph GT3X+ on right thigh and hip, GENEActiv on each wrist   |
| *Validation approach* |Leave-one-out cross-validation   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0 and 2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase02.JPG)

---
## Instructions
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/code.R) can be used to read in a csv file with the necessary features and then use the chosen model to predict energy expenditure in METs for each epoch. There is a separate file for each of the sixteen models. There is an [example data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/sample_data.csv) sheet with the variables described in the [data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/datadictionary.csv). Since not all monitors and/or features are used in each model, you will only need the variables for the appropriate monitor and/or features, not every variable present in the example data sheet. Further instructions are in the [R code.](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/code.R)

This code relies on R software which can be downloaded for free at https://www.r-project.org/

---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/code.R)
* [Example data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/sample_data.csv)
* [Data dictionary](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/datadictionary.csv)
* [ActiGraph hip feature set 1](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/AGhipANN_FeatureSet1.RData)
* [ActiGraph hip feature set 2](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/AGhipANN_FeatureSet2.RData)
* [ActiGraph hip feature set 3](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/AGhipANN_FeatureSet3.RData)
* [ActiGraph hip feature set 4](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/AGhipANN_FeatureSet4.RData)
* [ActiGraph thigh feature set 1](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/AGthighANN_FeatureSet1.RData)
* [ActiGraph thigh feature set 2](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/AGthighANN_FeatureSet2.RData)
* [ActiGraph thigh feature set 3](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/AGthighANN_FeatureSet3.RData)
* [ActiGraph thigh feature set 4](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/AGthighANN_FeatureSet4.RData)
* [GENEActiv right wrist feature set 1](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/GErightANN_FeatureSet1.RData)
* [GENEActiv right wrist feature set 2](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/GErightANN_FeatureSet2.RData)
* [GENEActiv right wrist feature set 3](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/GErightANN_FeatureSet3.RData)
* [GENEActiv right wrist feature set 4](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/GErightANN_FeatureSet4.RData)
* [GENEActiv left wrist feature set 1](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/GEleftANN_FeatureSet1.RData)
* [GENEActiv left wrist feature set 2](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/GEleftANN_FeatureSet2.RData)
* [GENEActiv left wrist feature set 3](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/GEleftANN_FeatureSet3.RData)
* [GENEActiv left wrist feature set 4](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/GEleftANN_FeatureSet4.RData)


**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Montoye, A. H., Mudd, L. M., Biswas, S., & Pfeiffer, K. A. (2015). Energy expenditure prediction using raw accelerometer data in simulated free living. Medicine and Science in Sports and Exercise, 47(8), 1735-1746. https://doi.org/10.1249/mss.0000000000000597 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Montoye2015/Montoye2015.pdf)



#### *Original source for code*
https://sites.google.com/site/alexmontoye/machine-learning-model-code



#### *Corresponding author*
Alexander H.K. Montoye, montoyeah@alma.edu
