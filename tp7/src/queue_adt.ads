generic 
   type Item is private;
   Default: Item;
   Max: Natural := 256;

package Queue_ADT
with SPARK_Mode 
is
   
   type Queue is private;
   
   function Is_Empty(Q: Queue) return Boolean;
   
   function Is_Full(Q: Queue) return Boolean;
   
   procedure Clear(Q: in out Queue)
     with Post => Is_Empty(Q);
   
   procedure Push(Q: in out Queue; X: in Item) 
     with 
       Pre => not Is_Full(Q),
       Post => not Is_Empty(Q);
   
   procedure Peek(Q: in out Queue; X: out Item)
     with
       Pre => not Is_Empty(Q),
       Post => not Is_Full(Q);

private
   
   subtype Index is Natural range 1 .. Max;
   
   type Vector is array (Natural range <>) of Item;
   
   type Queue is record
      
      In_Q : Index := Index'First;
      
      Out_Q: Index := Index'First;
      
      Vect: Vector(Index'Range) := (others => Default);
      
   end record;
   
   procedure Incr(V: in out Index);
   
   procedure Decr(V: in out Index);

end Queue_ADT;
