# EventBrite

Eventbrite is an American event management and ticketing website. The service allows users to browse, create, and promote local events.Therfore the task is to 
analyze the Eventbrite Analytics (Dataset) and retrieving various  informations from it using sql queries .
( **** Writing of simple sql queries to the complex ones using  joins , subquries etc ****) 


# Files Summary :

Download the above EventBrite (zip file) and follow the procedures as bellow 👎
1. File named dataset.sql contains the complete script for your database.( Includes : all CREATE AND INSERT Queries for all the tables of the database.
2. File named queries.txt includes the queries for all the 
3. Folder named outputs contain all the outputs of the queries that are mentioned in the above file named  queries.txt.
4. File named ER DIAGRAM.png contains the Entity Relationship Diagram  for the above  EventBrite database. ( For drawing ER Diagram use online tools like SQLDBM , dbdiagram.io etc)

# Various Questions to retreive data  from the above database ::

1. Count the number of  Attendee's  Emails for each attendee's arrival status .
2. List the names, email, company of the male attendees in which the sponsor company is Freutz or Bolton .
3. Display bottom  five creator's name when Event_ID is arranged in serial wise from smaller to larger.
4. Show the percentage of orders placed in the event .
5. Find the average of the events by Status in ascending order.
6. List down the number of changed for each  individual Organizers .
7. Display the category of ticket reservations and find the median of quantity of ticket sold in each category of tickets.
8. Show the names of attendees , gender , ticket category and quantity of ticket sold whose category belongs to RSVP or EarlyBird. 
9. Find the customer and status of order placed for which the venue_ID > 425994 .
10.List the names of attendees and the status of tickets for the event organized by Southern Entertainment .     
11. 







# Instructions to run  the above SQL queries :

1. Install XAMPP server on your system to be used as local server for project. (lets say you installed it in 'K:\xampp_folder' folder)
2. Download the zip file and unzip on any of the drive . 
3. Start your XAMPP Control Panel and start 'Apache' and 'MySql' servers there.
4. Open your browser and type 'localhost/' or '127.0.0.1/' , then from there go to phpmyadmin.
5. Create a database named:'EventBrite'  or you can even name it as of your choice in phpmyadmin.
6. Import the dataset.sql file which is in the sql directory.
7. Congratulations! you are good to go  ....... Try retrieving various informations from the dataset and Explore new advanced queries... ^-^

Thank you 


   





