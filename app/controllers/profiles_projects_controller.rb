class ProfilesProjectsController < ApplicationController

  def create
  @profiles_projects = _current_profile.profiles_projects.new(:project_id => params[:project_id])

  if @profiles_projects.save
    render status: 201, json: @profiles_projects
  end
end

  private

  def _current_profile
    @current_profile = current_user.profile
  end
end
