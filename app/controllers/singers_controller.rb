class SingersController < ApplicationController
  def index
    @singers = Singer.all
  end

  def create
    @singer = Singer.new(singer_params)

    if @singer.save
      redirect_to @singer
    else
      render :new, notice: 'There was a issue while creating the singer'
    end
  end

  def show
    @singer = Singer.find(params[:id])
  end

  def new
    @singer = Singer.new
  end

  def edit
    @singer = Singer.find(params[:id])
  end

  def update
    @singer = Singer.find(params[:id])

    if @singer.save
      redirect_to @singer
    else
      render :new, notice: 'There was a issue while updating the singer'
    end
  end

  def destroy
    @singer = Singer.find(params[:id])
    @singer.destroy

    redirect_to root_path, notice: 'The singer was successfully deleted'
  end

  private
  
  def singer_params
    params.require(:singer).permit(:first_name, :last_name, :age, :nick_name, :profile_picture)
  end
end
