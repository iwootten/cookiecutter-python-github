init:
	git init
	git add -A
	git commit -m "Initial commit"
	git branch -M main
	gh repo create
	@echo "push with: git push -u origin main"
install:
	{%- if cookiecutter.package_manager == "poetry" %}
	poetry install
	{%- elif cookiecutter.package_manager == "pipenv" %}
	pipenv install --dev
	{%- endif %}
lint:
	{{ cookiecutter.package_manager }} run flake8
	{{ cookiecutter.package_manager }} run black --check .
test: lint
	{{ cookiecutter.package_manager }} run py.test
format:
	{{ cookiecutter.package_manager }} run black .