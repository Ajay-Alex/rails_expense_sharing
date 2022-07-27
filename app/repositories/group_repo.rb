class GroupRepo

  def create(name)
    Group.new(name).save
  end

  def exist(name)
    Group.where(name: name).present?
  end
end
