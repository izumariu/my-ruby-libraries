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

	def fork
		a_r = Array.new
		2.times{a_r << self}
		return a_r
	end

	def magnetize(item)
		!(item.is_a? Integer) ? false : ()
		item >= self.length ? item=-1 : ()
		a_r = Array.new
		
	end
end

class String
	def fork
		s_r = String.new
		2.times{s_r<<self}
		return s_r
	end

	def sprint
		print(self)
	end

	def sputs
		puts(self)
	end
end

class Integer
	def dsum
		i_r = 0
		self.to_s.split("").each{|x|i_r+=x.to_i}
		return i_r
	end

	def dprod
		i_r = 0
		self.to_s.split("").each{|x|i_r*=x.to_i}
		return i_r
	end
end
