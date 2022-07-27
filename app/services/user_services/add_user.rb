class UserServices::AddUser
  def initialize(name,email,mobile,group)
    @name=name
    @email=email
    @mobile=mobile
    @group=group
  end

  def call
    user = User.new(name: @name,email: @email,mobile: @mobile,group: @group)
    user.save
  end
end
