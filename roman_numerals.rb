#This method parses Roman numerals.

def parse_numeral numerals
  numhash = {
	    "I" => 1, 
	    "V" => 5, 
	    "X" => 10,
	    "L" => 50,
	    "C" => 100,
	    "D" => 500,
	    "M" => 1000
	    }
  numarray = []
  
  numerals.each_char do |char|
    numarray << numhash[char]
  end
  if numarray.length == 1 #Nothing fancy needed with just one numeral
    puts numarray[0]
  else
    # Combine all similar adjacent numerals using regexes
    numhash.each do |numer|
	a = /#{numer}{2,}/ =~ numerals
	unless a.nil?
	    b = numerals.match /#{numer}{2,}/
	    c = b[0].length #how many of the same numeral are in a row
	    numarray[a] = numarray[a] * c
	    numarray.slice!(a+1,c-1)
	end
    end
    
    # Add together all values according to the rules of roman numerals
    while numarray.length > 1
      if numarray[-1] > numarray[-2] # ex. IV is evaluated 5 - 1
        numarray[-2] = numarray [-1] - numarray[-2]
        numarray.delete_at(-1)
      else
        numarray[-2] += numarray[-1]
	numarray.delete_at(-1)
      end
    end
    puts numarray[0]
  end
end

parse_numeral("XIV")
parse_numeral("III")
parse_numeral("V")
parse_numeral("IV")
parse_numeral("VI")
