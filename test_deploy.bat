RMDIR /s /q "build"
RMDIR /s /q "dist"

python setup.py bdist_wheel
twine upload -r testpypi dist/*