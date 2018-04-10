package body Stack_ADT 
with SPARK_Mode is
   
   function Is_Empty(S : Stack) return Boolean is
      (S.Size = 0);
     
   function Is_Full(S : Stack) return Boolean is
      (S.Size = S.Vect'Last);
   
   procedure Clear(S : in out Stack) is
   begin
      S.Size := 0;
   end;
     
   procedure Push(S : in out Stack; X : in Item) is
   begin
      S.Vect(S.Size) := X;
      S.Size := S.Size + 1;
   end Push;
      
   procedure Pop(S : in out Stack; X : out Item) is
   begin
      S.Size := S.Size - 1;
      X := S.Vect(S.Size);
   end;
   
end stack_adt;
