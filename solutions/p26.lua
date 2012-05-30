-- Project Euler solutions in Lua.
-- Problem: https://projecteuler.net/problem=26
-- Author: Jeroen De Dauw
-- License: GNU GPL v2+

function find_repeating_part( str )
	for length=math.floor( string.len( str ) ) / 2, 2, -1 do



		if false then
			return length
		end
	end

	return 0
end


for i=1,1000,1 do

	str = string.sub( 1 / i, 3, 14 )
	print( str .. ' - ' .. find_repeating_part( str ) )

end
