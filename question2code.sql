/* Write a stored procedure by the name of PROC1 that accepts two varchar strings
as parameters. Your procedure should then determine if the first varchar string 
exists inside the varchar string. For example, if string1 = ‘DAC’ and string2 = 
‘CDAC, then string1 exists inside string2. The stored procedure should insert the 
appropriate message into a suitable TEMPP output table. Calling program for the 
stored procedure need not be written. */
 drop table TEMPP;
 create table TEMPP 
 (result varchar(20));
 drop procedure PROC1;
delimiter //
   create procedure PROC1(str1 varchar(10),str2 varchar(10))
   begin

   set str1  ='DAC';
   set str2 = 'CDAC';
   select ASCII(str1) = ASCII(str2);
        
   insert into dummy values();
   end; //
   delimiter ;
   call output;
   select * from TEMPP;
   