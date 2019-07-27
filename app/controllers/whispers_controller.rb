class WhispersController < ApplicationController
  def index
    @user_data = User.where(email: "suneo@gmail.com")
    @user_name = @user_data[0][:name]
    @my_whisper_logs = WhisperLog.where(user_id: @user_data[0][:id])
  end

  def create
  end
end
