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
