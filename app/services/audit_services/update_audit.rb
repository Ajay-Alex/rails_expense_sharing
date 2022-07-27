class AuditServices::UpdateAudit
  def initialize(from,to,amount)
    @from_name=from
    @to_name=to
    @amount=amount
  end

  def call
    audits=AuditRepo.new.find_by_from_name_and_to_name(@from_name,@to_name)
    audits.each { |audit|
      AuditRepo.new.update(audit,@from_name,@to_name,@amount)
    }
  end
end
