# Calculator 

A small menu-driven calculator with four typed functions 
(add, subtract, multiply, divide) and safe handling of invalid input. 

## Setup 

```bash
uv sync
```

## Usage

```bash
uv run python -m python1.main
```

Choose an option (1-4), enter two numbers, and read the result. Type `q` to quit.

## Tests

```bash
uv run python tests/test_operations.py
```

## Project structure

- `src/python1/operations.py`: the four functions
- `src/python1/main.py`: the menu
- `tests/test_operations.py`: six assertions