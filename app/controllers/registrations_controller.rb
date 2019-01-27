class RegistrationsController < Devise::RegistrationsController
    respond_to :json
  
    def create
        puts sign_up_params
      build_resource(sign_up_params)
      puts resource
      resource.save
      render_resource(resource)
    end
  end