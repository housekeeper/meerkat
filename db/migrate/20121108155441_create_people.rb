class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :title
      t.datetime :dob
      t.text :background
      t.timestamps
    end
  end
end
