init:
	git init
	git add -A
	git commit -m "Initial commit"
	git branch -M main
	gh repo create
	@echo "push with: git push -u origin main"
install:
	pipenv install --dev
lint:
	pipenv run flake8
	pipenv run black --check .
test: lint
	pipenv run py.test
format:
	pipenv run black .