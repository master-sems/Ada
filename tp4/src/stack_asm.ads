with Stack_ADT;
use Stack_ADT;

package Stack_ASM
with SPARK_Mode
is
   
   function Content return Vector
     with Ghost;
   
   function Is_Empty return Boolean;
   
   function Is_Full return Boolean;
   
   procedure Clear;
   
   procedure Push(X : in Integer);
   
   procedure Pop(X : out Integer);
   
end Stack_ASM
