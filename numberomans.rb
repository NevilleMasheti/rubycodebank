#Converters arabic numbers to roman numbers
def converter(num)
	numi=num.to_i
	nums=num.to_s
	num_arr=Array.new()
	rom_arr=Array.new()

	thousands=0
	hundreds=0
	tens=0
	units=0

	nums.each_char do |c|
		num_arr<<c
	end

	if(num_arr.length>3)
	 thousands=(numi/1000).to_i
	 k= "M"*thousands
	 rom_arr<<k
	end

	if(num_arr.length>2)
	 hundreds= ((numi-(thousands*1000))/100).to_i
	 if(hundreds==9)
	  k="CM"
	  rom_arr<<k
	 elsif(hundreds>5 && hundreds<9)
	  k="D"+"C"*(hundreds-5)
	  rom_arr<<k
	 elsif(hundreds==5)
	  k="D"
	  rom_arr<<k
	 elsif(hundreds==4)
	  k="CD"
	  rom_arr<<k
	 else
	  k="C"*hundreds
	  rom_arr<<k
     end
    end

    if(num_arr.length>1)
    	tens= ((numi-(thousands*1000 + hundreds*100))/10).to_i
    	if(tens==9)
    		k="XC"
    		rom_arr<<k
    	elsif(tens>5 && tens<9)
    	 	k="L"+"X"*(tens-5)
    	 	rom_arr<<k
    	elsif(tens==5)
    		rom_arr<<"L"
    	elsif(tens==4)
    	    rom_arr<<"XL"
    	else
    		k="X"*tens
    		rom_arr<<k
    	end
    end

    if(num_arr.length>0)
    	units=((numi-(thousands*1000+hundreds*100+tens*10)).to_i)
    
    	if(units==9)
    	  rom_arr<<"IX"
    	elsif(units>5 && units<9)
    	  k="V"+"I"*(units-5)
    	  rom_arr<<k
    	elsif(units==5)
    	  rom_arr<<"V"
    	elsif(units==4)
    	  rom_arr<<"IV"
    	else
    	  k="I"*units
    	  rom_arr<<k
    	end
    end

    romanstring=rom_arr.join()

	puts "The number you entered is #{nums} and its roman equivalent is #{romanstring}"
end

puts "Enter an arabic number"
num=gets.chomp()
converter(num)
