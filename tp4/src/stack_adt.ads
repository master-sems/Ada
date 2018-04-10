generic
   type Item is private;
   Default : Item;
   Max : Natural := 256;

package Stack_ADT 
with SPARK_Mode is

   type Stack is private;
   
   function Is_Empty(S : Stack) return Boolean;
   function Is_Full(S : Stack) return Boolean;
   
   procedure Clear(S : in out Stack)
     with 
       Post => Is_Empty(S);
     
   procedure Push(S : in out Stack; X : in Item)
     with 
       Pre => not Is_Full(S),
       Post => not Is_Empty(S);

   procedure Pop(S : in out Stack; X : out Item)
     with 
       Pre => not Is_Empty(S),
       Post => not Is_Full(S);
   
private
   
   subtype Index is Natural range 0 .. Max;
   type Vector is array (Natural range <>) of Item;
   
   type Stack is
      record
         Size: Index := 0;
         Vect: Vector(0 .. Index'Last) := (others => Default);
      end record;
   
end Stack_ADT;
