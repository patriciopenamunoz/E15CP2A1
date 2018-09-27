class ChangeUserAdminDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:users, :admin, true)
  end
end
