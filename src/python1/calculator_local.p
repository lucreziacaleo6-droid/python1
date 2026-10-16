def add(a: float, b: float) -> float:
    """Return the sum of a and b."""
    return a + b


def subtract(a: float, b: float) -> float:
    """Return a minus b."""
    return a - b


def multiply(a: float, b: float) -> float:
    """Return the product of a and b."""
    return a * b


def divide(a: float, b: float) -> float:
    """Return a divided by b. Raise ValueError if b is zero."""
    if b == 0:
        raise ValueError("Cannot divide by zero.")
    return a / b


def ask_number(prompt: str) -> float | None:
    """Ask the user for a number. Return None if the input is not valid."""
    raw = input(prompt)
    try:
        return float(raw.strip())
    except ValueError:
        return None


def main() -> None:
    print("Welcome to the Calculator! Please select an option:")
    print("1. Add")
    print("2. Subtract")
    print("3. Multiply")
    print("4. Divide")
    print("q. Quit")

    while True:
        choice = input("Choose an option: ").strip()
        if choice == "q":
            print("Goodbye!")
            break
        if choice not in {"1", "2", "3", "4"}:
            print("Invalid option, please try again.")
            continue

        first_number = ask_number("First number: ")
        second_number = ask_number("Second number: ")
        if first_number is None or second_number is None:
            print("Please enter valid numbers.")
            continue

        try:
            if choice == "1":
                result = add(first_number, second_number)
            elif choice == "2":
                result = subtract(first_number, second_number)
            elif choice == "3":
                result = multiply(first_number, second_number)
            else:
                result = divide(first_number, second_number)
        except ValueError as error:
            print(error)
            continue

        print(f"Result: {result}")


if __name__ == "__main__":
    main()
