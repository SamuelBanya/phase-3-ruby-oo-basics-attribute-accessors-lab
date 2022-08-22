class Person
  # NOTE: This is the same as:
  # attr_writer(:name)
  attr_writer :name

  # This is the 'explicit method definition' version of the 'setter' method:
  # def name=(value)
  # @name = value
  # end

  # NOTE: This is the same as:
  # attr_reader(:name)
  attr_reader :name

  # This is the 'explicit method definition' version of the 'getter' method:
  # def name
  #   @name
  # end
end

class Person2
  # If we need BOTH a 'setter' and a 'getter' method, we can skip
  # 'attr_writer' and 'attr_reader', and just use 'attr_accessor'
  attr_accessor :name

  # By providing a custom 'setter' function, we can split the full_name into two parts
  # so that we don't have to create separate 'setter' functions for the 'first_name'
  # and 'last_name' instance variables:
  def name=(full_name)
    first_name, last_name = full_name.split()
    @first_name = first_name
    @last_name = last_name
  end

  # Here we are creating a custom 'getter' function to evaluate both instance variables
  # and use the string method, '.strip()' on it afterwards
  def name
    "#{@first_name} #{@last_name}".strip()
  end
end

jay_z = Person.new
jay_z.name = "Shawn Carter"
puts "jay_z.name: ", jay_z.name
