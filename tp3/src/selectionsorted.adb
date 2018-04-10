package body SelectionSorted
with SPARK_Mode
is

   procedure Swap(V : in out Vect; I, J : Natural ) is
      N: Integer := V(I);
   begin
      V(I) := V(J);
      V(J) := N;
   end Swap;


   function Min_Index(V: Vect) return Natural is
      N: Integer range V'range := V'First;
   begin
      if V'First < V'Last then
         for X in V'First + 1 .. V'Last loop
            if (V(X) < V(N)) then
               N := X;
            end if;
            pragma Loop_Invariant(for all J in V'First .. X => (V(N) <= V(J)));
         end loop;
      end if;
      return N;
   end Min_Index;

   procedure SelectionSort(V: in out Vect) is
      M: Natural;
   begin
      for I in V'Range loop
         M := Min_Index(V(I .. V'Last));
         Swap(V, I, M);
         pragma Loop_Invariant(for all J in V'First + 1 .. I => (V(J) >= V(J-1)));
         pragma Loop_Invariant(for all J in I .. V'Last => (V(J) >= V(I)));
      end loop;
   end SelectionSort;

end SelectionSorted;
