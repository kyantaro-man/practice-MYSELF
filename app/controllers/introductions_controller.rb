class IntroductionsController < ApplicationController
  before_action :set_user

  def index
    @introductions1 = Introduction.where(user_id: current_user.id).first(3)
    @introductions2 = Introduction.where(user_id: current_user.id).limit(2).offset(3)
    @introductions3 = Introduction.where(user_id: current_user.id).limit(2).offset(5)
  end

  def new
    @introduction = Introduction.new
  end

  def create
    @introduction = @user.introductions.new(introduction_params)
    if @introduction.save
      redirect_to user_introductions_path(@user), notice: "自己紹介文が作成できました"
    else
      @introductions = @user.introductions
      flash.now[:alert] = "自己紹介文を入力してください"
      render :new
    end
  end

  def edit
    @introduction = Introduction.where(user_id: current_user.id).first
  end

  def update
  end

  private

  def introduction_params
    params.require(:introduction).permit(:title, :content)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
  
end
