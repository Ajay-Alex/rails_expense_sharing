class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.string :from_name
      t.string :to_name
      t.float :amount
      t.timestamps
    end
  end
end
