class ChangeDatatypeUserIdOfWhisperLog < ActiveRecord::Migration[5.2]
  def change
    change_column :whisper_logs, :user_id, 'integer USING CAST(user_id AS integer)'
  end
end
