class UserServices::GetUsersByGroup
  def initialize(group)
    @group=group
  end

  def call
    UserRepo.find_by_group(@group)
  end
end
x