class UserSession 
  
  def initialize
    @current = Person.first(1)
  end

  def self.current
    @current
  end
end
