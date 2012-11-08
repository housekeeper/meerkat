class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.references :package
      t.references :account
      t.timestamps
    end
  end
end
