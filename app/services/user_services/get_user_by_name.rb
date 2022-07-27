class UserServices::GetUserByName
  def initialize(name)
    @name=name
  end

  def call
    UserRepo.new.find_by_name(@name)
  end
end
