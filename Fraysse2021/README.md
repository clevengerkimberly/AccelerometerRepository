# Physical Activity Intensity Cut-Points for Wrist-Worn GENEActiv in Older Adults
### Fraysse 2021
---

## Description
Cut-points for signal vector magnitude (SVM) minus gravity per 5- or 60-sec for GENEActiv monitors worn on each wrist by older adults (≥70 years of age). Across wear locations, sensitivity and specificity were 90-99% and 64-91%. 


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |36 (18 males) older adults, ≥70 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, overground walking, stationary   |
| *Criterion* |MetaMax 3B (VO2)   |
| *Accelerometer(s)* |GENEActiv on each wrist   |
| *Validation approach* |Comparison to criterion   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
SVM is calculated using the equation below as the square root of the sum of the squared acceleration in each axis, minus gravity, summed over the epoch. The original study provides cut-points that were scaled to a 60-sec epoch, and "epoch independent" cut-points. However, as noted in the R package [GGIR](https://cran.r-project.org/web/packages/GGIR/vignettes/CutPoints.html), both sets of cut-points would be sensitive to sampling rate (100 Hz in the original study), so they provide a scaled version which can be applied to any raw acceleration data.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Fraysse2021/fraysse.png)

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Fraysse2021/fraysse2.png)


---
## Source Information
#### *Reference*
Fraysse, F., Post, D., Eston, R., Kasai, D., Rowlands, A. V., & Parfitt, G. (2021). Physical activity intensity cut-points for wrist-worn GENEActiv in older adults. Frontiers in sports and active living, 2, 579278. https://doi.org/10.3389/fspor.2020.579278 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Fraysse2021/fraysse.pdf)


#### *Corresponding author*
François Fraysse, francois.fraysse@unisa.edu.au 
