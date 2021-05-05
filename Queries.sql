Q1: SELECT Status , COUNT(Email) 
    FROM attendees 
    GROUP BY Status;
    
    
Q2: SELECT NAME , Email , Company 
    FROM attendees 
    WHERE Gender = 'MALE'and Company = 'Freutz' or Company = 'Bolton';
    
    
Q3: SELECT Event_ID , Creator_Name 
    from teams 
    ORDER BY Event_ID DESC LIMIT 5;
    
    
    
Q4: SELECT count(Status) / count(*) * 100 + '%' as "Percent" 
    from orders 
    where status = 'Placed' ;
    
    
Q5: SELECT Status, avg(Event_ID) AS AVG_EVENT 
    from events 
    group by Status ORDER BY AVG_EVENT;
    
    
Q6: SELECT organizer , count(Changed) 
    from events
    group by Organizer ; 
    
    

Q7: SELECT Name, median(Quantity_Sold) OVER (PARTITION BY Name)
    FROM ticket_classes 
    group by name;
    
    
Q8: SELECT att.Name , att.Gender , tc.quantity , tc.name 
    from attendees att join ticket_classes tc on(att.Ticket_Class_ID = tc.Ticket_Class_ID)
    where tc.Name = 'RSVP' or tc.Name = 'Early Bird';
    
    
Q9: SELECT O.NAME , O.Status 
    FROM orders O 
    JOIN events E ON (O.Event_ID = E.Event_ID) 
    WHERE E.Event LIKE 'Zylker%';
    
    
Q10: SELECT A.Name , tc.Status , E.Organizer
     from attendees A 
     join ticket_classes tc on (A.Ticket_Class_ID = tc.Ticket_Class_ID) 
     join events E on (E.Event_ID = tc.Event_ID) 
     WHERE E.Organizer = 'Southern Entertainment';
     
     
Q11:  SELECT Name , City , State 
      from venues where City in 
      (select City from venues 
      where country = 'US' and 
      State ='TX' or State = 'CA');
      

Q12:  SELECT Name, Email 
      from attendees 
      where Company in 
      (SELECT Company from attendees 
      where Gender = 'MALE') and Status <>'Checked in' ; 



Q13:  SELECT attendees.Name , count(orders.Order_ID) as num_of_orders 
      from orders INNER 
      JOIN attendees on (orders.Event_ID = attendees.Event_ID) 
      where orders.Status = 'placed' 
      GROUP BY attendees.Name 
      HAVING COUNT(orders.Order_ID);
      
      
Q14:  SELECT QUANTITY SOLD 
      FROM ticket_classes
      WHERE Ticket_Class_ID IN 
      (SELECT Ticket_Class_ID 
      FROM ATTENDEES 
      WHERE GENDER="MALE" AND EVENT_ID IN 
      (SELECT EVENT_ID FROM TEAMS 
      WHERE NAME="TEAM 10"));
       
       
Q15:  SELECT NAME FROM attendees
      WHERE Status="Checked In" AND Event_ID IN 
      (SELECT Event_ID FROM events 
      WHERE Status="live" AND Venue_ID IN 
      (SELECT Venue_ID FROM venues 
      where Country="AU"));
       
       
Q16:   SELECT NAME, Team_ID,Event_ID, Email 
       FROM teams 
       WHERE Event_ID IN 
      (SELECT EVENT_ID FROM EVENTS
       WHERE STATUS="COMPLETED" AND VENUE_ID IN
      (SELECT VENUE_ID FROM VENUES 
       WHERE COUNTRY ="US") AND EVENT_ID IN
      (SELECT EVENT_ID FROM ticket_classes WHERE STATUS ="SOLD_OUT"));




Q17:  SELECT NAME,Email,Company,Order_ID 
      FROM attendees 
      WHERE Status="Checked In" AND GENDER ="FEMALE" AND EVENT_ID IN      
      (SELECT EVENT_ID FROM TICKET_CLASSES 
      WHERE NAME="GENERAL ADMISSION" AND EVENT_ID IN
      (SELECT EVENT_ID FROM EVENTS      
      WHERE STATUS ="LIVE" AND VENUE_ID IN
      (SELECT VENUE_ID FROM VENUES WHERE COUNTRY ="US")));
      
      
      
Q18:  SELECT Name, Localized_Address 
      from venues join events on (venues.Venue_ID = events.Venue_ID) 
      where events.Changed BETWEEN '12-04-2019' and '16-12-2019';
      
      
      
Q19:  SELECT E.Organizer, E.Event, T.Creator_Name 
      FROM events E JOIN TEAMS T ON (E.Event_ID = T.Event_ID) 
      WHERE E.Status = 'Live' and T.Attendee_Count <= 11;
      
      
      
Q20:  SELECT Event_ID 
      FROM events 
      WHERE Changed <='06-02-2020 15:00' 
      UNION ALL 
      SELECT Event_ID 
      FROM orders 
      WHERE Changed <='06-02-2020 15:00' 
      ORDER BY Event_ID ;
       
       
       
Q21:  SELECT a.Name,a.City 
      from venues a 
      JOIN venues b on(a.Venue_ID = b.Venue_ID)
      WHERE a.State = 'TX' or b.State = 'VIC';
       
       
       
       
Q22:  SELECT v.City,v.State,eventa.Organizer,eventb.Event
      from venues v 
      JOIN venues q on(v.Venue_ID = q.Venue_ID) 
      JOIN events eventa on (v.Venue_ID = eventa.Venue_ID)
      JOIN events eventb on (q.Venue_ID = eventb.Venue_ID) 
      WHERE eventa.Status = 'live' and eventb.Status = 'completed';
       
       
       
Q23:   SELECT DISTINCT a.Name, b.Email, a.Company
       FROM attendees a 
       JOIN ticket_classes t1 ON (a.Ticket_Class_ID = t1.Ticket_Class_ID) 
       JOIN ticket_classes t2 ON ( t1.Name= t2.Name AND t1.Quantity = t2.Quantity) 
       JOIN ticket_classes t3 ON (t2.Name = t3.Name AND t2.Event_ID = t3.Event_ID) 
       JOIN ticket_classes t4 ON (t3.Quantity = t4.Quantity AND t3.Organiser_Fee = t4.Organiser_Fee) 
       JOIN attendees b ON (t4.Ticket_Class_ID = b.Ticket_Class_ID)
       WHERE a.Status = 'Checked in' AND b.Status = 'not attending';




 
     

 


