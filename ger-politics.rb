class Politicians
	def initialize(name, party)
		@name = name
		@party = party
		party.downcase=="afd"||(name.downcase=="seehofer"||name.downcase=="horst seehofer") ? (puts "NoRefugeesError: #{name} is against refugees";@name,@party=nil;@refugees=false) : (@refugees=true)
		return nil if !@refugees
	end
end
