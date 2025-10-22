# Compound Interest Calculator: Tracks growth with decimal time
# This project is belongs to Nattawut Boonnoon
# GitHUB: @Nattawut30

# Initialize variables
principal = 0.0
rate = 0.0
time = 0.0

# Get principal with validation
while True:
    try:
        principal = float(input("Enter the principal amount ($): "))
        if principal < 0:
            print("Principal can't be less than zero.")
        else:
            break
    except ValueError:
        print("Please enter a valid number for the principal.")

# Get interest rate (as percentage, e.g., 3 for 3%) with validation
while True:
    try:
        rate = float(input("Enter the annual interest rate (as a percentage, e.g., 3 for 3% / 2.5 for 2.5%): "))
        if rate < 0:
            print("Interest rate can't be less than zero.")
        else:
            break
    except ValueError:
        print("Please enter a valid number for the interest rate.")

# Get time (allows decimals, e.g., 2.5 for 2 years, 6 months) with validation
while True:
    try:
        time = float(input("Enter the time in years (e.g., 10 for 10 years / 5.5 for 5 years + 6 months): "))
        if time < 0:
            print("Time can't be less than zero.")
        else:
            break
    except ValueError:
        print("Please enter a valid number for the time.")

# Set initial balance
balance = principal

# Print table header
print("\nYear | Balance")
print("-----|---------")

# Show initial balance
print(f"{0:>4} | ${principal:.2f}")

# Show balances for whole years up to floor(time), if time > 0
if time > 0:
    for year in range(1, int(time) + 1):
        balance = principal * pow((1 + rate / 100), year)  # Calculate compound interest
        print(f"{year:>4} | ${balance:.2f}")

# Calculate final balance for exact time
final_balance = principal * pow((1 + rate / 100), time)

# Convert decimal time to years and months
total_years = int(time)
decimal_part = time - total_years
months = round(decimal_part * 12)  # Convert decimal to months
if time < 0.0833:  # Less than 1 month, show as 0 months
    months = 0

# Format time label
if months == 0 and total_years == 0:
    time_label = "0 years"
elif months == 0:
    time_label = f"{total_years} year{'s' if total_years != 1 else ''}"
else:
    time_label = f"{total_years} year{'s' if total_years != 1 else ''} and {months} month{'s' if months != 1 else ''}"

# Show final balance in table and summary
if time > 0:
    print(f"{time:>4.2f} | ${final_balance:.2f}")
print(f"\nFinal balance after {time_label}: ${final_balance:.2f}")