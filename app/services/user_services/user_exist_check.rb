class UserServices::UserExistCheck
  def initialize(name)
    @name=name
  end
  def call
    UserRepo.new.exist(@name)
  end
end
