-- Project Euler solutions in Lua.
-- Problem: https://projecteuler.net/problem=25
-- Author: Jeroen De Dauw
-- License: GNU GPL v2+

-- This code works for non-huge numbers. 1000 digit numbers are huge. So this does not actually solve problem 25 yet.
digits = 10

function fiboGen()
	a, b = 0, 1
	return coroutine.wrap(function ()
		while true do
			c = a
			a, b = b, a + b
			coroutine.yield( c )
		end
	end)
end

fibo = fiboGen()

repeat
	nr = fibo()
	print( nr )
until string.len( nr ) >= digits


print( string.format( "%s has %s digits", nr, string.len( nr ) ) )