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


---
## Phase Designation
[What's this?]()
This model is in phase 2 and 3.

---
## Instructions
The [R code]() can be used to read in a 'csv' file with the necessary features and then use the chosen model to predict energy expenditure in kcals/min for each 10-sec window. There is a separate file for each of the four models- the [wrist random forest](), [wrist support vector machine](), [hip artificial neural network](), and [hip random forest](). For both the [hip]() and [wrist]() there is an example data sheet with the variables described in the [data dictionary]() that need to be present in the csv file. Further instructions are in the [R code](). More information about R is found [here]().
This code relies on R software which can be downloaded for free at https://www.r-project.org/

---
## Attached Files
Download all files as a [.zip]() or download individual files below.

* [Code]()
* [Example hip data]()
* [Example wrist data]()
* [Data dictionary]()
* [Wrist random forest]()
* [Wrist support vector machine]()
* [Hip artificial neural network]()
* [Hip random forest]()



**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Ahmadi MN, Chowdhury A, Pavey T,Trost SG (2020) Laboratory-based and free-living algorithms for energy expenditure estimation in preschool children: A free-living evaluation. PLoS One 15(5): e0233229. https://doi.org/10.1371/journal.pone.0233229 [Link to paper]()

#### *Original source for code*
https://github.com/MA-QUT/Preschool_EE_Models_PLOS_One


#### *Corresponding author*
Stewart G. Trost, s.trost@qut.edu.au
