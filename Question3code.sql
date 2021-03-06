/* Create a stored function by the name of FUNC1 to take three parameters, the 
sides of a triangle. The function should return a Boolean value:- TRUE if the 
triangle is valid, FALSE otherwise. A triangle is valid if the length of each side is 
less than the sum of the lengths of the other two sides. Check if the dimensions 
entered can form a valid triangle. Calling program for the stored function need not 
be written */

delimiter //
create function FUNC1(a int, b int, c int)
returns boolean
deterministic
begin
 if a+b > c
	 then if b+c > a
     then if c+a > b
     then return true;
     end if;
     end if;
     end if;
     return false;
     end; //
     delimiter ;
     drop table dummy;
     create table dummy
     (col1 varchar(10),col2 boolean);
   delimiter //
   create procedure output()
   begin
   declare x boolean;
   set x = FUNC1(10,20,50);
   insert into dummy values("result", x);
   end; //
   delimiter ;
   call output;
   select * from dummy;
   
     
 