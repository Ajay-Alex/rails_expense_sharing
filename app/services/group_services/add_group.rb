class GroupServices::AddGroup
  def initialize(name)
    @name=name
  end

  def call
    GroupRepo.create(name)
  end
end
