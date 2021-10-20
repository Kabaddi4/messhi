class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resources)
    post_images_path
  end

  Refile.secret_key = "088342f68f228552a1ae00a6a8411a2c76b7e233281606255835f831d431e7b10f4e8ef6c99d47b0743828d02a46cfa03c832a8572c9eecf1e1f768eb76246d8"
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
