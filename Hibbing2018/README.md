# Adapted Sojourn Models to Estimate Activity Intensity in Youth
### Hibbing 2018
---

## Description
Four “Sojuourn” models were developed for estimating energy expenditure in children using either activity counts (vector magnitude) or Euclidean Norm Minus One (ENMO) from an ActiGraph worn on the right hip or non-dominant wrist. Models, which are a combination of decision tree and artificial neural network, were developed in the laboratory and cross-validated using an independent, free-living sample.
 
The following four models are available. Percent accuracy is also provided for both the original laboratory-based development phase and the free-living cross-validation phase.
* Hip count (development: 69.7%, cross-validation: 56.7%)
* Hip raw (development: 71.6%, cross-validation: 49.3%)
* Wrist count (development: 68.5%, cross-validation: 50.7%)
* Wrist raw (development: 70.3%,cross-validation: 49.4%)


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |54 (21 males) healthy children, 7-13 y of age  |
| *Setting*  |Laboratory |
| *Activities*  |Not reported    |
| *Criterion* |Oxycon Mobile (VO2)    |
| *Accelerometer(s)* |ActiGraph GT3X+ on right hip and non-dominant wrist for model development, but ActiGraph GT3X-BT on right hip and both wrists for cross-validation|
| *Validation approach* |Independent sample of 27 children in free-living    |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1 and 4.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1and4.JPG)

---
## Instructions
This model can be implemented using the [Sojourn](https://cran.r-project.org/web/packages/Sojourn/Sojourn.pdf) R package.
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018/code.R) can be used to read in a csv data file, then use the Sojourn model to predict energy expenditure for each 1-s window. There are four example data sheets: [count](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018/example_data_counts.csv) and [raw](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018/example_data_raw.csv) versions in the format needed for the Sojourn model which requires you to have already added some variables and [count](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018/count_data.csv) and [raw](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018/raw_data.csv) versions in the format exported by ActiGraph which can be used with the [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018/code.R) to add all required variables. Further instructions are in the [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018/code.R). 
This code relies on R software which can be downloaded for free at https://www.r-project.org/

---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018/code.R)
* [Example formatted count data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018/example_data_counts.csv)
* [Example formatted raw data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018/example_data_raw.csv)
* [Unprocessed count data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018/count_data.csv)
* [Unprocessed raw data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018/raw_data.csv)


**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Hibbing, P. R., Ellingson, L. D., Dixon, P. M., & Welk, G. J. (2018). Adapted Sojourn Models to Estimate Activity Intensity in Youth: A Suite of Tools. Medicine and science in sports and exercise, 50(4), 846-854. https://www.doi.org/10.1249/MSS.0000000000001486  [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hibbing2018/Hibbing2018.pdf)

### *Original source for code*
https://cran.r-project.org/web/packages/Sojourn/Sojourn.pdf 

#### *Corresponding author*
Paul Hibbing, phibbing@vols.utk.edu
