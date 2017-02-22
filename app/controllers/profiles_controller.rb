class ProfilesController < ApplicationController

  #before_action :authenticate_user!, except: [:index]
  before_action :find_profile, only: [ :show, :edit, :update, :destroy]

  def index
    @profiles = Profile.all.paginate(page: params[:page], per_page: 5)
  end

  def show

  end

  def new
    @profile = Profile.new
  end

  def add
  end

  def edit
  end

  def create
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.json { head :no_content }
        format.js
        format.html do
          redirect_to '/'
        end
      else
        format.json { render json: @profile.errors.full_messages,
                             status: :unprocessable_entity }
      end

    end
  end

  def destroy
    @profile.destroy

    respond_to do |format|
      format.js
      format.html { redirect_to profiles_url }
      format.json { head :no_content }
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :birthday, :biography, :user_id, :avatar, :profile_id)
  end

  def find_profile
    @profile = Profile.find(params[:id])
  end

end