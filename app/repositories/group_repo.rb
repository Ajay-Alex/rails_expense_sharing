class GroupRepo

  def initialize
    super
  end

  def find_by_name(name)
    Group.find_by_name(name)
  end

  def create(name)
    Group.new(name).save
  end

  def exist(name)
    Group.where(:name=> name).present?
  end
end
