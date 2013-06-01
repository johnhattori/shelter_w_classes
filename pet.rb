class Pet
  attr_accessor :name, :type, :sex, :age, :owner, :toys

  def initialize(name, type, sex, age, toys)
    @name = name
    @type = type
    @sex = sex
    @age = age
    @toys = toys
  end

  def available?
    self.owner.nil?
  end

  def to_s
    "#{name} is a #{type} who is a #{sex} and is #{age} years old."
  end
end

