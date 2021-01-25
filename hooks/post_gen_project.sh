#!/bin/bash

rm {{ "Pipfile" if cookiecutter.package_manager == "poetry" else "pyproject.toml" }}