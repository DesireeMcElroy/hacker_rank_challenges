# Python exercises




# If-Else

# Task
# Given an integer, , perform the following conditional actions:

# If  is odd, print Weird
# If  is even and in the inclusive range of  to , print Not Weird
# If  is even and in the inclusive range of  to , print Weird
# If  is even and greater than , print Not Weird
# Input Format

# A single line containing a positive integer, .

# Constraints

# Output Format

# Print Weird if the number is weird. Otherwise, print Not Weird.

def check_number(n):
    if n > 0 and n < 101:
        if n % 2 == 1:
            print('Weird')
        elif n % 2 == 0 and n in range(2, 6):
            print('Not Weird')
        elif n % 2 == 0 and n in range(6, 21):
            print('Weird')
        elif n % 2 == 0 and n > 20:
            print('Not Weird')
    else:
        print("Invalid")

check_number(4)



# Loops

# Task
# The provided code stub reads and integer, , from STDIN. For all non-negative integers , print .

# Constraints
# 0 <= n <= 20

n = int(input())
for i in range(0, n):
    if i > -1 and i < 21:
        print(i**2)


# Division

# Task
# The provided code stub reads two integers,  and , from STDIN.

# Add logic to print two lines. The first line should contain the 
# result of integer division,  // . The second line should contain 
# the result of float division,  / .

a = int(input())
b = int(input())
print(a//b)
print(a/b)
# outputs
# 0
# 0.6




# Arithmetic Operators

# Task
# The provided code stub reads two integers from STDIN,  and . Add code to print three lines where:

# The first line contains the sum of the two numbers.
# The second line contains the difference of the two numbers (first - second).
# The third line contains the product of the two numbers.

# Constraints
# 1 <= a <= 10**10
# 1 <= b <= 10**10

a = int(input("Enter a number between 1 and 10**10: "))
b = int(input("Enter a number between 1 and 10**10: "))
if 1 <= a <= 10**10 and 1 <= b <= 10**10:
    print(a+b)
    print(a-b)
    print(a*b)




# Print Function

# The included code stub will read an integer, , from STDIN.

# Without using any string methods, try to print the following:

# 123.....n

# Note that "" represents the consecutive values in between.

# Constraints
# 1 <= n <= 150

n = int(input("Please enter a number between 1 and 150: "))
if 1 <= n <= 150:
    number = range(1,n+1)
    print(*number)
    
        
