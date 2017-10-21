class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
          def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :career, :student, :password) }
              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :career, :identification,
                :student, :photo,  :password, :password_confirmation, :current_password) }
          end
          
  protected
    def after_sign_in_path_for(users)
      # request.env['omniauth.origin'] || stored_location_for(users) || root_path
      request.env['omniauth.origin'] || users_home_url
    end
end
