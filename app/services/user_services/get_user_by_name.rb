class UserServices::GetUserByName
  def initialize(name)
    @name=name
  end

  def call
    UserRepo.find_by_name(@name)
  end
end
