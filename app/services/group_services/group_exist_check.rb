class GroupServices::GroupExistCheck
  def initialize(name)
    @name=name
  end

  def call
    GroupRepo.new.exist(@name)
  end
end
