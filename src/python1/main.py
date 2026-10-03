from python1.operations import add, subtract, multiply, divide


def ask_number(prompt: str) -> float | None:
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


    