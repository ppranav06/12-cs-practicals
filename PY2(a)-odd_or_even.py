def oddeven(a):
    if (a%2==0):
        return 1
    else:
        return 0
num = int(input("Enter a number: "))
if (oddeven(num)==1):
    print("The given number is Even")
elif (oddeven(num)==0):
    print("The given number is Odd")