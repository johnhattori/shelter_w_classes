class Client
	attr_accessor :name, :sex, :age, :pet

	def initialize(name, sex, age, pet = nil)
		@name = name
    @sex = sex
    @age = age
    @pet = pet
  end

  def to_s
    "The client #{@name} is a #{@sex} age #{@age} who owns #{@pet}"
  end
end