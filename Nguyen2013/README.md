# Assessment of physical activity and energy expenditure by GPS combined with accelerometry in real-life conditions
### Nguyen 2013
---

## Description
Data from three monitors - a Lifecorder accelerometer at the waist, Step Watch 3 at the ankle, and a GPS unit - are combined to predict energy expenditure in adults. A classification tree is developed to determine activity type, then previously established equations (or the MET compendium) are used to determine energy expenditure. This method was cross-validated in an independent sample. Mean difference between measured and predicted energy expenditure was 12 kJ over the two hour observation period.
 


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |24 (12 males) healthy adults, 25±4 years of age |
| *Setting*  |Outdoors |
| *Activities*  |Cycling, overground/self-paced walking and running, stationary  |
| *Criterion* |MetaMax 3b (VO2)   |
| *Accelerometer(s)* |Lifecorder Kenz EX on waist and Step Watch 3 on ankle   |
| *Validation approach* |Cross-validation in an independent sample of 17 participants   |



---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 3 and 4.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase34.JPG)

---
## Instructions
Data from all three sensors were averaged and collated at a 1-min epoch. Physical activity type was determined using the classification tree below based on stride frequency (strides/min from Step Watch), intensity (Lifecorder outputs intensity as one of 11 levels), and speed (km/hr from GPS). The stride frequency during preferred speed uphill walking (LSF), the intensity
during preferred speed uphill walking (LI), the intensity during fast downhill walking (HI), the preferred speed on level walking (PS) and the speed while downhill walking (HS) were determined during a calibration trial during which participants walked 200 m on the level at their own spontaneous speed, 200 m at their fastest walking speed, 300 m on a 7% to 9% grade at a spontaneous pace, and 300 m downhill walking on a –7% to –9% slope at the fastest speed they could achieve walking. Following activity type classification, energy expenditure was calculated based on pre-existing validated equations for predicting energy expenditure during walking, running, and cycling. For burst displacement, lying, sitting using a vehicle and indoor sedentary activities, values were derived from the MET compendium and calculated resting metabolic rate.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Nguyen2013/Nguyen.JPG)
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Nguyen2013/NguyenEq.JPG)


---
## Source Information
#### *Reference*
Nguyen, D. M. T., Lecoultre, V., Sunami, Y., & Schutz, Y. (2013). Assessment of physical activity and energy expenditure by GPS combined with accelerometry in real-life conditions. Journal of Physical Activity and Health, 10(6), 880-888. https://doi.org/10.1123/jpah.10.6.880 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/Nguyen2013/Nguyen.pdf)


#### *Corresponding author*
Dac Minh Tuan Nguyen
