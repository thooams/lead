class IdentitiesController < ApplicationController
  skip_before_action :authenticate_consumer!, :only => :show
  #skip_authorize_resource :only => :show

  def show
    @identity = Identity.find_by(user_name: params[:user_name])
    @identity_presenter = IdentityPresenter.new(@identity)
  end
end
