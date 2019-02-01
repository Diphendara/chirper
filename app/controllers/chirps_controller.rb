class ChirpsController < ApplicationController
  def index
    @chirps = Chirp.all
  end

  def new
    @chirp = Chirp.new
  end

  def create
    @chirp = Chirp.create(chirp_params)
    @chirp.user_id = current_user.id
    @chirp.save
    if !@chirp.errors.any? 
      redirect_to chirps_path
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
    @chirp = Chirp.find(params[:id])
    @chirp.destroy
    redirect_to chirps_path
  end

  def chirp_params
    params.require(:chirp).permit(:body, :user_id)
  end
end
