class UserServices::UserExistCheck
  def initialize(name)
    @name=name
  end
  def call
    UserRepo.exist(@namez)
  end
end
