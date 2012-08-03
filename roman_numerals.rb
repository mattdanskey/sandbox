#This program parses roman numerals.

def numeral numerals
  numhash = {"I" => 1, "V" => 5, "X" => 10}
  transposed = []
  
  numerals.each_char do |char|
    transposed << numhash[char]
  end
  if transposed.length == 1
    puts transposed[0]
  else
    k = transposed.length
    for i in 1..k
      j = i-1
      if transposed[-i] == transposed[-j]
        transposed[-i] += transposed[-j]
	transposed.delete_at(-j)
      end
    end

    while transposed.length > 1
      if transposed[-1] > transposed[-2]
        transposed[-2] = transposed [-1] - transposed[-2]
        transposed.delete_at(-1)
      else
        transposed[-2] += transposed[-1]
	transposed.delete_at(-1)
      end
    end
    puts transposed[0]
  end
end

numeral("XIV")
numeral("III")
numeral("V")
numeral("IV")
numeral("VI")
