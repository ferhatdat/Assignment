def armstrong(num):
    exponent = len(num)
    total = 0
    if not num.isnumeric():
        print("It is an invalid entry. Don't use non-numeric, float, or negative values!")
    elif int(num) != float(str(num)) or int(num) < 0:
        print("It is an invalid entry. Don't use non-numeric, float, or negative values!")
    else:
        for i in num:
            total += int(i) ** exponent
        if total == int(num):
            print(f"{num} is an Armstrong number")
        else:
            print(f"{num} is not an Armstrong number")


num = input("Number: ")
armstrong(num)