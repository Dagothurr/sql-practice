/*
ADD a 5-star comment ON housing located at 11218 Friel Place, New York ON behalf of George Clooney
AS the PRIMARY KEY (id), specify the number of entries IN the TABLE + 1.
The reservation of the room for which you need to leave a review has already been made, you just need to find it.
*/

INSERT INTO reviews (id, reservation_id, rating)
 VALUES ((SELECT COUNT(1) + 1 FROM reviews AS r),
 (SELECT Reservations.id FROM Reservations
 JOIN Rooms ON Rooms.id = Reservations.room_id
 JOIN Users ON Users.id = Reservations.user_id
 WHERE address LIKE '11218, Friel Place, New York'
 AND users.name = 'George Clooney'),
 5)