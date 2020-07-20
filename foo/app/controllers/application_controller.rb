class ApplicationController < ActionController::Base
  prepend_view_path Rails.root.join("app/frontend")
  # Before Actions
  before_action :authenticate_consumer!, unless: :devise_controller?

  def after_sign_in_path_for(consumer)
    campaigns_path
  end

end
