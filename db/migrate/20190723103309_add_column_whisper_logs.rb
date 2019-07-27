class AddColumnWhisperLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :whisper_logs, :user_id, :string
    add_column :whisper_logs, :comment, :text
  end
end
