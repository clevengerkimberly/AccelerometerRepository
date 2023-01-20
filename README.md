# AccelerometerRepository
The goal of this repository is to make novel methods for estimating physical activity or energy expenditure from accelerometer data easier to find and more accessible to researchers.
[Click here](https://github.com/clevengerkimberly/AccelerometerRepository/wiki) to find a model by population, device brand, or wear location or see the full list of included models. There is also a [website](https://sites.google.com/view/accelerometerrepository) version which might be easier for some to navigate/search.

## Background
We recently conducted a [scoping review](https://doi.org/10.1088/1361-6579/ac89ca) to identify novel methods for estimating physical activity or energy expenditure from accelerometer data. Unfortunately, we found that over half of the methods had never been used after publication which made sense because **less than half of the methods found in our review were actually made available to other researchers** (e.g., as code or equations within the paper). We made this repository to increase accessibility and further development of these novel methods.

## What is a 'novel' method?
More details about our inclusion/exclusion criteria can be found in our [review](https://doi.org/10.1088/1361-6579/ac89ca) but basically:

<b>What you will find here:</b> activity-specific, branched, or 2-regression models, non-linear regression models, and machine learning models (e.g., artificial neural networks, decision trees) using either counts or raw acceleration features as inputs, and linear regression or cut-points using raw acceleration metrics as inputs

<b>What you won't find here (yet):</b> count-based cut-points or linear regression models, methods only focused on determining activity type. Importantly, our review did not include methods which predict activity type, or methods developed using another device as the sole criterion. 


## What is in the repository?
For 56 methods, the authors provided their equations or cut-points directly in the paper, which we have reproduced here with brief instructions. These approaches can be implemented in any software (e.g., Excel, R, Python).
For 15 methods, authors provided functions or models in R. For these methods, we include sample data, instructions, and code based on the information provided by the original authors. As the purpose of this repository is to simply make these models easier to find (by putting them all in one place), the provided code is not optimized-meaning there is certainly more efficient code, particularly for implementing the models for data from more than one participant. Feel free to reach out if you need help with how to use this code more efficiently/easily for your project or have questions. 
For most methods (~106), authors did not provide access to their entire method so these are not available in the repository (yet) - contact us if you'd like your method to be added.

## What about.......?
Specific methods may not be included in the repository because they did not meet the inclusion criteria (e.g., because they predict activity type or only use another accelerometer as the criterion). If you see a missing model/method, please contact us at [accelerometerrepository@gmail.com](mailto:accelerometerrepository@gmail.com) or open an issue on Github. We hope to add additional information about independent cross-validation efforts for each model and information about cut-points or other approaches to classifying activity intensity or predicting energy expenditure. Email us or open an issue if you have other suggestions.

## How can I help?
We encourage researchers who develop methods for characterizing physical activity to report enough information to allow for others to easily and accurately use their model- follow this [checklist](https://github.com/clevengerkimberly/AccelerometerRepository/blob/main/checklist.md) of items to report. Feel free to contribute on Github by adding new methods, cross-validation information, or suggestions, and of course, [cite us](https://iopscience.iop.org/article/10.1088/1361-6579/ac89c9/meta). 
