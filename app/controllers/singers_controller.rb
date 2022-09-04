class SingersController < ApplicationController
  def index
    @singers = Singer.all
  end

  def create
    @singer = Singer.new(singer_params)
    @singer.save!
    redirect_to singers_path
  end

  def show
    @singer = Singer.find(params[:id])
  end

  def edit
    @singer = Singer.find(params[:id])
  end

  private
  
  def singer_params
    params.require(:singer).permit(:first_name, :last_name, :age, :nick_name, :profile_picture)
  end
end
