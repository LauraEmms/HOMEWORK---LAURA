"""You are tasked with calculating the minimum classes we need to have so we know how
many  people  to  employ.

Write  a  function  which  when  given  a  number  of  students,
calculates and prints out a string for your proposed number of classes, and a dictionary
showing the allocation. """


"""Key Constraints: 
● The maximum size of a class is 30 
● There needs to be a minimum of 2 classes 
● The distribution of each class should be as even as possible.  
● We want to hire as little people as possible - so where possible focus on bigger 
classes, and less of them!"""


# FUNCTION
# Give number of students - user input
# if class_size < 2,
# Print number of classes
# Dictionary to show allocation

def minimum_classes():
    number_of_students = int(input("Please input the number of students in numbers: "))
    count = 0
    for students in number_of_students:
        if students <= 30:
            count = 1
        elif students == 30:
            count += 1
            number_of_classes = count
            print(f"Proposed allocation:{number_of_classes}")
            class_number = number_of_classes//2
            # struggled how to figure out how to get number of students by dividing the class up
            # into whole numbers
            for x in class_number:
                print('{Class {class_number} : {no_students}}'.format(class_number, no_students))
    else:
        print("Please insert a valid number")


""" Write a function that takes in an input and checks to see if it’s an isogram. 
The function should return True or False."""

def is_isogram(string):
    # convert to all lower case
    string = string.lower()
    for x in string:
        if string.count(x) > 1:
            return False
    return True

print(is_isogram("isogram"))
print(is_isogram("uncopyrightable"))
print(is_isogram("ambidextrously"))


"""Make a new test file and write comprehensive unit tests for the 
function you wrote in 2.1 """

# For error handling for test file
class IncorrectInput(Exception):
    pass

def is_isogram(string):
    try:
        is_string = string.lower()
        return is_string
    except TypeError:
        raise IncorrectInput