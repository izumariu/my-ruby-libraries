class AdvancedArray
	def initialize
		@array = Array.new
	end

	attr_accessor :array
	
	def contains?(thing)
		@array.each do |i|
			if i == thing
			return true
			end
		end
		return false
	end
end
