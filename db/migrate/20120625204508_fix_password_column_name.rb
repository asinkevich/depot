class FixPasswordColumnName < ActiveRecord::Migration
  def up
    rename_column :users, :password_digets, :password_digest
  end

  def down
  end
end
