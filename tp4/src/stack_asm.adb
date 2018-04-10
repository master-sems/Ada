package body Stack_ASM
with SPARK_Mode is
   
   package Integer_Stack_ADT Is
     new Stack_ADT(Item => Integer, Default => 0);
   use Integer_Stack_ADT;
   
   S : Stack;
   
   function Content return Vector
   begin
      
   end Content;
   
   function Is_Empty return Boolean
   is (Is_Empty(S))
   
   function Is_Full return Boolean
   is (Is_Full(S))
   
   procedure Clear is
   begin
      Clear(S);
   end Clear;
   
   procedure Push(X : in Integer) is
   begin
      Push(S, X);
   end Push;
   
   procedure Pop(X : out Integer)
   begin
      Pop(S, X)
   end Pop;
   
end Stack_ASM;
