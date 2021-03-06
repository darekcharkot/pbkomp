class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

	protected
		def after_sign_in_path_for(resource)
			hardwares_path
		end

		def after_sign_out_path_for(resource)
			pages_offer_path
		end

		def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:nick])
  	end
end