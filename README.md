
To Install:

```
$ pipenv install
$ python -m bash_kernel.install
```

To Run after installation:
```
$ pipenv run jupyter notebook
```

If you relocate this folder on your device you have to:

1. reinstall you pipenv:
```
pipenv --rm
pipenv install
```

2. remove jupyter's bash kernel
```
pipenv run jupyter kernelspec list
pipenv run jupyter kernelspec uninstall unwanted-kernel
```
see: https://stackoverflow.com/questions/42635310/remove-kernel-on-jupyter-notebook


