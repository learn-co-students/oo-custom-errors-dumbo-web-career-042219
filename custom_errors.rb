class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != person
      raise PartnerError
    else
      person.partner = self
    end
  end

end

class PartnerError < StandardError
  def message
    "you must give the get_married method an arguement of an instance of the last person class!"
  end
end
beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




