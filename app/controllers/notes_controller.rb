class NotesController < ApplicationController
  before_action :set_user

  def index
  end

  def new
    @note = Note.new
  end

  def create
    @note = @user.notes.new(note_params)
    if @note.save
      redirect_to user_notes_path(@user), notice: "ノートが投稿できました"
    else
      @notes = @user.notes
      flash.now[:alert] = "ノートを入力してください"
      render :new
    end
  end

  private

  def note_params
    params.require(:note).permit(:date, :title, :quotation, :effort, :achievement, :todo, :free, :memo)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end
