# Custom Controller for prevent from registration in production environment

class RegistrationsController < Devise::RegistrationsController
  # Show flash notification when someone trying to register new user
  def new
    flash[:info] = 'Registrations are not open yet, but please check back soon'
    redirect_to root_path
  end

  # Show flash notification when someone trying to register new user
  def create
    flash[:info] = 'Registrations are not open yet, but please check back soon'
    redirect_to root_path
  end
end