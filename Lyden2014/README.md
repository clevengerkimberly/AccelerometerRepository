# A method to estimate free-living active and sedentary behavior from an accelerometer
### Lyden 2014
---

## Description
Two “Sojuourn” models were developed for estimating energy expenditure in adults using either uniaxial or triaxial counts from an ActiGraph worn on the right hip. Models, which are a combination of decision tree and artificial neural network, were developed using free-living observation and cross-validated in a hold-out sample.
 
The following two models are available. Root Mean Square Error (RMSE) is also provided.
* Vertical axis counts/s model (1 MET-hr)
* Counts/s from three axes model (1.0 MET-hr)


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |13 (5 males) healthy adults, 24.8±5.9 years of age |
| *Setting*  |Free-living |
| *Activities*  |Free-living|
| *Criterion* |Direct observation and compendium   |
| *Accelerometer(s)* |ActiGraph GT3X on right hip   |
| *Validation approach* |Holdout of 7 participants   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 3.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase3.JPG)

---
## Instructions
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Lyden2014/code.R) from the original paper is provided below. However, it was recently discovered that this code contains an error (described [here](https://github.com/paulhibbing/Sojourn/issues/2)). This error has been fixed when the model is implemented using the [Sojourn](https://cran.r-project.org/web/packages/Sojourn/Sojourn.pdf) R package. While we are retaining the below code for posterity, we recommend using the [Sojourn](https://cran.r-project.org/web/packages/Sojourn/Sojourn.pdf) R package to implement the correct/fixed version.
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Lyden2014/code.R) can be used to read in the necessary models and functions and a csv data file, then use the Sojourn model to predict energy expenditure for each 1-s window. There is an [example data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Lyden2014/sample_data.csv) sheet which is a csv file in the format exported by ActiGraph (10 header rows followed by counts in each axis). Further instructions are in the R code. 
This code relies on R software which can be downloaded for free at https://www.r-project.org/

---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Lyden2014/code.R)
* [Example data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Lyden2014/sample_data.csv)
* Necessary R models ([nnet3ests](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Lyden2014/nnet3ests.RData), [cent.1](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Lyden2014/cent.1.Rdata), [scal.1](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Lyden2014/scal.1.Rdata), [class.nnn.use.this](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Lyden2014/class.nnn.use.this.Rdata)) and [functions](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Lyden2014/sojourn.functions.R)


**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Lyden, K., Keadle, S. K., Staudenmayer, J., & Freedson, P. S. (2014). A method to estimate free-living active and sedentary behavior from an accelerometer. Medicine and Science in Sports and Exercise, 46(2), 386.
https://www.doi.org/10.1249/MSS.0b013e3182a42a2d [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Lyden2014/Lyden2014.pdf)


#### *Original source for code*
www.math.umass.edu/~jstauden/SojournCode.zip


#### *Corresponding author*
Patty Freedson, psf@kin.umass.edu
