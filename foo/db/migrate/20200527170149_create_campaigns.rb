class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.string :brand_name
      t.string :hashtag
      t.string :starts_on
      t.string :stops_on
      t.string :banner_picture_url
      t.integer :state, default: 0

      t.timestamps
    end
  end
end
