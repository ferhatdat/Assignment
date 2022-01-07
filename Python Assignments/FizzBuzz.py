def FizzBuzz(list_):
    for i in list_:
        if (not i % 3 and not i % 5):
            i = "FizzBuzz"
        elif (not i % 3):
            i = "Fizz"
        elif (not i % 5 ):
            i = "Buzz"
        else:
            i = i
        print(i)
FizzBuzz(range(1, 101))
