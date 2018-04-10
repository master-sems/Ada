with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

package body Array_IO is

   
   procedure Input(V: out Vect) is
      N: Integer := 0;      
   begin
      for I in V'Range loop
         Get(N);
         V (I) := N;
      end loop;
   end Input;
     
   
   procedure Output(V: in Vect) is 
   begin
      for I in V'Range loop
         Put(V(I));
      end loop;
   end Output;

   
end Array_IO;
