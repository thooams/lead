class PagesController < ApplicationController
  skip_before_action :authenticate_influencer!

  def home
    redirect_to campaigns_path if influencer_signed_in?
  end

end
