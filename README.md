

## To Install:

```
pipenv install
pipenv shell 
python -m bash_kernel.install
```



## To Run after installation:

```
pipenv run jupyter notebook
```



## :warning: kernel does not work in VSCode

This is probably a bug



## :warning: If you relocate this folder on your device you have to:

1. remove and reinstall pipenv:
```
pipenv --rm
pipenv install
```

2. remove and reinstall jupyter's bash kernel
```
pipenv shell 
jupyter kernelspec uninstall bash
python -m bash_kernel.install
```


## Reference:

https://github.com/takluyver/bash_kernel

https://stackoverflow.com/questions/42635310/remove-kernel-on-jupyter-notebook



