class Shelter
	attr_accessor :address, :pet, :client

	def initialize(address, pet, client)
		@address = address
		@pet = {}
    @client = {}
	end

	def to_s
		"The client #{@name} is a #{sex} age #{@age}. They own the pt #{@pet}"
	end

end