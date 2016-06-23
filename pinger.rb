module Pinger
	def Pinger.waitForResponse(url)
		c=0
		require 'net/http'
		k=Thread.new{sleep 10;puts "===> Timeout";p.kill;t.kill;k.kill}
		t=Thread.new{loop{sleep 0.001;c+=1}}
		p=Thread.new{Net::HTTP.get(URI(url));k.kill;t.kill;puts "Got response from #{url} in #{c.to_s} ms";p.kill}
		k.join
	end
end
