class GroupServices::GroupExistCheck
  def initialize(name)
    @name=name
  end

  def call
    return Group.where(name: @name).present?
  end
end
