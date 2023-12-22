'''Q ) guess the number between 1 - 10
#User is prompted to enter a number. If the user guesses wrong then the prompt appears
again( larger or smaller ) until the guess is correct, on successful guess, user will get a “correct
answer!" message, and the program will exit.)'''
import random
n=random.randint(0,10)
guess=0
while guess!=n:
    guess=int(input("enter ur number"))
    if guess<n:
        print("it is smaller")
    elif guess>n:
        print("it is greater")
    else:
        print(" wow...Your guess is correct")
