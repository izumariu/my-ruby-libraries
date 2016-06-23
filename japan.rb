module Japan
	class Otaku
		#require '/home/sessho/rb-libs/japan.rb'
		def initialize(name,age)
			@name=name
			@age=age
			@fav=Array.new
			@hat=Array.new
			@fetish=String.new
		end
		
		attr_reader :fav
		attr_reader :hat
		attr_accessor :fetish
		
		private
		
		def arr_remove(a,n)
			!(a.is_a? Array) ? false : ()
			a_r = Array.new
			a.each{|i|i!=n ? a_r<<i : ()}
			return a_r
		end
		
		def arr_contains?(a,n)
			a.each do |i|
				if i==n
				return true
				end
			end
			return false
		end
		
		public
		
		def like(thing,prompt=false)
			@hat=arr_remove(@hat,thing) rescue nil
			@fav.push(thing) unless arr_contains? @fav,thing
			fav_expr = [
				"#{@name} ist jetzt #{thing} verfallen!",
				"#{@name} mag jetzt #{thing}!",
				"#{@name} und #{thing} passen jetzt gut zusammen."
			]
			puts fav_expr[Random.rand(0...fav_expr.length)] if prompt
		end
		
		def likes? (thing)
			arr_contains? thing ? true : false
		end
		
		def hate(thing,prompt = false)
			@fav=arr_remove(@fav,thing) rescue nil
			@hat.push(thing) unless arr_contains? @hat,thing
			hat_expr = [
				"#{@name} verabscheut jetzt #{thing}!",
				"#{@name} ist nicht mehr gut auf #{thing} zu sprechen.",
				"#{@name} mag #{thing} nicht..."
			]
			puts hat_expr[Random.rand(0...hat_expr.length)] if prompt
		end
		
		def forget(thing, prompt = false)
			@hat=arr_remove(@hat,thing) if (arr_contains? @hat,thing)
			@fav=arr_remove(@fav,thing) if (arr_contains? @fav,thing)
			forget_expr = [
				"#{@name} hat #{thing} vergessen...",
				"#{@name} weiß nicht mehr, was #{thing} ist.",
				"Was ist ein #{thing}? #{@name} weiß es nicht!"
			]
			puts forget_expr[Random.rand(0...forget_expr.length)] if prompt
		end
	
		def info
			info_expr = [
				"#{@name} ist ein Otaku im Alter von #{@age} Jahren!",
				"Otaku #{@name} ist #{@age} Jahre alt!",
				"Erst #{@age} Jahre und schon Otaku, das ist #{@name}."
			]
			puts info_expr[Random.rand(0...info_expr.length)]
		end
	end
end
