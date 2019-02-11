# {{ cookiecutter.project_name }}

{{ cookiecutter.short_description }}


## Usage
This project preferable runs in its own conda enviornment

```shell
	source activate ml-{{ cookiecutter.project_name }} 
```

A good data organization structure is the default one: 
* raw, unprocessed data in `data/raw`
* processed data (e.g. after merging and cleaunp)  in `data/processed`
* temporary data, checkpoint files etc in `/data/interim`
* final results and figures in `/report`

It is also useful to have a consistent nomenclature for notebooks, e.g. 
`<int>-<initial>-<description>.ipynb`, where `int` is an integer, 
`initial` your initial (which might be useful in projects in which you collaborate) 
and `description` gives you an idea of what you can find in the notebook (e.g. EDA). 


