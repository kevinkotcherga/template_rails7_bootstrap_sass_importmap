class ApplicationController < ActionController::Base
  protected

  def after_sign_in_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || request.referrer
  end

  def after_sign_out_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || request.referrer
  end
end
