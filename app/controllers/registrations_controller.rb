class RegistrationsController < Devise::RegistrationsController

	protected

	   def after_inactive_sign_up_path_for(resource)

		   if User.find(resource.id).photographer.present?
		     new_photographer_path
		   else
		  	 users_root_path
	   		end

     end
end
