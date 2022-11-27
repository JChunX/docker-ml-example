#!/usr/bin/env python3
import setuptools

setuptools.setup(
    name="awesome_ml_proj",
    version="0.0.1",
    packages=setuptools.find_packages(where="src"),
    package_dir={"": "src"},
)