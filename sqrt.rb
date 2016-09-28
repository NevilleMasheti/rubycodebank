def squareroot(n)

	guess=n.to_i/2.0
	diff=0.000000001
	stop=false
	
	while !stop
		if (((guess*guess)-n)>diff)
		refine(guess, n)
	   else
	   	stop=true
	   end
	end

	puts guess
end

def refine(guess, n)
	guess=0.5*(guess+(n/guess))
	puts guess
	
end




puts" Enter a number"
x=gets.chomp().to_i
squareroot(x)