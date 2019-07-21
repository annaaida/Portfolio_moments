class RegistrationsController < Devise::RegistrationsController

	protected

		 def after_update_path_for(resource)
      	photographer_contact_path
     end
end
