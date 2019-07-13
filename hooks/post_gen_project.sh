#!/bin/bash

project_name="{{ cookiecutter.project_name }}"
env_name="ml-$project_name"

conda env create --file environment.yml
conda activate "$env_name"

python -m ipykernel install --user --name "$env_name" --display-name "Python ($env_name)"


# taken from https://www.viget.com/articles/create-a-github-repo-from-the-command-line
repo_name=$1

dir_name=`basename $(pwd)`


if [ "$repo_name" = "" ]; then
    echo "Repo name (hit enter to use '$dir_name')?"
    read repo_name
fi

if [ "$repo_name" = "" ]; then
repo_name=$dir_name
fi

username=`git config github.user`
if [ "$username" = "" ]; then
    echo "Could not find username, run 'git config --global github.user <username>'"
    invalid_credentials=1
fi

token=`git config github.token`
if [ "$token" = "" ]; then
    echo "Could not find token, run 'git config --global github.token <token>'"
    invalid_credentials=1
fi

if [ "$invalid_credentials" == "1" ]; then
    exit 1
fi

echo -n "Creating Github repository '$repo_name' ..."
curl -u "$username:$token" https://api.github.com/user/repos -d '{"name":"'$repo_name'", "private":true}' > /dev/null 2>&1
echo " done."

echo "Pushing local code to remote ..."
git init .
git add .
git commit -m "initial setup"
git remote add origin git@github.com:$username/$repo_name.git > /dev/null 2>&1
git push -u origin master > /dev/null 2>&1
dvc init
if [ "$data_dir" = "" ]; then
    echo "Do not know data dir, add data to datadir and run dvc add manually"
    invalid_credentials=1
fi
echo "Done!"




