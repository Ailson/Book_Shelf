class UserSession 
  
  def initialize
    @current = Person.first
  end

  def current_user
    @current
  end
end
