class AuditServices::UpdateAudit
  def initialize(from,to,amount)
    @from_name=from
    @to_name=to
    @amount=amount
  end

  def call
    audits=Audit.where(:to_name => @to_name, :from_name => @from_name)
    audits.each { |audit|
      audit.update(:from_name=> @from_name,:to_name=> @to_name,:amount=> audit.amount + @amount)
    }
  end
end
