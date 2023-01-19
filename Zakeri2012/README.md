# Cross-sectional time series and multivariate adaptive regression splines models using accelerometry and heart rate predict energy expenditure of preschoolers
### Zakeri 2012
---

## Description
Two types of models (cross-sectional time series (CSTS) and multivariate adaptive regression splines (MARS)) were developed for ActiHeart, ActiGraph, or ActiGraph plus heart rate inputs, resulting in six total models for predicting total energy expenditure (TEE in kcal/min) in preschool-aged children based on room calorimetry. Root Mean Square Error (RMSE; in kcal/min) was 0.100 (Actiheart), 0.074 (ActiGraph), 0.077 (ActiGraph plus heart rate) and 0.067 (Actiheart), 0.049 (ActiGraph), 0.051 (ActiGraph plus heart rate) for CSTS and MARS models, respectively.



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |69 (34 males) healthy children, 3-5 years of age |
| *Setting*  |Calorimeter |
| *Activities*  |Active video games, games/exercise, sleep, stationary, unstructured   |
| *Criterion* |Room indirect calorimeter (VO2)  |
| *Accelerometer(s)* | Actiheart on chest, ActiGraph GT3X+ on right hip  |
| *Validation approach* | Comparison to criterion  |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 0 and 2.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase02.JPG)

---
## Instructions
Six total models, three CSTS and three MARS, to predict energy expenditure (kcal/min) are provided using Actiheart, ActiGraph, or ActiGraph plus heart rate data as inputs. MARS models rely on optimizing combinations of basis functions which are defined below. For each basis function, the value is either equal to 0 or the computed value. If the result of the function is greater than zero, it takes on the upper bound value; if the result of the function is less than zero, it takes on the lower bound value of 0. Input variables include participant demographics, heart rate features, and acceleration features.



### CSTS
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Zakeri2012/Zakeri2013CSTS.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Zakeri2012/Zakeri2013CSTS_2.JPG)

### MARS
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Zakeri2012/Zakeri2013.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Zakeri2012/Zakeri2013BF1to20.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Zakeri2012/Zakeri2013BFto40.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Zakeri2012/Zakeri2013BFend.JPG)


---
## Source Information
#### *Reference*
Zakeri, I. F., Adolph, A. L., Puyau, M. R., Vohra, F. A., & Butte, N. F. (2013). Cross-sectional time series and multivariate adaptive regression splines models using accelerometry and heart rate predict energy expenditure of preschoolers. The Journal of Nutrition, 143(1), 114-122. https://doi.org/10.3945/jn.112.168542. [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Zakeri2012/Zakeri2012.pdf)


#### *Corresponding author*
Nancy Butte, nbutte@bcm.edu
