# Introduction

Hello, Backend Engineer!

My name is Slava, I'm a Lead Backend Developer at shyftplan, and I have a small task for you.

This task aims to get a general overview of how you organize your code, select data structures, etc.

It's pretty close to a real task we had in the past, so it can also give you a hint of our business domain.

# Domain overview

Imagine a huge international corporation. It has many sub-companies in different countries. 
Each sub-company has many sub-sub-companies in different regions. Each sub-sub-company can have branches in different cities, etc.

Each company(and its sub-companies) needs some specific required amount of employees.
To properly operate, the following condition should be met:

`Amount of employees in the company + Amount of employees in its sub-companies >= Required amount of employees`

# Task

Your task is to develop a system to manage such companies. In this system, it should be possible to:

- Add a company (each company has a unique ID)
- Set relations between companies
- Set required amount of employees for the company
- Remove a company
- Add an employee to the company (each employee has a unique ID, other attributes are irrelevant)
- Remove an employee from the company
- Get a list of all companies
- Get a list of all companies where the amount of employees is less than required

# Details

- Please use Ruby :)
- You can use any frameworks/libraries/gems (as well as use no dependencies)
- It doesn't matter how the user interacts with a system (CLI, API, UI, etc.)
- You don't need to add a database (but you can)
- You can choose data structures, fields, etc.
- It would be nice if you add tools that you'd use in the actual project (tests, linters, etc.), but it's not required
- Please as a result, provide a link to a repository
- If you have any questions, don't hesitate to reach us!
