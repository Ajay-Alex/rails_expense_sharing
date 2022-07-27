class GroupServices::AddGroup
  def initialize(name)
    @name=name
  end

  def call
    GroupRepo.new.create(@name)
  end
end
