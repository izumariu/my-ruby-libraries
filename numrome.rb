class NumRome
	def initialize(n)
		@combination = n
		counter = 1
		last_chr = String.new
		@combination.split("").each do |i|
			if i != last_chr
				counter = 1
			else
				counter += 1
			end
		end
	end
	
	@@nums = {
		"I" => 1,
		"V" => 5,
		"X" => 10,
		"L" => 50,
		"C" => 100,
		"D" => 500,
		"M" => 1000
	}
	
	def int
		counter = 0
		num = 0
		@combination.split("").each do |i|
			if (@combination.length-1)<=counter
				if @@nums[@combination[counter+1]] > @@nums[@combination[counter+1]]
					num+=(@@nums[@combination[counter+1]]-@@nums[@combination[counter]])
				end
			end
			counter += 1
		end
	end
end
