# AccelerometerRepository
The goal of this repository is to make novel methods for estimating physical activity or energy expenditure from accelerometer data easier to find and more accessible to researchers.

We recently conducted a [scoping review](https://doi.org/10.1088/1361-6579/ac89ca) to identify novel methods for estimating physical activity or energy expenditure from accelerometer data. Unfortunately, we found that over half of the methods had never been used after publication which made sense because less than half of the methods found in our review were actually made available to other researchers (e.g., as code or equations within the paper). We made this repository to increase accessibility and further development of these novel methods.

## What is a 'novel' method?
More details about our inclusion/exclusion criteria can be found in our review but basically:
What you will find here: activity-specific, branched, or 2-regression models, non-linear regression models, and machine learning models (e.g., artificial neural networks, decision trees) using either counts or raw acceleration features as inputs, and linear regression or cut-points using raw acceleration metrics as inputs
What you won't find here (yet): count-based cut-points or linear regression models, methods only focused on determining activity type. Importantly, our review did not include methods which predict activity type, or methods developed using another device as the sole criterion. 

## What is in the repository?
For 56 methods, the authors provided their equations or cut-points directly in the paper, which we have reproduced here with brief instructions. These approaches can be implemented in any software (e.g., Excel, R, Python).
For 15 methods, authors provided functions or models in R. For these methods, we include sample data, instructions, and code based on the information provided by the original authors. As the purpose of this repository is to simply make these models easier to find (by putting them all in one place), the provided code is not optimized-meaning there is certainly more efficient code, particularly for implementing the models for data from more than one participant. Feel free to reach out if you need help with how to use this code more efficiently/easily for your project or have questions. All of these models use R, so more information about R is found here.
For most methods (~106), authors did not provide access to their entire method so these are not available in the repository (yet). 

## What about.......?
Specific methods may not be included in the repository because they did not meet the inclusion criteria (e.g., because they predict activity type or only use another accelerometer as the criterion). New models are added every three months (on the 15th of January, April, July, and October). If you see a missing model/method, please contact us at accelerometerrepository@gmail.com. We hope to add additional information about independent cross-validation efforts for each model and information about cut-points or other approaches to classifying activity intensity or predicting energy expenditure. Use the feedback form on the home page (or email us) if you have other suggestions.

## How can I help?
We encourage researchers who develop methods for characterizing physical activity to report enough information to allow for others to easily and accurately use their model- follow this checklist of items to report. If you find the repository or checklist useful, feel free to cite us. 
