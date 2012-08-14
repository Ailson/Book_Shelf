class UserSession 
  
  def initialize
    @current = User.first
  end

  def current_user
    @current
  end
end
