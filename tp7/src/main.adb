with Queue_ADT, Ada.Integer_Text_IO, Ada.Text_IO;
use Ada.Integer_Text_IO, Ada.Text_IO;

procedure Main is

   package Integer_Q is new Queue_ADT(Item => Integer, Default => 0, Max => 3);
   use Integer_Q;

   Q: Queue;
   X: Integer;
begin

   if Is_Full(Q) then
      Put_Line("plein");
   else
      Put_Line("pas plein");
   end if;

   Push(Q, 12);

   New_Line;
   if Is_Full(Q) then
      Put_Line("plein");
   else
      Put_Line("pas plein");
   end if;

   Push(Q, 13);

   New_Line;
   if Is_Full(Q) then
      Put_Line("plein");
   else
      Put_Line("pas plein");
   end if;

   Peek(Q, X);

   Put(X);
   New_Line;
   if Is_Empty(Q) then
      Put_Line("vide");
   else
      Put_Line("pas vide");
   end if;

   Peek(Q, X);

   Put(X);
   New_Line;
   if Is_Empty(Q) then
      Put_Line("vide");
   else
      Put_Line("pas vide");
   end if;

end Main;
