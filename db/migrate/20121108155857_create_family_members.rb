class CreateFamilyMembers < ActiveRecord::Migration
  def change
    create_table :family_members do |t|
      t.string :name
      t.references :person
      t.references :relation
      t.timestamps
    end
  end
end
