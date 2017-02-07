# Analyzing and planning a new Rails app

Today we will be looking at how to go about planning and thinking through a Rails application. We will be talking about some of the things that need to be done before you start coding.

## Agenda
After this lesson, you will know:

  * User Stories
  * Planning
  * Mockups
  * Modelling


## User Stories

As a ...
I want ...
So that...

- Who are the users?
- What do they need to do?
- Why do they need it? What is the goal they're trying to accomplish?

As a user, I want to be able to select a table
As a user, I want to be able to change a reservation
As a user, I want to be able to be notified about upcoming reservations
As a user, I want to be able to set dietary restrictions
As a user, I want to be able to see reviews
As a user, I want to be able to write reviews
As a user, I want to be able to log in
As a user, I want to be able to log out
As a user, I want to filter restaurants by cuisine
As a user, I want to search by location
As a user, I want to search by price
As a user, I want to be able to see a menu for a restaurant
As a user, I want to be able to book a random reservation
As a user, I want to be able to share my reservation
As a user, I want to be able to pay for my reservation
As an owner, I want to be notified when a new reservation is made
As an owner, I want to be able to change my restaurant info
As an owner, I want to be able to contact the diners
As a user, I want to be able to see the busy times for a restaurant
As a user, I want to be able to upload photos of food
As a user, I want to be able to get an email confirmation
As an owner, I want to be able to set different menus for different times


### EXAMPLES
- As a user, I want to be able to see a list of restaurants






## Prioritize
1. NEED TO HAVE
As a user, I want to be able to make a reservation
As a user, I want to select a timeslot for my reservation
As a user, I want to find a restaurant
As a user, I want to be able to see info about a restaurant
As a user, I want to be able to cancel a reservation
As a user, I want to be able to set the number of people for my reservation
As an owner, I want to be able to list my restaurant
As an owner, I want to be able to set the availability
As an owner, I want to be able to see a list of the reservations

2. NICE TO HAVE

3. HAPPY TO HAVE














## Define our key words
Reservation
- Time
- Date
- Party Size
- Restaurant
- User

User
- Diner
- Owner







## Tough decisions about making a reservation
- Double booking, time conflicts / overlapping reservations
- Capacity limits
- Insufficient info from diner
- Hours of operation
- "Out of band" diners, walk-ins, phone, etc.
- Duration of reservations
- No shows / late comers
- Table layouts!!!!!!!!!!!!!!!!















## Planning
- Make assumptions
- 1 hour reservations, on the hour
- Everyone shows up on time, and leaves on time
- NO TABLES. Seats.
- Assume everyone books through our app
- Payments are restaurant's problem

- Simplify!
- No Owners, only Users


- Make mockups












## Modelling
- Pen and paper / Whiteboard
- Create models
- Draw relationships
