class UserServices::UserExistCheck
  def initialize(name)
    @name=name
  end
  def call
    return User.where(name: @name).present?
  end
end
