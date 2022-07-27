class UserRepo
  def create(name,email,mobile,group)
    User.new(name: name,email: email,mobile: mobile,group: group).save
  end

  def find_by_name(name)
    User.find_by_name(name)
  end

  def find_by_group(group)
    User.where(:group => group)
  end

  def exist(name)
    User.where(name: name).present?
  end
end
