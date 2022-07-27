class UserServices::AddUser
  def initialize(name,email,mobile,group)
    @name=name
    @email=email
    @mobile=mobile
    @group=group
  end

  def call
    UserRepo.new.create(@name,@email,@mobile,@group)
  end
end
