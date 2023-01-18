# An Activity Index for Raw Accelerometry Data and its Comparison with Other Activity Metrics
### Bai 2016
---

## Description
This code uses the ActivityIndex R package to calculate Activity Index (AI), an acceleration-based metric which was compared to indirect calorimetry in a large sample of older women wearing an ActiGraph on their right hip in the laboratory (R2=0.72). Area under the curve from the receiver operating characteristic analysis was 0.93-0.96 for distinguishing sedentary, light, or moderate-to-vigorous physical activity. However, the provided code simply calculates AI at a user-specified epoch as specific cut-points are unavailable.


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |194 (all female) healthy adults, 60-91 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, overground/self-paced walking, treadmill walking, and stationary behaviors   |
| *Criterion* |Oxycon Mobile (VO2)   |
| *Accelerometer(s)* |ActiGraph GT3X+ on hip   |
| *Validation approach* |Comparison with criterion   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/e82fb22ac0f0202d13e8fa86f5f0439f301037d3/phase%20_images/Phase1.JPG)

---
## Instructions
The [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/13982e2fe8a1a57e37a0eb8ebf3bdc801acf6b3b/Bai2016/code.R) can be used to load the R package that reads in a csv file (in one of two formats), calculates sigma (an intermediary needed for further calculations), then calculates Activity Index in the user-specified epoch.
 
There are two example data sheets- [one](https://github.com/clevengerkimberly/AccelerometerRepository/blob/13982e2fe8a1a57e37a0eb8ebf3bdc801acf6b3b/Bai2016/sample_data.csv) is raw acceleration in each axis with no headers. The [other](https://github.com/clevengerkimberly/AccelerometerRepository/blob/13982e2fe8a1a57e37a0eb8ebf3bdc801acf6b3b/Bai2016/sample_data_2.csv) is raw acceleration in the format exported by ActiLife- with 10 rows of header information. Further instructions are in the [R code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/13982e2fe8a1a57e37a0eb8ebf3bdc801acf6b3b/Bai2016/code.R).
This code relies on R software which can be downloaded for free at https://www.r-project.org/

---
## Attached Files
* [Code](https://github.com/clevengerkimberly/AccelerometerRepository/blob/13982e2fe8a1a57e37a0eb8ebf3bdc801acf6b3b/Bai2016/code.R)
* [Example data with headers](https://github.com/clevengerkimberly/AccelerometerRepository/blob/13982e2fe8a1a57e37a0eb8ebf3bdc801acf6b3b/Bai2016/sample_data_2.csv)
* [Example data no headers](https://github.com/clevengerkimberly/AccelerometerRepository/blob/13982e2fe8a1a57e37a0eb8ebf3bdc801acf6b3b/Bai2016/sample_data.csv)


**Note**: Compared to the original source, code and data dictionary were edited for consistency, example data were added, models were unchanged


---
## Source Information
#### *Reference*
Bai J, Di C, Xiao L, Evenson KR, LaCroix AZ, Crainiceanu CM, et al. (2016) An Activity Index for Raw Accelerometry Data and its Comparison with Other Activity Metrics. PLoS ONE 11(8): e0160644. http://doi.org/10.1371/journal.pone.0160644 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/13982e2fe8a1a57e37a0eb8ebf3bdc801acf6b3b/Bai2016/Bai2016.PDF)


#### *Original source for code*
https://github.com/javybai/ActivityIndex


#### *Corresponding author*
Jiawei Bai, jbai@jhsph.edu
