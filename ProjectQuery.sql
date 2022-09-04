USE project1
GO

SELECT *
FROM airline_passenger_satisfaction


--Total Customers
SELECT COUNT(*) AS [Number of Total Passangers]
FROM airline_passenger_satisfaction

SELECT COUNT(*) AS [Number of Satisfied Passangers]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'


--First-time vs Returning
SELECT [Customer Type], COUNT(*) AS [Number of Total Passangers]
FROM airline_passenger_satisfaction
GROUP BY [Customer Type]

SELECT [Customer Type], COUNT(*) AS [Number of Satisfied Passangers]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY [Customer Type]


--Business vs Economy Plus vs Economy
SELECT Class, COUNT(*) AS [Number of Total Passangers]
FROM airline_passenger_satisfaction
GROUP BY Class

SELECT Class, COUNT(*) AS [Number of Satisfied Passangers]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY Class

------------------------------------------------------------------------------


--Average Ranks For All Services Among All Passangers

--Pre-Flight Services
SELECT COUNT(*) AS [Number of Satisfied Passangers],
ROUND(AVG([Check-in Service]*1.0 + 0), 2) AS [Check-in Service],
ROUND(AVG([Online Boarding]*1.0 + 0), 2) AS [Online Boarding],
ROUND(AVG([On-board Service]*1.0 + 0), 2) AS [On-board Service],
ROUND(AVG([Departure and Arrival Time Convenience]*1.0 + 0), 2) AS [Departure and Arrival Time Convenience],
ROUND(AVG([Baggage Handling]*1.0 + 0), 2) AS [Average Baggage Handling],
ROUND(AVG([Ease of Online Booking]*1.0 + 0),2 ) AS [Ease of Online Booking],
ROUND(AVG([Gate Location]*1.0 + 0),2 ) AS [Gate Location]
FROM airline_passenger_satisfaction

--In-Flight Services
SELECT COUNT(*) AS [Number of Satisfied Passangers],
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS [Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS [Leg Room Service],
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS [Cleanliness],
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS [Food and Drink],
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS [In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS [In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS [In-flight Wifi Service]
FROM airline_passenger_satisfaction


--Average Ranks For All Services Group By Customer Type

--Pre-Flight Services
SELECT [Customer Type], COUNT(*) AS [Number of Passangers],
ROUND(AVG([Check-in Service]*1.0 + 0), 2) AS [Check-in Service],
ROUND(AVG([Online Boarding]*1.0 + 0), 2) AS [Online Boarding],
ROUND(AVG([On-board Service]*1.0 + 0), 2) AS [On-board Service],
ROUND(AVG([Departure and Arrival Time Convenience]*1.0 + 0), 2) AS [Departure and Arrival Time Convenience],
ROUND(AVG([Baggage Handling]*1.0 + 0), 2) AS [Average Baggage Handling],
ROUND(AVG([Ease of Online Booking]*1.0 + 0),2 ) AS [Ease of Online Booking],
ROUND(AVG([Gate Location]*1.0 + 0),2 ) AS [Gate Location]
FROM airline_passenger_satisfaction
GROUP BY [Customer Type]

--In-Flight Services
SELECT [Customer Type], COUNT(*) AS [Number of Passangers],
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS [Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS [Leg Room Service],
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS [Cleanliness],
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS [Food and Drink],
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS [In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS [In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS [In-flight Wifi Service]
FROM airline_passenger_satisfaction
GROUP BY [Customer Type]


--Average Ranks For All Services Group By Class

--Pre-Flight Services
SELECT Class, COUNT(*) AS [Number of Passangers],
ROUND(AVG([Check-in Service]*1.0 + 0), 2) AS [Check-in Service],
ROUND(AVG([Online Boarding]*1.0 + 0), 2) AS [Online Boarding],
ROUND(AVG([On-board Service]*1.0 + 0), 2) AS [On-board Service],
ROUND(AVG([Departure and Arrival Time Convenience]*1.0 + 0), 2) AS [Departure and Arrival Time Convenience],
ROUND(AVG([Baggage Handling]*1.0 + 0), 2) AS [Average Baggage Handling],
ROUND(AVG([Ease of Online Booking]*1.0 + 0),2 ) AS [Ease of Online Booking],
ROUND(AVG([Gate Location]*1.0 + 0),2 ) AS [Gate Location]
FROM airline_passenger_satisfaction
GROUP BY Class

--In-Flight Services
SELECT Class, COUNT(*) AS [Number of Passangers],
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS [Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS [Leg Room Service],
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS [Cleanliness],
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS [Food and Drink],
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS [In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS [In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS [In-flight Wifi Service]
FROM airline_passenger_satisfaction
GROUP BY Class


-----------------------------------------------------------------------------------


-----Correlation Index for All Customers

---Pre-Flight & Baggage Services
SELECT COUNT(*) AS [Number of Satisfied Passangers],
ROUND(AVG([Check-in Service]*1.0 + 0), 2) AS [Check-in Service],
ROUND(AVG([Online Boarding]*1.0 + 0), 2) AS [Online Boarding],
ROUND(AVG([On-board Service]*1.0 + 0), 2) AS [On-board Service],
ROUND(AVG([Departure and Arrival Time Convenience]*1.0 + 0), 2) AS [Departure and Arrival Time Convenience],
ROUND(AVG([Baggage Handling]*1.0 + 0), 2) AS [Baggage Handling],
ROUND(AVG([Ease of Online Booking]*1.0 + 0),2 ) AS [Ease of Online Booking],
ROUND(AVG([Gate Location]*1.0 + 0),2 ) AS [Gate Location]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'

SELECT COUNT(*) AS [Number of Dissatisfied Passangers],
ROUND(AVG([Check-in Service]*1.0 + 0), 2) AS [Check-in Service],
ROUND(AVG([Online Boarding]*1.0 + 0), 2) AS [Online Boarding],
ROUND(AVG([On-board Service]*1.0 + 0), 2) AS [On-board Service],
ROUND(AVG([Departure and Arrival Time Convenience]*1.0 + 0), 2) AS [Departure and Arrival Time Convenience],
ROUND(AVG([Baggage Handling]*1.0 + 0), 2) AS [Baggage Handling],
ROUND(AVG([Ease of Online Booking]*1.0 + 0),2 ) AS [Ease of Online Booking],
ROUND(AVG([Gate Location]*1.0 + 0),2 ) AS [Gate Location]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Neutral or Dissatisfied'

SELECT COUNT(*) AS [Number of Satisfied Passangers], (SELECT COUNT(*) FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied') AS [Number of Dissatisfied Passangers],
ROUND(AVG([Check-in Service]*1.0)+0 - (SELECT AVG([Check-in Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Check-in Service],
ROUND(AVG([Online Boarding]*1.0)+0 - (SELECT AVG([Online Boarding]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Online Boarding],
ROUND(AVG([On-board Service]*1.0)+0 - (SELECT AVG([On-board Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [On-board Service],
ROUND(AVG([Departure and Arrival Time Convenience]*1.0)+0 - (SELECT AVG([Departure and Arrival Time Convenience]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Departure and Arrival Time Convenience],
ROUND(AVG([Baggage Handling]*1.0)+0 - (SELECT AVG([Baggage Handling]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Baggage Handling],
ROUND(AVG([Ease of Online Booking]*1.0)+0 - (SELECT AVG([Ease of Online Booking]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Ease of Online Booking],
ROUND(AVG([Gate Location]*1.0)+0 - (SELECT AVG([Gate Location]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Gate Location]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'

---In-Flight Services
SELECT COUNT(*) AS [Number of Satisfied Passangers],
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS [Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS [Leg Room Service],
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS [Cleanliness],
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS [Food and Drink],
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS [In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS [In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS [In-flight Wifi Service]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'

SELECT COUNT(*) AS [Number of Dissatisfied Passangers],
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS [Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS [Leg Room Service],
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS [Cleanliness],
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS [Food and Drink],
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS [In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS [In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS [In-flight Wifi Service]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Neutral or Dissatisfied'

SELECT COUNT(*) AS [Number of Satisfied Passangers], (SELECT COUNT(*) FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied') AS [Number of Dissatisfied Passangers],
ROUND(AVG([Seat Comfort]*1.0)+0 - (SELECT AVG([Seat Comfort]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0)+0 - (SELECT AVG([Leg Room Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Leg Room Service],
ROUND(AVG(Cleanliness*1.0)+0 - (SELECT AVG(Cleanliness*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS Cleanliness,
ROUND(AVG([Food and Drink]*1.0)+0 - (SELECT AVG([Food and Drink]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Food and Drink],
ROUND(AVG([In-flight Service]*1.0)+0 - (SELECT AVG([In-flight Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0)+0 - (SELECT AVG([In-flight Entertainment]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0)+0 - (SELECT AVG([In-flight Wifi Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [In-flight Wifi Service]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'



-----Correlation Index for Customer Type

---Pre-Flight & Baggage Services
SELECT [Customer Type], COUNT(*) AS [Number of Satisfied Passangers],
ROUND(AVG([Check-in Service]*1.0 + 0), 2) AS [Check-in Service],
ROUND(AVG([Online Boarding]*1.0 + 0), 2) AS [Online Boarding],
ROUND(AVG([On-board Service]*1.0 + 0), 2) AS [On-board Service],
ROUND(AVG([Departure and Arrival Time Convenience]*1.0 + 0), 2) AS [Departure and Arrival Time Convenience],
ROUND(AVG([Baggage Handling]*1.0 + 0), 2) AS [Baggage Handling],
ROUND(AVG([Ease of Online Booking]*1.0 + 0),2 ) AS [Ease of Online Booking],
ROUND(AVG([Gate Location]*1.0 + 0),2 ) AS [Gate Location]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY [Customer Type]

SELECT [Customer Type], COUNT(*) AS [Number of Dissatisfied Passangers],
ROUND(AVG([Check-in Service]*1.0 + 0), 2) AS [Check-in Service],
ROUND(AVG([Online Boarding]*1.0 + 0), 2) AS [Online Boarding],
ROUND(AVG([On-board Service]*1.0 + 0), 2) AS [On-board Service],
ROUND(AVG([Departure and Arrival Time Convenience]*1.0 + 0), 2) AS [Departure and Arrival Time Convenience],
ROUND(AVG([Baggage Handling]*1.0 + 0), 2) AS [Baggage Handling],
ROUND(AVG([Ease of Online Booking]*1.0 + 0),2 ) AS [Ease of Online Booking],
ROUND(AVG([Gate Location]*1.0 + 0),2 ) AS [Gate Location]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Neutral or Dissatisfied'
GROUP BY [Customer Type]

SELECT [Customer Type], 
ROUND(AVG([Check-in Service]*1.0)+0 - (SELECT AVG([Check-in Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Check-in Service],
ROUND(AVG([Online Boarding]*1.0)+0 - (SELECT AVG([Online Boarding]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Online Boarding],
ROUND(AVG([On-board Service]*1.0)+0 - (SELECT AVG([On-board Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [On-board Service],
ROUND(AVG([Departure and Arrival Time Convenience]*1.0)+0 - (SELECT AVG([Departure and Arrival Time Convenience]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Departure and Arrival Time Convenience],
ROUND(AVG([Baggage Handling]*1.0)+0 - (SELECT AVG([Baggage Handling]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Baggage Handling],
ROUND(AVG([Ease of Online Booking]*1.0)+0 - (SELECT AVG([Ease of Online Booking]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Ease of Online Booking],
ROUND(AVG([Gate Location]*1.0)+0 - (SELECT AVG([Gate Location]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Gate Location]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY [Customer Type]

---In-Flight Services
SELECT [Customer Type], COUNT(*) AS [Number of Satisfied Passangers],
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS [Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS [Leg Room Service],
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS [Cleanliness],
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS [Food and Drink],
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS [In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS [In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS [In-flight Wifi Service]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY [Customer Type]

SELECT [Customer Type], COUNT(*) AS [Number of Dissatisfied Passangers],
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS [Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS [Leg Room Service],
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS [Cleanliness],
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS [Food and Drink],
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS [In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS [In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS [In-flight Wifi Service]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Neutral or Dissatisfied'
GROUP BY [Customer Type]

SELECT [Customer Type], 
ROUND(AVG([Seat Comfort]*1.0)+0 - (SELECT AVG([Seat Comfort]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0)+0 - (SELECT AVG([Leg Room Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Leg Room Service],
ROUND(AVG(Cleanliness*1.0)+0 - (SELECT AVG(Cleanliness*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS Cleanliness,
ROUND(AVG([Food and Drink]*1.0)+0 - (SELECT AVG([Food and Drink]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Food and Drink],
ROUND(AVG([In-flight Service]*1.0)+0 - (SELECT AVG([In-flight Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0)+0 - (SELECT AVG([In-flight Entertainment]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0)+0 - (SELECT AVG([In-flight Wifi Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [In-flight Wifi Service]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY [Customer Type]



-----Correlation Index for Class

---Pre-Flight & Baggage Services
SELECT Class, COUNT(*) AS [Number of Satisfied Passangers],
ROUND(AVG([Check-in Service]*1.0 + 0), 2) AS [Check-in Service],
ROUND(AVG([Online Boarding]*1.0 + 0), 2) AS [Online Boarding],
ROUND(AVG([On-board Service]*1.0 + 0), 2) AS [On-board Service],
ROUND(AVG([Departure and Arrival Time Convenience]*1.0 + 0), 2) AS [Departure and Arrival Time Convenience],
ROUND(AVG([Baggage Handling]*1.0 + 0), 2) AS [Baggage Handling],
ROUND(AVG([Ease of Online Booking]*1.0 + 0),2 ) AS [Ease of Online Booking],
ROUND(AVG([Gate Location]*1.0 + 0),2 ) AS [Gate Location]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY Class

SELECT Class, COUNT(*) AS [Number of Dissatisfied Passangers],
ROUND(AVG([Check-in Service]*1.0 + 0), 2) AS [Check-in Service],
ROUND(AVG([Online Boarding]*1.0 + 0), 2) AS [Online Boarding],
ROUND(AVG([On-board Service]*1.0 + 0), 2) AS [On-board Service],
ROUND(AVG([Departure and Arrival Time Convenience]*1.0 + 0), 2) AS [Departure and Arrival Time Convenience],
ROUND(AVG([Baggage Handling]*1.0 + 0), 2) AS [Baggage Handling],
ROUND(AVG([Ease of Online Booking]*1.0 + 0),2 ) AS [Ease of Online Booking],
ROUND(AVG([Gate Location]*1.0 + 0),2 ) AS [Gate Location]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Neutral or Dissatisfied'
GROUP BY Class

SELECT Class, 
ROUND(AVG([Check-in Service]*1.0)+0 - (SELECT AVG([Check-in Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Check-in Service],
ROUND(AVG([Online Boarding]*1.0)+0 - (SELECT AVG([Online Boarding]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Online Boarding],
ROUND(AVG([On-board Service]*1.0)+0 - (SELECT AVG([On-board Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [On-board Service],
ROUND(AVG([Departure and Arrival Time Convenience]*1.0)+0 - (SELECT AVG([Departure and Arrival Time Convenience]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Departure and Arrival Time Convenience],
ROUND(AVG([Baggage Handling]*1.0)+0 - (SELECT AVG([Baggage Handling]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Baggage Handling],
ROUND(AVG([Ease of Online Booking]*1.0)+0 - (SELECT AVG([Ease of Online Booking]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Ease of Online Booking],
ROUND(AVG([Gate Location]*1.0)+0 - (SELECT AVG([Gate Location]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Gate Location]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY Class

---In-Flight Services
SELECT Class, COUNT(*) AS [Number of Satisfied Passangers],
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS [Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS [Leg Room Service],
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS [Cleanliness],
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS [Food and Drink],
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS [In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS [In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS [In-flight Wifi Service]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY Class

SELECT Class, COUNT(*) AS [Number of Dissatisfied Passangers],
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS [Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS [Leg Room Service],
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS [Cleanliness],
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS [Food and Drink],
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS [In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS [In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS [In-flight Wifi Service]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Neutral or Dissatisfied'
GROUP BY Class

SELECT Class, 
ROUND(AVG([Seat Comfort]*1.0)+0 - (SELECT AVG([Seat Comfort]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0)+0 - (SELECT AVG([Leg Room Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Leg Room Service],
ROUND(AVG(Cleanliness*1.0)+0 - (SELECT AVG(Cleanliness*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS Cleanliness,
ROUND(AVG([Food and Drink]*1.0)+0 - (SELECT AVG([Food and Drink]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Food and Drink],
ROUND(AVG([In-flight Service]*1.0)+0 - (SELECT AVG([In-flight Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0)+0 - (SELECT AVG([In-flight Entertainment]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0)+0 - (SELECT AVG([In-flight Wifi Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [In-flight Wifi Service]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY Class


------------

SELECT [Customer Type], Class,
ROUND(AVG([Check-in Service]*1.0)+0 - (SELECT AVG([Check-in Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Check-in Service],
ROUND(AVG([Online Boarding]*1.0)+0 - (SELECT AVG([Online Boarding]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Online Boarding],
ROUND(AVG([On-board Service]*1.0)+0 - (SELECT AVG([On-board Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [On-board Service],
ROUND(AVG([Departure and Arrival Time Convenience]*1.0)+0 - (SELECT AVG([Departure and Arrival Time Convenience]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Departure and Arrival Time Convenience],
ROUND(AVG([Baggage Handling]*1.0)+0 - (SELECT AVG([Baggage Handling]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Baggage Handling],
ROUND(AVG([Ease of Online Booking]*1.0)+0 - (SELECT AVG([Ease of Online Booking]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Ease of Online Booking],
ROUND(AVG([Gate Location]*1.0)+0 - (SELECT AVG([Gate Location]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Gate Location]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY [Customer Type], Class
ORDER BY [Customer Type], Class

SELECT [Customer Type], Class,
ROUND(AVG([Seat Comfort]*1.0)+0 - (SELECT AVG([Seat Comfort]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0)+0 - (SELECT AVG([Leg Room Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Leg Room Service],
ROUND(AVG(Cleanliness*1.0)+0 - (SELECT AVG(Cleanliness*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS Cleanliness,
ROUND(AVG([Food and Drink]*1.0)+0 - (SELECT AVG([Food and Drink]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [Food and Drink],
ROUND(AVG([In-flight Service]*1.0)+0 - (SELECT AVG([In-flight Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0)+0 - (SELECT AVG([In-flight Entertainment]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0)+0 - (SELECT AVG([In-flight Wifi Service]*1.0)+0 FROM airline_passenger_satisfaction WHERE Satisfaction = 'Neutral or Dissatisfied'), 2) AS [In-flight Wifi Service]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY [Customer Type], Class
ORDER BY [Customer Type], Class




















---------------------------------------------------------------------------------------------------------------------------------------------------



-----Average Ranks Of Customers Classified By Gender, Total vs Satisfied
SELECT Gender, COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
GROUP BY Gender

SELECT Gender, COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY Gender





-----Average Ranks Of Customers Classified By Type of Travel, Total vs Satisfied
SELECT [Type of Travel], COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
GROUP BY [Type of Travel]

SELECT [Type of Travel], COUNT(*) AS number_of_customers, 
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY [Type of Travel]





-----Average Ranks Of Customers Classified By Gender and Class
SELECT Gender, Class, COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
GROUP BY Gender, Class
ORDER BY Gender, Class

SELECT Gender, Class, COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY Gender, Class
ORDER BY Gender, Class





-----Average Ranks Of Customers Classified By Customer Type and Class, Total vs Satisfied
SELECT [Customer Type], Class, COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
GROUP BY [Customer Type], Class
ORDER BY [Customer Type], Class

SELECT [Customer Type], Class, COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY [Customer Type], Class
ORDER BY [Customer Type], Class





-----Average Ranks Of Customers Classified By Type of Travel and Class, Total vs Satisfied
SELECT [Type of Travel], Class, COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
GROUP BY [Type of Travel], Class
ORDER BY [Type of Travel], Class

SELECT [Type of Travel], Class, COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY [Type of Travel], Class
ORDER BY [Type of Travel], Class





-----Average Ranks Of Customers Classified By Gender and Customer Type, Total vs Satisfied
SELECT Gender, [Customer Type], COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
GROUP BY  Gender, [Customer Type]
ORDER BY Gender

SELECT Gender, [Customer Type], COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY  Gender, [Customer Type]
ORDER BY Gender





-----Average Ranks Of Customers Classified By Age Groups, Total vs Satisfied
SELECT CASE
		   WHEN Age BETWEEN 0 AND 20 THEN '0-20'
		   WHEN Age BETWEEN 21 AND 40 THEN '21-40'
		   WHEN Age BETWEEN 41 AND 60 THEN '41-60'
	--	   WHEN Age BETWEEN 41 AND 50 THEN '41-50'
	--	   WHEN Age BETWEEN 51 AND 60 THEN '51-60'
		   ELSE '61+'
END AS age_group, COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
GROUP BY CASE
		   WHEN Age BETWEEN 0 AND 20 THEN '0-20'
		   WHEN Age BETWEEN 21 AND 40 THEN '21-40'
		   WHEN Age BETWEEN 41 AND 60 THEN '41-60'
	--	   WHEN Age BETWEEN 41 AND 50 THEN '41-50'
	--	   WHEN Age BETWEEN 51 AND 60 THEN '51-60'
		   ELSE '61+'
END
ORDER BY CASE
		   WHEN Age BETWEEN 0 AND 20 THEN '0-20'
		   WHEN Age BETWEEN 21 AND 40 THEN '21-40'
		   WHEN Age BETWEEN 41 AND 60 THEN '41-60'
	--	   WHEN Age BETWEEN 41 AND 50 THEN '41-50'
	--	   WHEN Age BETWEEN 51 AND 60 THEN '51-60'
		   ELSE '61+'
END

SELECT CASE
		   WHEN Age BETWEEN 0 AND 20 THEN '0-20'
		   WHEN Age BETWEEN 21 AND 40 THEN '21-40'
		   WHEN Age BETWEEN 41 AND 60 THEN '41-60'
	--	   WHEN Age BETWEEN 41 AND 50 THEN '41-50'
	--	   WHEN Age BETWEEN 51 AND 60 THEN '51-60'
		   ELSE '61+'
END AS age_group, COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY CASE
		   WHEN Age BETWEEN 0 AND 20 THEN '0-20'
		   WHEN Age BETWEEN 21 AND 40 THEN '21-40'
		   WHEN Age BETWEEN 41 AND 60 THEN '41-60'
	--	   WHEN Age BETWEEN 41 AND 50 THEN '41-50'
	--	   WHEN Age BETWEEN 51 AND 60 THEN '51-60'
		   ELSE '61+'
END
ORDER BY CASE
		   WHEN Age BETWEEN 0 AND 20 THEN '0-20'
		   WHEN Age BETWEEN 21 AND 40 THEN '21-40'
		   WHEN Age BETWEEN 41 AND 60 THEN '41-60'
	--	   WHEN Age BETWEEN 41 AND 50 THEN '41-50'
	--	   WHEN Age BETWEEN 51 AND 60 THEN '51-60'
		   ELSE '61+'
END





-----Average Ranks Of Customers Classified By Flight Distance, Total vs Satisfied
SELECT CASE
		    WHEN [Flight Distance] BETWEEN 0 AND 1000 THEN '0-1000'
			WHEN [Flight Distance] BETWEEN 1001 AND 2000 THEN '1001-2000'
			WHEN [Flight Distance] BETWEEN 2001 AND 3000 THEN '2001-3000'
			WHEN [Flight Distance] BETWEEN 3001 AND 4000 THEN '3001-4000'
			ELSE '4001+'
END AS distance_group, COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
GROUP BY CASE
		    WHEN [Flight Distance] BETWEEN 0 AND 1000 THEN '0-1000'
			WHEN [Flight Distance] BETWEEN 1001 AND 2000 THEN '1001-2000'
			WHEN [Flight Distance] BETWEEN 2001 AND 3000 THEN '2001-3000'
			WHEN [Flight Distance] BETWEEN 3001 AND 4000 THEN '3001-4000'
			ELSE '4001+'
END
ORDER BY CASE
		    WHEN [Flight Distance] BETWEEN 0 AND 1000 THEN '0-1000'
			WHEN [Flight Distance] BETWEEN 1001 AND 2000 THEN '1001-2000'
			WHEN [Flight Distance] BETWEEN 2001 AND 3000 THEN '2001-3000'
			WHEN [Flight Distance] BETWEEN 3001 AND 4000 THEN '3001-4000'
			ELSE '4001+'
END

SELECT CASE
		    WHEN [Flight Distance] BETWEEN 0 AND 1000 THEN '0-1000'
			WHEN [Flight Distance] BETWEEN 1001 AND 2000 THEN '1001-2000'
			WHEN [Flight Distance] BETWEEN 2001 AND 3000 THEN '2001-3000'
			WHEN [Flight Distance] BETWEEN 3001 AND 4000 THEN '3001-4000'
			ELSE '4001+'
END AS distance_group, COUNT(*) AS number_of_customers,
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS avg_seatcomfort,
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS avg_legroomservice,
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS avg_cleaniness,
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS avg_foodanddrink,
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS avg_inflightservice,
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS avg_inflightentertainment,
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS avg_inflightwifiservice
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY CASE
		    WHEN [Flight Distance] BETWEEN 0 AND 1000 THEN '0-1000'
			WHEN [Flight Distance] BETWEEN 1001 AND 2000 THEN '1001-2000'
			WHEN [Flight Distance] BETWEEN 2001 AND 3000 THEN '2001-3000'
			WHEN [Flight Distance] BETWEEN 3001 AND 4000 THEN '3001-4000'
			ELSE '4001+'
END
ORDER BY CASE
			WHEN [Flight Distance] BETWEEN 0 AND 1000 THEN '0-1000'
			WHEN [Flight Distance] BETWEEN 1001 AND 2000 THEN '1001-2000'
			WHEN [Flight Distance] BETWEEN 2001 AND 3000 THEN '2001-3000'
			WHEN [Flight Distance] BETWEEN 3001 AND 4000 THEN '3001-4000'
			ELSE '4001+'
END





-----Average Ranks Of Customers Classified By Departure Delay, Total vs Satisfied
SELECT CASE
			WHEN [Departure Delay] = 0 THEN '0'
			WHEN [Departure Delay] BETWEEN 1 AND 30 THEN '1-30'
			WHEN [Departure Delay] BETWEEN 31 AND 60 THEN '31-60'
			WHEN [Departure Delay] BETWEEN 61 AND 90 THEN '61-90'
			ELSE '91+'
END AS [Delay Group], COUNT(*) AS [Total Satisfied Customers],
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS [Average Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS [Average Leg Room Service],
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS [Average Cleanliness],
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS [Average Food and Drink],
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS [Average In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS [Average In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS [Average In-flight Wifi Service]
FROM airline_passenger_satisfaction
WHERE Satisfaction = 'Satisfied'
GROUP BY CASE
			WHEN [Departure Delay] = 0 THEN '0'
			WHEN [Departure Delay] BETWEEN 1 AND 30 THEN '1-30'
			WHEN [Departure Delay] BETWEEN 31 AND 60 THEN '31-60'
			WHEN [Departure Delay] BETWEEN 61 AND 90 THEN '61-90'
			ELSE '91+'
END
ORDER BY CASE
			WHEN [Departure Delay] = 0 THEN '0'
			WHEN [Departure Delay] BETWEEN 1 AND 30 THEN '1-30'
			WHEN [Departure Delay] BETWEEN 31 AND 60 THEN '31-60'
			WHEN [Departure Delay] BETWEEN 61 AND 90 THEN '61-90'
			ELSE '91+'
END

SELECT CASE
			WHEN [Departure Delay] = 0 THEN '0'
			WHEN [Departure Delay] BETWEEN 1 AND 30 THEN '1-30'
			WHEN [Departure Delay] BETWEEN 31 AND 60 THEN '31-60'
			WHEN [Departure Delay] BETWEEN 61 AND 90 THEN '61-90'
			ELSE '91+'
END AS [Delay Group], COUNT(*) AS [Total Customers],
ROUND(AVG([Seat Comfort]*1.0 + 0), 2) AS [Average Seat Comfort],
ROUND(AVG([Leg Room Service]*1.0 + 0), 2) AS [Average Leg Room Service],
ROUND(AVG(Cleanliness*1.0 + 0), 2) AS [Average Cleanliness],
ROUND(AVG([Food and Drink]*1.0 + 0), 2) AS [Average Food and Drink],
ROUND(AVG([In-flight Service]*1.0 + 0), 2) AS [Average In-flight Service],
ROUND(AVG([In-flight Entertainment]*1.0 + 0), 2) AS [Average In-flight Entertainment],
ROUND(AVG([In-flight Wifi Service]*1.0 + 0),2 ) AS [Average In-flight Wifi Service]
FROM airline_passenger_satisfaction
--WHERE Satisfaction = 'Neutral or Dissatisfied'
GROUP BY CASE
			WHEN [Departure Delay] = 0 THEN '0'
			WHEN [Departure Delay] BETWEEN 1 AND 30 THEN '1-30'
			WHEN [Departure Delay] BETWEEN 31 AND 60 THEN '31-60'
			WHEN [Departure Delay] BETWEEN 61 AND 90 THEN '61-90'
			ELSE '91+'
END
ORDER BY CASE
			WHEN [Departure Delay] = 0 THEN '0'
			WHEN [Departure Delay] BETWEEN 1 AND 30 THEN '1-30'
			WHEN [Departure Delay] BETWEEN 31 AND 60 THEN '31-60'
			WHEN [Departure Delay] BETWEEN 61 AND 90 THEN '61-90'
			ELSE '91+'
END
