class IdentitiesController < ApplicationController
  skip_before_action :authenticate_influencer!, :only => :show
  #skip_authorize_resource :only => :show

  def show
    @identity = Identity.find(params[:id])
    @identity_presenter = IdentityPresenter.new(@identity)
  end
end
