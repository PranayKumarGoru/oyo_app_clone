--creating user table
CREATE TABLE Users (
    UserId varchar(255) PRIMARY KEY,
    Password varchar(255),
    Name varchar(255),
    Email varchar(255),
    Phone varchar(255),
    Address varchar(255)
);
--adding mock values to the user table
INSERT INTO Users (UserId, Password, Name, Email, Phone, Address)  
   VALUES ('admin', 'admin', 'TestUser', 'testuser@relevel.com', '7777000055', 'Hyderabad');

   
--creating HotelDetails table
CREATE TABLE HotelDetails (
    hotelId INTEGER PRIMARY KEY,
    Name varchar(255),
    City varchar(255),
    Rating INTEGER
);
--adding mock values to the HotelDetails table
INSERT INTO HotelDetails (hotelId, Name, City, Rating)  
   VALUES (001, 'Green Park', 'Hyderabad', 4);
INSERT INTO HotelDetails (hotelId, Name, City, Rating)  
   VALUES (002, 'Radisson', 'Chennai', 3);
INSERT INTO HotelDetails (hotelId, Name, City, Rating)  
   VALUES (003, 'Taj Krishna', 'Hyderabad', 5);
INSERT INTO HotelDetails (hotelId, Name, City, Rating)  
   VALUES (004, 'BlueFox', 'Hyderabad', 2);
INSERT INTO HotelDetails (hotelId, Name, City, Rating)  
   VALUES (005, 'Green Park', 'Bangalore', 4);
INSERT INTO HotelDetails (hotelId, Name, City, Rating)  
   VALUES (006, 'Radisson', 'Bangalore', 3);
INSERT INTO HotelDetails (hotelId, Name, City, Rating)  
   VALUES (007, 'Taj Krishna', 'Bangalore', 5);
INSERT INTO HotelDetails (hotelId, Name, City, Rating)  
   VALUES (008, 'BlueFox', 'Mumbai', 2);
INSERT INTO HotelDetails (hotelId, Name, City, Rating)  
   VALUES (009, 'Green Park', 'Mumbai', 4);
INSERT INTO HotelDetails (hotelId, Name, City, Rating)  
   VALUES (010, 'Radisson', 'Delhi', 3);
INSERT INTO HotelDetails (hotelId, Name, City, Rating)  
   VALUES (011, 'Taj Krishna', 'Delhi', 5);
INSERT INTO HotelDetails (hotelId, Name, City, Rating)  
   VALUES (012, 'BlueFox', 'Chennai', 2);
   
--creating BookingDetails table
CREATE TABLE BookingDetails (
    bookingId INTEGER PRIMARY KEY,
    hotelId INTEGER references HotelDetails(hotelId),
    UserId varchar(255) references Users(UserId),
    checkIn DATE,
    checkOut DATE,
    isPaymentMade BOOLEAN
);
--adding mock values to the BookingDetails table
INSERT INTO BookingDetails (bookingId, hotelId, userId, checkIn, checkOut, isPaymentMade)  
   VALUES (001,001,'admin','2021-07-17' ,'2021-07-18' ,false);
INSERT INTO BookingDetails (bookingId, hotelId, userId, checkIn, checkOut, isPaymentMade)  
   VALUES (002,001,'admin','2021-07-23' ,'2021-07-24' ,false);
INSERT INTO BookingDetails (bookingId, hotelId, userId, checkIn, checkOut, isPaymentMade)  
   VALUES (003,001,'admin','2021-07-08' ,'2021-07-18' ,true);
INSERT INTO BookingDetails (bookingId, hotelId, userId, checkIn, checkOut, isPaymentMade)  
   VALUES (004,001,'admin','2021-08-01' ,'2021-08-05' ,true);


