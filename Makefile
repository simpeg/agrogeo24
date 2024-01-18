NOTEBOOKS_DIR=notebooks

.PHONY: help black ruff check format

help:
	@echo "Commands:"
	@echo ""
	@echo "  check     run code style and quality checks (black and ruff)"
	@echo "  format    run black and ruff to format notebooks"
	@echo ""

check: ruff black

ruff:
	nbqa ruff ${NOTEBOOKS_DIR}/*.ipynb

black:
	nbqa black --check ${NOTEBOOKS_DIR}/*.ipynb

format:
	nbqa black ${NOTEBOOKS_DIR}/*.ipynb
	nbqa ruff --fix ${NOTEBOOKS_DIR}/*.ipynb
