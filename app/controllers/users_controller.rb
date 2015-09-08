class UsersController < ApplicationController
	
  def new
    @user = User.new
  end

  def create
    @user = User.new(team_params)
    if @user.save
      user.add_creator_to_team(params[:user][:user_id], @user)
      redirect_to 'home#show'
    else
      render :action => 'new'
    end
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    if @user.update_attributes params[:post]
      redirect_to teams_path
    else
      render :action => :edit
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to teams_path
  end

  def show
    @user = User.find params[:id]
  end

  def team_params
  	params.require(:user).permit(:name, :description)
  end

end
