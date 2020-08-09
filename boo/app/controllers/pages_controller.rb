class PagesController < ApplicationController
  skip_before_action :authenticate_influencer!

  def home
    redirect_to campaigns_path if influencer_signed_in?
  end

  def profile
    # Monkey Patch
    # TODO: Remove "Identity.first" When omniauth will work
    @identity_presenter = IdentityPresenter.new(current_influencer&.identity || Identity.first)
    render "identities/show"
  end
end
