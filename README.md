# Cookiecutter for ML projects

This cookiecutter is inspired by the [Cookiecutter for Data Science](https://drivendata.github.io/cookiecutter-data-science/) and one published on the [Practical Business Python Blog](https://pbpython.com/notebook-process.html). 

## Features 

* creates automatically a conda environment for the project with a lot of useful packages. 
Note that we use the CPU version of Tensorflow as the GPU version is a bit annoying to install
* useful directory structure: 
    * For materials science project, where features are often expensive, 
    it is useful to store then separately (and also reuse them, like amp does it)
    * The raw data should always remain untouched
    * Exploratory analysis, featurization and the experiments (like different learning methods and/or feature sets) 
      should be in separate directories. 
* this template assumes that DVC is used for machine learning reproducibility (for a nicer visualization one might want to use comet.ml)


## Suggested Workflow
We suggest to use git in conjunction with DVC for version control and reproducibility and also to use Jupyter notebooks 
mostly for exploratory analysis and prototyping but to use python scripts for the actual workflow (as those
are easier in version control and make it easier to adhere to good coding practices). 

### Set-Up 
1. Initalize a project repository with the cookiecutter. The [cookiecutter package]() needs to be installed. 
   Then use `cookiecutter https://github.com/kjappelbaum/materials_data_science_cookiecutter` and answer the question
   in the command prompt
2. Create a remote for the git repository, e.g. on Github.
3. Initialize the repository with `git init`
4. Add the remote `git remote add origin <origin address>`
5. Add the contents `git add .`
6. Commit the contents `git commit -m "Initial commit"`
7. Push the commit `git push origin master`
8. Add your raw data into the `data/raw` folder
9. Initialize DVC `dvc init`
10. Add data to DVC `dvc add data/raw`, `git add .`, `git commit -m "add source dataset"`. Note that from now,
you should use DVC commands like `dvc unprotect` or `dvc remove` or `dvc move` if you need to work with this data. 


In case you want to automatize these steps, we also provide an option for that. 

### Working in the repository


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



    
   