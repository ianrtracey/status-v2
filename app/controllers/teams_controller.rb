class TeamsController < ApplicationController
  
  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      Team.add_creator_to_team(params[:team][:user_id], @team)
      redirect_to 'home#show'
    else
      render :action => 'new'
    end
  end

  def edit
    @team = Team.find params[:id]
  end

  def update
    @team = Team.find params[:id]
    if @team.update_attributes params[:post]
      redirect_to teams_path
    else
      render :action => :edit
    end
  end

  def destroy
    @team = Team.find params[:id]
    @team.destroy
    redirect_to teams_path
  end

  def show
    @team = Team.find params[:id]
  end

  def team_params
  	params.require(:team).permit(:name, :description)
  end

end
