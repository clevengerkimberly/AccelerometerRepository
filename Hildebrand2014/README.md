# Age group comparability of raw accelerometer output from wrist-and hip-worn monitors
### Hildebrand 2014
---

## Description
In this paper, energy expenditure regression models and physical activity intensity cut-points were developed for the raw acceleration metric Euclidean norm minus one (ENMO) in both adults and children using GENEActiv and ActiGraph accelerometers worn at the right hip or non-dominant wrist. The provided code simply calculates ENMO at a user-specified epoch. For further processing, authors also direct readers to the GGIR package, for which there are copious resources available. 


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |60 (29 males) healthy children and adults 7-65 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, stationary behaviors, stepping, and treadmill walking and running  |
| *Criterion* |Ergospirometry system (VO2)   |
| *Accelerometer(s)* |ActiGraph GT3X+ or GENEActiv on right hip or non-dominant wrist   |
| *Validation approach* |Cross-validation   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hildebrand2014/code.R) defines a function to calculate ENMO. Users specify the sampling rate/frequency, where to save output files, the desired epoch over which to calculate ENMO, and the filepath where the csv files are stored. These csv files should be either ActiGraph raw data (with timestamps and the 10 rows of header information) or a GENEActiv file. There is an example [ActiGraph](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hildebrand2014/sample_data.csv) data sheet, but a GENEActiv data sheet is not currently available. Further instructions are in the [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hildebrand2014/code.R).
This code relies on R software which can be downloaded for free at https://www.r-project.org/

---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hildebrand2014/code.R)
* [Example ActiGraph data](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hildebrand2014/sample_data.csv)


**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Hildebrand, M. Van Hees, V.T., Hansen, B. H., & Ekelund, U. L. F. (2014). Age group comparability of raw accelerometer output from wrist-and hip-worn monitors. Medicine and Science in Sports and Exercise, 46(9), 1816-1824. http://doi.org/10.1249/MSS.0000000000000289 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Hildebrand2014/Hildebrand2014.pdf)

 

#### *Original source for code*
http://links.lww.com/MSS/A367


#### *Corresponding author*
Ulf Ekelund, ulf.ekelund@nih.no
