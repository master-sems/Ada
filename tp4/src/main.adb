with Stack_ADT, Ada.Integer_Text_IO;
use Stack_ADT, Ada.Integer_Text_IO;

procedure Main with SPARK_Mode is

   package Integer_Stack_ADT Is
     new Stack_ADT(Item => Integer, Default => 0);
   use Integer_Stack_ADT;

   S : Stack;
   X : Integer;
begin

   Clear(S);

   Push(S, 1);
   Push(S, 2);

   Pop(S, X);
   Put(X);

   Push(S, 3);
   Push(S, 4);

   Pop(S, X);
   Put(X);

   Pop(S, X);
   Put(X);

   Pop(S, X);
   Put(X);

   null;
end Main;
