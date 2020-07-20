class ApplicationController < ActionController::Base
  prepend_view_path Rails.root.join("app/frontend")
  # Before Actions
  before_action :authenticate_influencer!, unless: :devise_controller?

  def after_sign_in_path_for(influencer)
    campaigns_path
  end
end
