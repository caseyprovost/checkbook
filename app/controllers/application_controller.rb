class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_action_cable_identifier

  layout :find_layout, if: :devise_controller?

  include Pagy::Backend

  protected

  def find_layout
    if user_signed_in?
      'application'
    else
      'auth'
    end
  end

  def set_action_cable_identifier
    cookies.encrypted[:user_id] = current_user&.id
  end

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  def after_sign_up_path_for(resource)
    after_sign_in_path_for(resource)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:email, :username, :name, :password, :password_confirmation)
    end

    devise_parameter_sanitizer.permit(:sign_in) do |user_params|
      user_params.permit(:username, :password)
    end
  end
end
