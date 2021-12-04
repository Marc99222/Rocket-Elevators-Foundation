# Rocket-Elevators-Foundation

# LINK FOR THE WEBSITE : 

http://www.marcapc.com/


An important part of Rocket Elevators' information system is still missing and that is the management of interventions. To add it, it is necessary to take inspiration from the elements already implemented in the current solution and use them again to implement a new entity.
Intervention Management Requires:

# A new form to formulate the request

<img width="1280" alt="Capture d’écran, le 2021-12-03 à 22 27 23" src="https://user-images.githubusercontent.com/91087569/144695279-20eada70-202d-4397-a39a-8efa1e7001f5.png">


# The creation of a new table
A new "Intervention" Table must be added to the Relational model in the MySQL database. 

# Saving the request for intervention in the database

A "Submit" button allows the request to be sent to the processing centre.

# Sending a service ticket to ZenDesk

At the time of saving the service request, the website form creates a new ticket of type "problem" or "question" in ZenDesk. It adds in the detail section of the created ticket all the data entered in the form:

1- The Requester

2- The Customer (Company Name)

3- Building ID

4- The Battery ID

5- The Column ID if specified

6- Elevator ID if specified

7- The employee to be assigned to the task

8- Description of the request for intervention

**** The code for Zendesk are commented in controller Intervention file in the def create function because i have somme issues with the creation of my Zendesk account.

# POSTMAN JSON LINK FOR THE APIREST : 

https://www.getpostman.com/collections/b3fb8bfc5767a9283f8c


