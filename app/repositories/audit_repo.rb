class AuditRepo
  def create(from_name,to_name,amount)
    Audit.create(:from_name=> from_name,:to_name=> to_name,:amount=> amount)
  end

  def exist(from_name,to_name)
    Audit.where(:to_name => to_name, :from_name => from_name).present?
  end

  def find_by_from_name_and_to_name(from_name,to_name)
    Audit.where(:to_name => to_name, :from_name => from_name)
  end
end
