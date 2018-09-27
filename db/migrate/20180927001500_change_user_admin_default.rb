class ChangeUserAdminDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:users, :admin, 0)
  end
end
