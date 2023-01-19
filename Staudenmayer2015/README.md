# Methods to Estimate Aspects of Physical Activity and Sedentary Behavior from High-Frequency Wrist Accelerometer Measurements
### Staudenmayer 2015
---

## Description
Linear regression and decision tree to predict METs or activity intensity from acceleration data captured by dominant wrist-worn ActiGraphs in adults. The decision tree was 74% correct for classifying activity intensity while the linear regression had a root mean square error of approximately 1.55 METs.


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |20 (10 males) adults, 20-39 years of age |
| *Setting*  |Laboratory |
| *Activities*  |Activities of daily living, treadmill walking and running, sports, stairs, stationary   |
| *Criterion* |Oxycon Mobile (VO2)    |
| *Accelerometer(s)* |ActiGraph GT3X+ on dominant wrist   |
| *Validation approach* |Leave-one-out cross-validation   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1.JPG)

---
## Instructions
Calculate sdvm as the standard deviation of the vector magnitude (square root of the sum of the squared acceleration in each axis) for the epoch/interval. Calculate mangle as the mean angle of acceleration relative to vertical on the device for the epoch/interval, where angle is equal to 90arcsin(x/vm)/(pi/2). Staudenmayer provides access to two of five described models: 1) a linear regression model to predict METs from sdvm and mangle and 2) a decision tree to classify activity intensity from sdvm and mangle.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Staudenmayer2015/staud1.PNG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Staudenmayer2015/staud2.PNG)

---
## Source Information
#### *Reference*
Staudenmayer, J., He, S., Hickey, A., Sasaki, J., & Freedson, P. (2015). Methods to estimate aspects of physical activity and sedentary behavior from high-frequency wrist accelerometer measurements. Journal of Applied Physiology, 119(4), 396-403. https://doi.org/10.1152/japplphysiol.00026.2015 [Link to paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Staudenmayer2015/staudenmayer.pdf)


#### *Corresponding author*
John Staudenmayer, jstauden@math.umass.edu 
