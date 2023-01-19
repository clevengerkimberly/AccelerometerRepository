# Separating movement and gravity components in an acceleration signal and implications for the assessment of human daily physical activity
### van Hees 2013
---

## Description
Prediction equations for energy expenditure (MJ/day) are determined for women in free-living wearing a wrist-worn GENEA using doubly labelled water. Four metrics are compared- Euclidean norm (EN), Euclidean norm minus one (ENMO), Euclidian norm of the high-pass filtered signals (HFEN), and Euclidean norm of the high-pass filtered signal plus Euclidean norm of low-pass filtered signals minus 1 g (HFEN+). Coefficient of determination (R2) was 0.26 (EN) to 0.36 (HFEN).


---

## Development/Validation

|  |  |
| ------------- | ------------- |
| *Sample*  |63 adult women, 20-35 years of age |
| *Setting*  |Free-living |
| *Activities*  |Free-living   |
| *Criterion* |Doubly labeled water   |
| *Accelerometer(s)* | GENEA on wrist  |
| *Validation approach* |Comparison to criterion   |


---
## Phase Designation
[What's this?](https://github.com/clevengerkimberly/AccelerometerRepository/blob/a76916ebe2a6002b20cdc6ef39c889d62ce9d6ae/phase%20_images/phase.md)
This model is in Phase 3.
![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/phase%20_images/Phase3.JPG)

---
## Instructions
Seven equations for predicting energy expenditure (MJ/day) are available using one of four metrics as an input variable in addition to body weight (BW; in kg). Metrics were input as average values per person. ENMO was calculated as the Euclidean norm (vector magnitude, square root of the sum of the squared acceleration in each axis) minus 1. HFEN was calculated as the vector magnitude of acceleration in each axis after application of a high-pass frequency filter (fourth order Butterworth with ω0=0.2 or 0.5 Hz) to acceleration in each axis. HFEN+ was calculated as HFEN plus the Euclidean norm of the three low-pass filtered acceleration signals (fourth order Butterworth with ω0=0.2 or 0.5 Hz) minus 1 g.

![image](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/VanHees2013/VH2013.JPG)


---
## Source Information
#### *Reference*
Van Hees, V. T., Gorzelniak, L., Leon, E. C. D., Eder, M., Pias, M., Taherian, S., ... & Brage, S. (2013). Separating movement and gravity components in an acceleration signal and implications for the assessment of human daily physical activity. PloS one, 8(4), e61691. https://doi.org/10.1371/journal.pone.0061691 [Link to Paper](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/VanHees2013/vanHees2013.PDF)


#### *Corresponding author*
Vincent van Hees, vincent.van-hees@newcastle.ac.uk
