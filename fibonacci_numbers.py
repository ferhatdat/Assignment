a = 1
b = 1
list_fibonacci = [1,1]
while(a+b <= 55):
    a, b = b, a+b
    if a+b <= 55:
        list_fibonacci.append(a+b)
print(list_fibonacci)