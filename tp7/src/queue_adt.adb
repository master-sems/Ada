package body Queue_ADT
with SPARK_Mode
is
   
   function Is_Empty(Q: Queue) return Boolean is
     (Q.In_Q = Q.Out_Q); 
   
   function Is_Full(Q: Queue) return Boolean is
      O: Index := Q.Out_Q;
   begin
      Decr(O);
     return (Q.In_Q = O
             or else (Q.Out_Q = Index'First and then Q.In_Q = Index'Last));
   end Is_Full;     
   
   procedure Clear(Q: in out Queue) is   
   begin     
      Q.In_Q  := Index'First;
      Q.Out_Q := Index'First;      
   end Clear;
   
   
   procedure Push(Q: in out Queue; X: in Item) is
   begin     
      if (Is_Full(Q)) then
         Incr(Q.Out_Q);
      end if;
      Q.Vect(Q.In_Q) := X;
      Incr(Q.In_Q);
   end Push;
   
   
   procedure Peek(Q: in out Queue; X: out Item) is
   begin      
      if not Is_Empty(Q) then
         X := Q.Vect(Q.Out_Q);
         Incr(Q.Out_Q);
      end if;      
   end Peek; 
   
   procedure Incr(V: in out Index) is
      T: Natural := V;
   begin
      T := (T + 1) mod (Index'Last + 1);
      if (T = 0) then
         T := Index'First;
      end if;
      V := T;
   end Incr;

   procedure Decr(V: in out Index) is
      T: Natural := V;
   begin
      T := (T - 1) mod (Index'Last + 1);
      if (T = 0) then
         T := Index'Last;
      end if;
      V := T;
   end Decr;
   
end Queue_ADT;
