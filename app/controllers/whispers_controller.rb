class WhispersController < ApplicationController
  before_action :set_id, only: [:edit, :update, :show, :destroy]
  def index
    @user_data = User.where(email: "suneo@gmail.com")
    @user_name = @user_data[0][:name]
    @whisper_logs = WhisperLog.all
    @whisper = WhisperLog.new()
  end

  def confirm
    @whisper = WhisperLog.new(whisper_params)
  end

  def create
    @whisper = WhisperLog.new(whisper_params)

    if params[:back]
      @whisper_logs = WhisperLog.all
      render :index
    elsif @whisper.save
      whisper_check(@whisper.save, "create")
    end

  end

  def edit
  end

  def update
    @whisper = WhisperLog.find(params[:id])
    whisper_check(@whisper.update(whisper_params), "update")
  end

  def show
  end

  def destroy
    @whisper = WhisperLog.find(params[:id])
    @whisper.destroy
    redirect_to whispers_path, notice:"ブログを削除しました"
  end

  private
  def whisper_params
    params.require(:whisper_log).permit(:id, :comment)
  end

  def whisper_check(check, name)
    if check
      case name
      when "create" then
      redirect_to whispers_path, notice: "コメントを追加しました"
      when "update" then
      redirect_to whispers_path, notice: "コメントを編集しました"
      end
    else
      redirect_to whispers_path, notice: "１〜140文字で入力してください"
    end
  end

  def set_id
    @whisper_log = WhisperLog.find(params[:id])
  end
end
