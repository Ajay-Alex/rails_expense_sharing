class GroupServices::GroupExistCheck
  def initialize(name)
    @name=name
  end

  def call
    GroupRepo.exist
  end
end
