-- Project Euler solutions in Lua.
-- Problem: https://projecteuler.net/problem=26
-- Author: Jeroen De Dauw
-- License: GNU GPL v2+

function find_repeating_part( str )
	for length=math.floor( string.len( str ) / 2 ), 1, -1 do
		charsRepeat = true
		position = 0
		base = string.sub( str, 1, length )

		repeat
			startPosition = position * length + 1
			position = position + 1
			endPosition = startPosition + length - 1

			part = string.sub( str, startPosition, endPosition );

			charsRepeat = string.sub( base, 1, string.len( part ) ) == part

		until not charsRepeat or endPosition > string.len( str )

		if charsRepeat then
			return length
		end
	end

	return 0
end


tests = {}

tests['1'] = 0
tests['11'] = 1
tests['111'] = 1
tests['110'] = 0
tests['1111'] = 2
tests['11111'] = 2
tests['11110'] = 0
tests['1110'] = 0
tests['1010'] = 2
tests['10101'] = 2
tests['10001'] = 0
tests['010'] = 0
tests['01'] = 0

for str, expected in pairs(tests) do
	actual = find_repeating_part( str )

	if actual == expected then
		error = ''
	else
		error = ' - ERROR'
	end

	print( str ..' - ' .. expected  .. ' - ' .. actual .. error )
end


for i=1,10,1 do

	str = string.sub( 1 / i, 3, 14 )
	print( str .. ' - ' .. find_repeating_part( str ) )

end
