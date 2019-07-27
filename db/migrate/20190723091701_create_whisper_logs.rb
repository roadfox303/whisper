class CreateWhisperLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :whisper_logs do |t|

      t.timestamps
    end
  end
end
