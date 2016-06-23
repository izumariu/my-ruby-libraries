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
		a_r = Array.new
		a.each{|i| i!=n ? a_r << i : ()}
		return a_r
	end

	def cleanup
		a_r = Array.new
		self.each do |x|
			!(a_r.contains? x) ? a_r << x : ()
		end
		return a_r
	end

	def equalize(item)
		!(item.is_a? Integer) ? false : ()
		item >= self.length ? item=-1 : ()
		a_r = Array.new
		c = self[item]
		self.length.times{a_r.push c}
		return a_r
	end
end
