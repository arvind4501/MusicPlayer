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
  def update

  end

  private
  
  def singer_params
    params.require(:singer).permit(:first_name, :last_name, :age, :nick_name)
  end
end
