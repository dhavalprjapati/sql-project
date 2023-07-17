use Travego;

-- a.How many female passengers traveled a minimum distance of 600KMs?
SELECT 
    *
FROM
    passenger
WHERE
    Gender = 'F' AND Distance >= 600;

-- b.Write a query to display the passenger details whose travel distance is greater than 500 and who are traveling in a sleeper bus
SELECT 
    *
FROM
    passenger
WHERE
    Distance > 500 AND Bus_Typ = 'Sleepe';


-- c.Select passenger names whose names start with the character'S'
SELECT 
    *
FROM
    passenger
WHERE
    Passenger_name LIKE 'S%';
    
    
-- d.Calculate the price charged for each passenger,displaying the Passenger name, BoardingCity, DestinationCity, Bustype,and Price in the output
SELECT 
    P.Passenger_name,
    P.Boarding_City,
    P.Destination_City,
    P.Bus_Typ,
    Pr.Price
FROM
    passenger AS P
        LEFT JOIN
    price AS Pr ON p.Distance = Pr.Distance;
    
    
-- e.What are the passenger name(s) and the ticket price for those who traveled 1000KMs Sitting in a bus?
SELECT 
    P.Passenger_name, Pr.Price
FROM
    passenger AS P
        LEFT JOIN
    price AS Pr ON P.Distance = Pr.Distance
WHERE
    Bus_Typ = 'Sitting' AND P.Distance = 1000;
    
    
-- f.What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?
SELECT 
    *
FROM
    passenger AS P
        LEFT JOIN
    price AS Pr ON P.Distance = Pr.Distance
WHERE
    Passenger_name = 'Pallavi'
        AND Bus_Typ IN ('Sleepe' , 'Sitting');
        
-- g.Alter the column category with the value "Non-AC" where the Bus_Type is sleepe
UPDATE passenger 
SET 
    Category = 'Non-Ac'
WHERE
    Bus_Typ = 'Sleeper';

-- h.Delete an entry from the table where the passenger name is Piyush and commit this change in the database.
DELETE FROM passenger 
WHERE
    Passenger_name = 'Piyush';

commit;

-- Truncate the table passenger and comment on the number of rows in the table
truncate passenger;
SELECT 
    *
FROM
    passenger; -- truncate use for delet all data from table now table structur is remaing but data will be delete
    
-- Delete the table passenger from the database


drop table passenger;    


    