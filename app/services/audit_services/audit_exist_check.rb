class AuditServices::AuditExistCheck
  def initialize(from_name,to_name)
    @from_name=from_name
    @to_name=to_name
  end

  def call
    AuditRepo.new.exist(@from_name,@to_name)
  end
end
