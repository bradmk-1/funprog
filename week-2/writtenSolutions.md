# Written exercises - Week 2

# 1

sumThree 3 5 7:

    -> 3 + 5 + 7
    -> 15

sumThree 8 (1 + 3) 2:

    -> 8 + (1 + 3) + 2
    -> 8 + 4 + 2 
    -> 14


# 2

threeDifferent 1 4 2: 

    -> 1 4 2 
    -> 1 /= 4 = True
    -> 1 /= 2 = True
    -> 4 /= 2 = True
    -> True   

threeDifferent 1 7 7:

    -> 1 7 7 
    -> 1 /= 7 = True
    -> 1 /= 7 = True
    -> 7 /= 7 = False
    -> False   


# 3


howManyEqual 3 5 2: 

    -> 3 5 2
    -> 3 == 5 && 5 == 2 && 2 == 3 = False
    -> 3 == 5 && 5 /= 2 || 3 == 2 && 2 /= 5 || 5 == 2 && 2 /= 3 = False
    -> otherwise 0
    -> 0

howManyEqual 5 2 5:
       
    -> 5 2 5 
    -> 5 == 2 && 2 == 5 && 5 == 5 = False (Short circuited)
    -> 5 == 2 && 2 /= 5 || 5 == 5 && 5 /= 2 || 2 == 5 && 5 /= 5 = True (Short circuited)
    -> 2




