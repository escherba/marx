
all: test bdist_egg

test:
	python setup.py nosetests

debug_test:
	python setup.py nosetests --pdb --pdb-failures

bdist_egg:
	python setup.py bdist_egg

wheel bdist_wheel:
	python setup.py bdist_wheel

register:
	python setup.py register -r pypi

upload:
	python setup.py sdist upload -r pypi
