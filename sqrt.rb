def squareroot(n, diff)
	guess=n/2.0
	
	while(((guess*guess)-n)>diff)
		guess = refine(guess, n)   
	end

	puts guess
end

def refine(guess, n)
	(guess+(n/guess))/2
end

squareroot(16, 0.0000001)

