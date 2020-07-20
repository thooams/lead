class CreateIdentities < ActiveRecord::Migration[6.0]
  def change
    create_table :identities do |t|
      t.references :influencer, foreign_key: true
      t.string :user_name
      t.string :provider
      t.string :uid
      t.string :access_token
      t.string :profile_pict
      t.integer :number_of_followers, default: 0
      t.string :link

      t.timestamps
    end
  end
end
