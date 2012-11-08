class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.references :package
      t.string :name 
      
      t.timestamps
    end
  end
end
