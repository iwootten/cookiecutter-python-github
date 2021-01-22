init:
	git init
	git add -A
	git commit -m "Initial commit"
	git branch -M main
	gh repo create
	@echo "push with: git push -u origin main"
install:
	poetry install
lint:
	poetry run flake8
	poetry run black --check .
test: lint
	poetry run py.test
format:
	poetry run black .