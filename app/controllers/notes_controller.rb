class NotesController < ApplicationController
  before_action :set_user

  def index
    @note = Note.new
    @notes = @user.notes.order(id: "DESC")
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

  def edit
    @note = @user.notes.find(params[:id])
  end

  def update
    @note = @user.notes.find(params[:id])
    if @note.update(note_params)
      redirect_to user_notes_path(current_user.id), notice: "ノートを更新しました"
    else
      render :edit
    end
  end

  def destroy
    @note = @user.notes.find(params[:id])
    @note.destroy
    redirect_to user_notes_path, notice: "ノートを削除しました"
  end

  private

  def note_params
    params.require(:note).permit(:date, :title, :quotation, :effort, :achievement, :todo, :free, :memo)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end
