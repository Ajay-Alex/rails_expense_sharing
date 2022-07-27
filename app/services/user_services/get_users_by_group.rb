class UserServices::GetUsersByGroup
  def initialize(group)
    @group=group
  end

  def call
    UserRepo.new.find_by_group(@group)
  end
end
