local Hamming = {}

function Hamming.compute(a,b)
   local distance = 0;
   if ( a == b ) then
      distance = 0;
   elseif ( string.len(a) ~= string.len(b) ) then
      distance = -1;
   else
      for i = 1, string.len(a) do
         if ( string.sub(a, i, i) ~= string.sub(b, i, i) ) then
            distance = distance + 1
         end
      end
   end
   return distance;
end

return Hamming
