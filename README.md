# EXAM THEORY QUESTIONS (1 - 9): 
<br>

## 1.1 What does SDLC stand for?
SDLC stands for Software Development Life Cycle. Adopted as a best practice by software developers, SDLC serves as a "framework" for breaking down the development process into more digestible and distinct phases. The phases of the Software Development Life Cycle are: Planning, Analysis, Design, Implementation and Testing & Integration, and maintenance.
<br>
<br>

## 1.2. What exception is thrown when you divide a number by 0?
An arithmetic exception: ZeroDivisionError (in Python)
<br>
<br>

## 1.3 What is the git command that moves code from the local repository to the remote repository?
The git push command. This command exports local commits from your local repository to a remote repository.
<br>
<br>

## 1.4 What does NULL represent in a database?
In a database, NULL is a field with no value. This is not the same as an empty string nor a 0 value - rather, NULL represents a data value that is unknown or non-existent.
<br>
<br>

## 1.5 Name 2 responsibilities of the Scrum Master
<br>

**Two responsibilities of the Scrum Master include:**
<br>
<br>
a) Helping to keep the team organised and on track with their projects. The Scrum Master might do this by scheduling and leading the team's daily standup where the team comes together to discuss
what has been achieved, tasks that are to be tackled in the week, and any obstacles that stand in the way of completing said tasks. The Scrum Master may also assist with sprint planning sessions to facilitate
team discussions about the priority of tasks for the upcoming sprint.
<br>

b) Removing blockers: the Scrum Master helps the team by mitigating and eliminating internal and external blockers through implementing process or workflow improvements.
<br>
<br>

## 1.6  Name 2 debugging methods, and when you would use them.
<br>

**Two debugging methods are:**
<br>

a) Using pdb (Python Debugger) module for interactive source code debugging in Python. This method involves using the 'pdb.set_trace()' command to set conditional breakpoints in the code. This method is used to find syntax errors, spelling mistakes and missing snippets of code in the codebase. Using the command, programmers run the script as normal and execution of the code will halt at the point where a conditional breakpoint has been introduced. Usually the breakpoint is inserted within the area where the error appears to be happening.
<br>

b) Setting breakpoints in debug mode using an inbuilt debugger (with the brute force method): the brute force method is generally used when all other methods fail (it is not as efficient as other methods and can be time-intensive). Here, the software developer manually searches through the codebase for traces of the error, using breakpoints to examine any potential errors in each step of the code. To use breakpoints, you can use the debugger tool in software such as PyCharm, and use step-over and step-into to identify how values are changing as you run the code.
<br>
<br>

## 1.7 Looking at the following code, describe a case where this function would throw an error when called. Describe this case and talk about what exception handling you’ll need.
<br>

```
def can_pay(price, cash_given): if cash_given >= price:
       return True
   else:
return False
```
<br>

An example of where this function would throw an error, is if a string such as "hello" is passed into the function when it is expecting an integer. If we assume the function expects price and cash_given to be iterables which containing numbers,if the user enters a non-integer value, such as a string, Python will raise a TypeError: unsupported operand type(s) for/: 'str' and 'int', and this causes the program to stop running. In this case, we can use exception handling, which is the process of dealing with unexpected or unwanted events, and allows developers to identify errors in the code to prevent the program from crashing. To handle the error, a try-except block can be used to catch any TypeErrors when the user inputs a non-integer, such as a string. The except block is what catches any unwanted events, such as TypeErrors. We include the TypeError in the except block so that it knows what to look out for. Here, we can choose the 'raise' keyword to raise a custom exception, where the message could print: "Error, please enter a number." This means the program can continue to run whilst giving the user an indication of what is wrong, and also helps to increase the reliability and robustness of the program.
<br>
<br>

## 1.8 What is git branching? Explain how it is used in Git.
<br>

Git branching is the process of creating incremental changes to your code base, on a separate branch to the main branch. It is particularly useful for when you want to add a new feature or fix a bug in isolation, and working on a separate git branch protects the main branch and other branches in the repository, whilst also reducing the likelihood of merging unstable code into the main branch.
<br>

In Git, a branch is stored as a reference to a commit and represents a new line of development. You can view the history for each branch, where all new commits and any corresponding changes are recorded. Each repository will have at least one default branch, but can have multiple branches too. You can also create a branch from an existing branch, where you can work on it in isolation to the changes being made to the repository by co-workers.
<br>

If you are happy with your code, you can merge the (head) branch into the (base) branch using a 'pull request'. If successful, the pull request is merged (or closed) and the (head) branch can be deleted.
<br>

The steps involved in using a branch are as follows:
<br>

1. Fork a repository (GitHub is a platform that can be used to do this)
2. Clone it to your computer (local repository)
3. Make a branch and move it to git. Here, git commands such as 'git checkout -b <branch_name> ' could be used.
4. In the branch, make changes to the codebase/files
5. Commit the changes to the history
6. Push the branch up to the forked version
7. Submit a 'pull request' on a platform such as GitHub to merge the branch to the main branch
8. Once the pull request is merged (or closed), the branch <branch_name> can be deleted from the forked
repository and can also be deleted from your local repository (computer)
<br>

The git command: 'git branch' allows a developer to list, create, rename and delete a branch.
For example, here are some common git branch commands:
<br>

git branch [branch name]: creates a new branch
<br>
git branch -a: lists all branches
<br>
git branch -d [branch name]: deletes a branch
<br>
git checkout -b [branch name]: create a new branch and switch to it
<br>
Source: https://git-scm.com/docs 

## 1.9 Design a restaurant ordering system.
**You do not need to write code, but describe a high-level approach:**
<br>
**a. Draw a list of key requirements**
<br>
**b. What are your main considerations and problems?**
<br>
**c. What components or tools would you potentially use?**
<br>
<br>

**ONLINE ORDERING SYSTEM**
<br>

*Case Study: Create an app where customers can order choice of meal from restaurant.*
<br>
<br>

**USER PERSONAS**
<br>

Who are user personas that will be using the app?
<br>

a). Admin user/Restaurant team member: take receipt of orders & relays to kitchen 
<br>

b). Customer: places an order via the app and should be able to view all menu options available
<br>
<br>

**KEY FEATURES FOR THE SYSTEM (REQUIREMENTS)**
<br>

a). Every customer who has the app should be able to submit an order, provided conditions are met e.g., payment is successful and the menu item they'd like to order is in stock
<br>

b). Customers should be able to see whether home-delivery is available within their catchment area, with a pop-up to notify them if it isn't
<br>

c). Customers should be able to see all available menu options, with items not available greyed out
<br>

d). Customers should be able to see when the restaurant is closed with an in-app message that states the restaurant is no longer taking orders. Customers should also be notified when the restaurant is too busy to take online order requests during certain periods, prompting the customer to return back to the app later
<br>

e). Customers should be able to see the total sum of their selected menu items in their basket
<br>

f). `customers should also recieve an in-app conformation of their order, with their corresponding order number
<br>
<br>

“*NICE TO HAVES:“*
<br>

g). For customers to see any available discount options or exclusive offers on particular items
<br>

h). Email notification sent to the cutomer, including a live/realtime-tracker with estimated arrival for home deliveries 
<br>

i). Time-out period/a pop up to show when restaurant is closed, or is no longer serving during busy periods
<br>

j). Pop up to show when user takes too long to input bank/card details, and the page has timed out
<br>
<br>

**COMMON PROBLEMS (EDGE CASES LIKE APP CAPACITY, ETC)**
<br>

a). How are menu items updated when they are out of stock? How will app be updated in timely manner to prevent customer from ordering item that is no longer in stock
<br>

b). The restaurant will only be open between certain hours: as such, we will need to know opening time and closing time of restaurant. How will the app decline orders from customers who are trying to place orders during out-of-hours?
<br>

c). How will the app handle bounces if a customers' payment method fails?
<br>

d). How will the app ensure that no duplicate orders are made? E.g., what prevention methods will be put in place to prevent the user from submitting the same order accidentally due to slow page load, and thus payment being taken twice?
<br>

e). Capacity: how many people can the app accept orders from at any one time? What is the absolute limit before the app/server crashes? And how will app save/recover information in the case that it does crash?
<br>

f). How will app comply with GDPR? For example, how will customers' sensitive information like address and bank details be protected? And how will information be safely stored and discarded when no longer required?
<br>
<br>

**TOOLS TO CONSIDER (TO BUILD APP)**
<br>

a). JavaScript, CSS, HTML: to build an attractive UI to show customers available menu options and allow them to add items to a basket. JS, CSS and HTML will also to build the interface for what the admin/team member sees when orders come through
<br>

b). SQL: to collect and store customer information like order ID's and Customer ID's in a database and add constraints to ensure that the database can only have one customer ID and Order ID. Also, SQL could be used to record ID's for the food items and take stock of item availability
<br>

c). Python: to execute backend logic that sits between the UI and the database, where you can send requests and get a response. Using Python we could incorporate components that talk to the database and an API, if one exists
<br>

See below for an image which I've created, outlining the above condiderations regarding tools required, and how they would interlink.
<br>

[Process_Design_Image.pdf](https://github.com/LauraEmms/HOMEWORK---LAURA/files/13237643/Process_Design_Image.pdf)
<br>

[Alt text: image shows the connection between the UI used by customers and admin/team members using JavaScript, Python which computes backend logic, and Python interacting with a database using a program such as SQL, with the primary keys identified as Order_ID for the customer database and Item_ID for the meal database.]

