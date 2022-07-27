class UserServices::GetUsersByGroup
  def initialize(group)
    @group=group
  end

  def call
    User.where(:group => @group)
  end
end
