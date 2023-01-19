# Validity of an integrative method for processing physical activity data
### Ellingson 2016
---

## Description
This modified Sojourn method uses count data from an ActiGraph worn on the right hip and activity code from an ActivPal3 on the right thigh to estimate physical activity intensity. It was validated in healthy adults who performed primarily locomotive activities in the lab. Overall classification accuracy was 78.7%.



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |49 (31 females) healthy adults, 18-40 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Cycling, sports, stairs, stationary, treadmill walking and running   |
| *Criterion* |Oxycon Mobile (VO2), direct observation and compendium   |
| *Accelerometer(s)* |ActiGraph GT3X+ on right hip and ActivPal3 on right thigh   |
| *Validation approach* |Comparison with criterion   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
The models can be implemented as described below or using the [Sojourn](https://cran.r-project.org/web/packages/Sojourn/Sojourn.pdf) R package.
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ellingson2016/code.R) can be used to read in a csv file in the [ActiGraph]((https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ellingson2016/sample_actigraph_data.csv)) export format (with 10 rows of header information) and an [ActivPal](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ellingson2016/sampledata%20Events.csv) file. The Sojourn method is then used and a csv is exported with METs and activity intensity classification. Further instructions are in the [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ellingson2016/code.R). 
This code relies on R software which can be downloaded for free at https://www.r-project.org/

---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ellingson2016/code.R)
* [Example ActiGraph data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ellingson2016/sample_actigraph_data.csv)
* [Example ActivPAL data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ellingson2016/sampledata%20Events.csv)
* Necessary R models [cent.1](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ellingson2016/cent.1.RData), [scal.1](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ellingson2016/scal.1.RData), [class.nnn.use.this](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ellingson2016/class.nnn.use.this.RData) and [functions](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ellingson2016/sip.functions.R) and this [file](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ellingson2016/sampledata.def)


**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Ellingson, L. D., Schwabacher, I. J., Kim, Y., Welk, G. J., & Cook, D. B. (2016). Validity of an integrative method for processing physical activity data. Medicine and Science in Sports and Exercise, 48(8), 1629-1638. https://doi.org/10.1249/MSS.0000000000000915 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Ellingson2016/Ellingson2016.pdf)


#### *Original source for code*
https://github.com/ischwabacher/SIP


#### *Corresponding author*
Laura D. Ellingson, ellingl@iastate.edu
