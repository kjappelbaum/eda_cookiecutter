# Cookiecutter for ML projects

This cookiecutter is inspired by the [Cookiecutter for Data Science](https://drivendata.github.io/cookiecutter-data-science/) and one published on the [Practical Business Python Blog](https://pbpython.com/notebook-process.html). 

## Features 

* creates automatically a conda enviornment for the project with a lot of useful packages. 
Note that we use the CPU version of Tensorflow as the GPU version is a bit annoying to install
* useful directory structure: 
    * For materials science project, where features are often expensive, 
    it is useful to store then seperately (and also reuse them, like amp does it)
    * The raw data should always remain untouched
* this template assumes that DVC is used for machine learning reproducibility (for a nicer visualization one might want to use comet.ml)


## Suggested Workflow
We suggest to use git in conjunction with DVC for most of the steps and also to use Jupyter notebooks 
mostly for exploratory analysis and prototyping but to use python scripts for the actual workflow (as those
are easier in version control and make it easier to adhere to good coding practices)

1. Initalize a project repository with 

## Included packages: 
Since anaconda tries to use links between packages in different enviornments, the overhead when installing 
a lot of packages in an enviornment is not too large. 

### Reproducibility
* [DVC](www.https://dvc.org)
* [comet.ml]()

### EDA
* [missingno]()
* [pandas-profling]()

### Visualization
* [altair]()
* [bokeh]()
* [holoviews]()


### Featurization 
* [matminer]()


### Machine Learning 
* [scikit-learn]()
* [tensorflow]()
* [keras]()
* [h2o]()


### Interpretability
* [shap]()
* [ElI5]()
* [lime]()



    
   