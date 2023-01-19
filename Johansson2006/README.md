# Accelerometry combined with heart rate telemetry in the assessment of total energy expenditure
### Johansson 2006
---

## Description
Heart rate and ActiGraph counts are used in a branched equation model to predict energy expenditure in adults wearing a ActiGraph on the lower back. An overall equation for combining predictions from branched equations is also provided to estimate total energy expenditure. Individual calibration is needed to determine specific slopes and cut-offs for each participant. 


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |27 (14 males) healthy adults, 20-63 years of age |
| *Setting*  | Laboratory|
| *Activities*  |Stationary, treadmill walking and running   |
| *Criterion* |Indirect calorimeter (VO2), doubly labeled water   |
| *Accelerometer(s)* |ActiGraph 7164 on lower back   |
| *Validation approach* |Additional measurements in sub-sample of 8 participants (6 males)  |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 1 and 3.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase1and3.JPG)

---
## Instructions
The heart rate cut-off (COHR) needs to be calculated for each individual as the average between the lowest working heart rate (walking at 2 km/h) and the highest heart rate during rest (standing or sitting) plus 10 beats/min. If heart rate is above the COHR, then the ‘EQHR’ equation is used. If heart rate is below COHR, then accelerometer counts/min is used to determine which equation to use. If counts are equal to 0, then energy expenditure is equal to resting metabolic rate. If counts are from 0 to 200, then ‘EQACC1’ is used, while ‘EQACC2’ is used when counts are over 200.
The relationship between heart rate and oxygen consumption and accelerometer counts and oxygen consumption needs to be established to determine slope parameters for each participant. To establish this relationship, participants performed sitting, standing, walking at 2, 4 and 6 km/h, and running at 10 km/h for 4 min each and an incremental maximal aerobic capacity test on the treadmill.
The total energy expenditure formula can be used to combine total time (TT) from each of the other equations and account for the thermic effect of food.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Johansson2006/Johansson.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Johansson2006/JohanssonEQHR.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Johansson2006/JohanssonACC1.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Johansson2006/JohanssonACC2.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Johansson2006/JohanssonTEE.JPG)


---
## Source Information
#### *Reference*
Johansson, H. P., Rossander-Hulthén, L., Slinde, F., & Ekblom, B. (2006). Accelerometry combined with heart rate telemetry in the assessment of total energy expenditure. British Journal of Nutrition, 95(3), 631-639. https://doi.org/10.1079/BJN20051527 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Johansson2006/Johansson2006.pdf)
 

#### *Corresponding author*
Patrik Johansson, Patrik.Johansson@gih.se
