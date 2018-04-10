package SelectionSorted
with SPARK_Mode
is

   type Vect is array (Natural range <>) of Integer;

   procedure Swap(V : in out Vect; I, J : Natural)
     with
       pre => V'First < V'Last and I in V'Range and J in V'Range,
       post => V = V'Old'Update(I => V'Old(J), J => V'Old(I));

   function Min_Index(V: Vect) return Natural
     with
       pre => V'First <= V'Last,
       post => Min_Index'Result in V'Range
       and (for all x in V'Range => (V(Min_Index'Result) <= V(x)));

   procedure SelectionSort(V: in out Vect)
     with
       pre => V'First < V'Last,
       post => (for all X in V'First .. (V'Last - 1) => (V(X) <= V(X + 1)));

end SelectionSorted;
