class Array
	def contains?(thing)
		self.each do |i|
			if i == thing
			return true
			end
		end
		return false
	end
end
