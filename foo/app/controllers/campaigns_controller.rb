class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all.select { |c| c.ongoing? }.sort_by{ |c| c.stops_on }.reverse
  end
end
