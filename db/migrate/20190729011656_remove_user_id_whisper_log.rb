class RemoveUserIdWhisperLog < ActiveRecord::Migration[5.2]
  def change
    remove_column :whisper_logs, :user_id, :integer
  end
end
