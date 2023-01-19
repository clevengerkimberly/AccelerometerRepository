# Estimating physical activity in youth using an ankle accelerometer
### Crouter 2018
---

## Description
A 2-regression model to predict METs was developed for an ankle-worn ActiGraph in children using vector magnitude counts/5-s. Root Mean Square Error (RMSE) was 1.34 METs and mean bias was 0.42 METs.



---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |181 (97 males) healthy children, 8-15 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Active video games, activities of daily living, overground/self-paced walking and running, sports/exercise, stationary   |
| *Criterion* |Cosmed K4b2 (VO2)   |
| *Accelerometer(s)* | ActiGraph GT3X or GT3X+ on dominant ankle  |
| *Validation approach* |Cross-validation using additional visit by sub-sample of participants who participated in free-play at the university or their school   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in 1 and 3.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1and3.JPG)

---
## Instructions
The coefficient of variation (CV) in vector magnitude counts/5-s (square root of the sum of the squared counts in each axis) for each 5-second epoch and all possible combinations of the surrounding eleven 5-sec epochs is calculated (12 total combinations). For example, the CV is calculated for the 5-sec epoch of interest and 1) the 11 5-s epochs before, 2) the 10 5-s epochs before and one 5-s epoch after, and 3) the nine 5-s epochs before and two 5-s epochs after, and so on. Then, the lowest CV for each 5-s epoch is used to determine the appropriate equation for predicting METs/min.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Crouter2018/Crouter2018.JPG)



---
## Source Information
#### *Reference*
Crouter, S. E., Oody, J. F., & Bassett Jr, D. R. (2018). Estimating physical activity in youth using an ankle accelerometer. Journal of Sports Sciences, 36(19), 2265-2271. https://doi.org/10.1080/02640414.2018.1449091 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Crouter2018/Crouter2018.pdf)
 
#### *Corresponding author*
Scott Crouter, scrouter@utk.edu
