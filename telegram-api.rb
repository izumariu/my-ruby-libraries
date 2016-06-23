module TelegramAPI
	
	require 'net/http'
	require 'json'
	
	class Bot
	
		def initialize(token)
			@token = token
		end
		
		public
		
		def getUpdates
			updates_json = netGet("https://api.telegram.org/bot#{@token}/getUpdates")
			updates_json["ok"] ? updates_json["result"] : nil
		end
		
		def sendMessage(message, chatId)
			netGet("https://api.telegram.org/bot#{@token}/sendMessage?chat_id=#{chatId}&text=#{message}")
		end
		
		private
		
		def netGet(url)
			JSON.parse(Net::HTTP.get(URI(url)))
		end
		
	end

	def helloworld
		puts "Hello, world!"
	end
end
