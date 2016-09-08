module Binaries
	def Binaries.OR(x,y)
		(!(x.is_a? Integer))||(!(y.is_a? Integer)) ? false : ()
		to_bool = lambda {|a|a=="1"||a=="0" ? (a=="1" ? true : false) : (nil)}
		to_num  = lambda {|a|a ? "1" : "0"}
		x_b = x.to_s(2).split("")
		y_b = y.to_s(2).split("")
		case x_b.length <=> y_b.length
			when -1
				(y_b.length-x_b.length).times{x_b.unshift("0")}
			when 1
				(x_b.length-y_b.length).times{y_b.unshift("0")}
		end
		puts x_b.length
		puts y_b.length
		z_b = Array.new;x_b.length.times{|i|z_b.push ((x_b[i]=="1"||y_b[i]=="1") ? "1" : "0") }
		z_s = String.new;z_b.each{|i|z_s<<i}
		z = z_s.to_i(2)
		return z
	end
end
