class AddColumnUsersUserId < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_id, :string, after: :updated_at
  end
end
