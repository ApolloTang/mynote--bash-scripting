

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





## :warning: If you relocate this folder on your device you have to:

1. remove and reinstall pipenv:
```
pipenv --rm
pipenv install
```

2. remove and reinstall Jupyter's bash kernel
```
pipenv shell 
jupyter kernelspec uninstall bash
python -m bash_kernel.install
```

Note: you can list the installed kernels with:

```
jupyter kernelspec list
```

Reference:

https://github.com/takluyver/bash_kernel

https://stackoverflow.com/questions/42635310/remove-kernel-on-jupyter-notebook





## Bugs

### Kernel sometimes does not work in VSCode

### Rendering on github is sometimes problematic:

see:  [mynote--bash-scripting/contents/variable-scope/variable-scope-of-a-function/variable-scope-of-a-function.ipynb at main · ApolloTang/mynote--bash-scripting](https://github.com/ApolloTang/mynote--bash-scripting/blob/main/contents/variable-scope/variable-scope-of-a-function/variable-scope-of-a-function.ipynb) 

![bug on github](./imgs/rendering-bug-on-github.png)

