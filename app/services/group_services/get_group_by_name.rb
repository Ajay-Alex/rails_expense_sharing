class GroupServices::GetGroupByName
  def initialize(name)
    @name=name
  end

  def call
    GroupRepo.new.find_by_name(@name)
  end
end
