class AuditServices::AddAudit
  def initialize(user_list,user,amount)
    @user_list=user_list
    @user=user
    @amount=amount
  end

  def call
    size=@user_list.length
    @user_list.each { |user|
      if user.name != @user
        if !AuditServices::AuditExistCheck.new(user.name,@user).call
          AuditRepo.new.create(user.name,@user,@amount/size)
        else
          AuditServices::UpdateAudit.new(user.name,@user,@amount/size).call
        end
      end
    }
  end
end
