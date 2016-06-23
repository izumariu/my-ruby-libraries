class Array
	def contains?(thing)
		self.each do |i|
			if i == thing
			return true
			end
		end
		return false
	end

	def remove(thing)
		!(self.is_a? Array) ? false : ()
		a_r = Array.new
		a.each{|i|i!=n ? a_r<<i : ()}
		return a_r
	end
end
