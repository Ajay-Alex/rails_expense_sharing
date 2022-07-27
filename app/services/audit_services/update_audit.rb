class AuditServices::UpdateAudit
  def initialize(from,to,amount)
    @from_name=from
    @to_name=to
    @amount=amount
  end

  def call
    audits=AuditRepo.new.find_by_from_name_and_to_name(@from_name,@to_name)
    audits.each { |audit|
      audit.update(:from_name=> @from_name,:to_name=> @to_name,:amount=> audit.amount + @amount)
    }
  end
end
