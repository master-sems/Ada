with Sorted, Ada.Integer_Text_IO;
use  Sorted, Ada.Integer_Text_IO;

procedure Main with SPARK_Mode is

   procedure Output(V : in Vect) is
   begin
      for I in V'Range loop
         Put(V(I));
      end loop;
   end;

   V : Vect := (5, 1, 2, 4);
   N : Integer := Min(V);
begin
   -- Output(V);
   Put(N);
end Main;
