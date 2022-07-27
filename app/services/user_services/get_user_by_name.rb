class UserServices::GetUserByName
  def initialize(name)
    @name=name
  end

  def call
    User.find_by_name(@name)
  end
end
