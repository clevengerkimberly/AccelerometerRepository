# The ActiGraph counts processing and the assessment of vigorous activity
### Brønd 2019
---

## Description
A total of six sets of cut-points were generated using linear regression (four sets) or receiver operating characteristics (ROC) analysis (two sets) for children wearing an ActiGraph on the right hip. Instead of the proprietary counts output by ActiLife software, these cut-points are derived for counts generated using Brønd’s (2017) open-source method using three different band pass filters (AG: 0.29 to 1.66 Hz, AC4: 0.29 to 4 Hz, AC10: 0.29 to 10 Hz). Coefficient of determination (R2) was 0.61 to 0.89 for the linear regression cut-points and sensitivity and specificity ranged from 73.4 to 100.0% and 85.6 to 100.0%, respectively, for the ROC cut-points.



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |36 3rd-4th grade children in the calibration portion |
| *Setting*  |Inside and outside of school |
| *Activities*  |Bicycling, overground/self-paced walking and running, playground activity, sports, stationary   |
| *Criterion* |MetaMax 3b (VO2)   |
| *Accelerometer(s)* | ActiGraph GT3X+ on right hip  |
| *Validation approach* |Comparison to criterion   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0 and 2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/4fa8603bf48897b6b7107bfbc98c66415300bd3d/phase%20_images/Phase0and2.JPG)

---
## Instructions
Counts can be calculated using Brønd’s method (2017) described in a previous [paper](https://www.ncbi.nlm.nih.gov/pubmed/28604558) for which there is code available on [GitHub](https://github.com/jbrond/ActigraphCounts) or an R package called [activityCounts](https://cran.r-project.org/web/packages/activityCounts/vignettes/activityCounts.html). Activity intensity can then be calculated for each epoch using these cut-points. Sedentary cut-points were 115, 576 and 768 counts/min for AG, AC4, AC10 (the three band pass filter ranges). Moderate and vigorous cut-points are listed below. The cut-points with the prefix ‘REG’ were developed using linear regression while those with the prefix ‘ROC’ were developed using ROC analysis.
![image]()

---
## Source Information
#### *Reference*
Brønd, J. C., Aadland, E., Andersen, L. B., Resaland, G. K., Andersen, S. A., & Arvidsson, D. (2019). The ActiGraph counts processing and the assessment of vigorous activity. Clinical Physiology and Functional Imaging, 39(4), 276-283. https://doi.org/10.1111/cpf.12571 [Link to Paper]()



#### *Corresponding author*
Jan Brønd, brond@health.sdu.dk
