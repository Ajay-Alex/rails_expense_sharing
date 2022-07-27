class GroupServices::AddGroup
  def initialize(name)
    @name=name
  end

  def call
    Group.new(params.permit(:name)).save
  end
end
