class ChengeColumnUserNameEmailId < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :user_name, :name
    rename_column :users, :user_email, :email
  end
end
