class Enum

	def initialize(s)
		(raise ArgumentError,"Argument needs to be a string") if !(s.is_a? String)
		s.gsub!(/[ \n\t\f\r]/,"")
		@items   = Hash.new
		@counter = 0
		elSep_R  = s.split(",")
		for row in elSep_R
			if row.match(/=/)==nil
				(raise ArgumentError,"Special characters are not allowed in an Enum item") if row.match(/[^[[:alpha:]]]/)!=nil
				@items[row] = @counter
				@counter+=1
			else
				elSep_E = row.split("=")
				(raise ArgumentError,"Special characters are not allowed in an Enum item") if elSep_E[0].match(/[^[[:alpha:]]]/)!=nil
				(raise ArgumentError,"Characters behind '=' have to be numeric") if elSep_E[1].match(/[^[0-9]]/)!=nil
				(raise ArgumentError,"Special characters are not allowed in an Enum item") if elSep_E[0].match(/[^[[:alpha:]]]/)!=nil
				@counter = elSep_E[1].to_i
				@items[elSep_E[0]] = @counter
				@counter+=1
			end
		end
	end
	
	attr_reader :items

	def [](val)
		return @items[val]
	end

end
