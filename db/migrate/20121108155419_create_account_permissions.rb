class CreateAccountPermissions < ActiveRecord::Migration
  def change
    create_table :account_permissions do |t|

      t.timestamps
    end
  end
end
