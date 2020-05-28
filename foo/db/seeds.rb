Consumer.destroy_all

Campaign.destroy_all
campaigns_params = [
  {:state => "ongoing", :hashtag=>"#MonGesteVegetalCarrefour", :brand_name=>"Carrefour ", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/192/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#HappyFibre", :brand_name=>"Orange", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/210/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#ShadeMatchingTour", :brand_name=>"Lancôme", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/349/file.png"},
  {:state => "ongoing", :hashtag=>"#DelicieuxAvecHelloFresh", :brand_name=>"Hello Fresh", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/366/file.jpeg"},
  {:state => "ongoing", :hashtag=>"#Boomtrix", :brand_name=>"Goliath", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/242/front-page-image.png"},
  {:state => "ongoing", :hashtag=>"#DotYourWorld", :brand_name=>"Lego Dots", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/368/file.jpeg"},
  {:state => "ongoing", :hashtag=>"#IAMgourmand", :brand_name=>"IAMS", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/296/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#CashisBack", :brand_name=>"Poulpeo", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/370/file.jpeg"},
  {:state => "ongoing", :hashtag=>"#AsseyezVousAvecKapten", :brand_name=>"Kapten", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/357/file.jpeg"},
  {:state => "ongoing", :hashtag=>"#DoneWithDuluxValentine", :brand_name=>"dulux valentine", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/284/front-page-image.png"},
  {:state => "in_definition", :hashtag=>"#BiscuitsParty", :brand_name=>"Bouvard", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/173/front-page-image.jpg"},
  {:state => "in_definition", :hashtag=>"#MonCoolFruits", :brand_name=>" Vitabio Cool", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/364/file.jpeg"},
  {:state => "in_definition", :hashtag=>"#PlaisirDeLaMer", :brand_name=>"Fleury Michon", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/223/front-page-image.jpg"},
  {:state => "in_definition", :hashtag=>"#NerfSuperSoaker", :brand_name=>"NerfFrance", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/282/front-page-image.png"},
  {:state => "in_definition", :hashtag=>"#TousDerrierePoulain", :brand_name=>"Le Chocolat Poulain", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/215/front-page-image.jpg"},
  {:state => "in_definition", :hashtag=>"#SoireePastaavecGalbani", :brand_name=>"Galbani", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/257/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#MonEteBahier", :brand_name=>"Bahier", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/220/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#LesAteliersDuCalme", :brand_name=>"Les ateliers du calme", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/274/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#GenerationsConnectees", :brand_name=>"Doro", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/237/front-page-image.png"},
  {:state => "ongoing", :hashtag=>"#JeNaiJamais", :brand_name=>"Coucoumba Editions", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/253/front-page-image.png"},
  {:state => "ongoing", :hashtag=>"#WeDoWhatWeLove", :brand_name=>"Gardena", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/288/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#simplementsiggis", :brand_name=>"siggi's", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/290/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#JuneVeggie", :brand_name=>"June", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/267/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#AnniversaireNerf", :brand_name=>"NerfFrance", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/269/front-page-image.png"},
  {:state => "ongoing", :hashtag=>"#LesDinersQuitoque", :brand_name=>"Quitoque", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/225/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#HueOutdoor", :brand_name=>"HUE", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/313/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#DefisAlvityl", :brand_name=>"Alvityl", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/227/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#LesDinersQuitoque", :brand_name=>"Quitoque", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/235/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#BaraMozza", :brand_name=>"Galbani", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/298/front-page-image.png"},
  {:state => "ongoing", :hashtag=>"#ElectroluxParty", :brand_name=>"Electrolux", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/304/front-page-image.jpg"},
  {:state => "completed", :hashtag=>"#KaptenNoel", :brand_name=>"Kapten", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/339/front-page-image.jpg"},
  {:state => "completed", :hashtag=>"#HueSync", :brand_name=>"HUE", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/307/front-page-image.png"},
  {:state => "completed", :hashtag=>"#LesAteliersDuCalme", :brand_name=>"Les ateliers du calme", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/309/front-page-image.png"},
  {:state => "completed", :hashtag=>"#GouterKidifruit", :brand_name=>"Andros Kidifruit", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/261/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#BrunchPaysanBreton", :brand_name=>"Paysan Breton", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/317/front-page-image.png"},
  {:state => "ongoing", :hashtag=>"#panasonicOLEDexperience", :brand_name=>"Panasonic", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/319/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#SaupiquetApero", :brand_name=>"Saupiquet", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/321/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#GoForTheExtraordinaire", :brand_name=>"Perrier", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/271/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#GouterPtitsDonutsWhaou", :brand_name=>"Whaou!", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/323/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#DuoDaventuriers", :brand_name=>"Babybio", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/325/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#FaconBrasserieChez", :brand_name=>"President", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/329/front-page-image.png"},
  {:state => "ongoing", :hashtag=>"#HalloweenTetesBrulees", :brand_name=>"Tetes Brulees", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/185/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#100activitesSimplissime", :brand_name=>"Hachette", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/331/front-page-image.jpg"},
  {:state => "ongoing", :hashtag=>"#MonDuoSubito", :brand_name=>"Quicook", :banner_picture_url=>"https://voo-prod.s3.amazonaws.com/uploads/image/file/333/front-page-image.jpg"}
]
campaigns_params.each_with_index { |campaign_params, index| Campaign.create!(campaign_params.merge({ starts_on: index.days.ago, stops_on: index.days.since }))}

Identity.destroy_all
identities_params = [
  {:user_name=>"@laurajmuro", :profile_pict=>"https://scontent-lht6-1.xx.fbcdn.net/v/t51.2885-15/97144405_265393797849676_7489403987527991296_n.jpg?_nc_cat=105&_nc_sid=86c713&_nc_eui2=AeGiCeaO5GejZbyYK2k9rYzNrBrbBmP2RD-sGtsGY_ZEP3x3g1qlU6erhv4vJQnJVu8&_nc_oc=AQlvuveLtRAX5O-T9O4Y3sOpJ_R-zoqpwL-8NQCHGaKESDEALzSvDYr_SLhZ4DmzHeo&_nc_ht=scontent-lht6-1.xx&oh=3ff405085546d6e9529cf20a8db9894d&oe=5EF166D7", :link=>"https://www.instagram.com/laurajmuro", :number_of_followers=>16330},
  {:user_name=>"@nena_blady_and_cloe", :profile_pict=>"https://scontent-lhr8-1.xx.fbcdn.net/v/t51.2885-15/45378857_724908934546451_7051190918153502720_n.jpg?_nc_cat=109&_nc_sid=86c713&_nc_ohc=5I4tjuOqBDQAX80rlj_&_nc_ht=scontent-lhr8-1.xx&oh=8ddb217a14e3885074463f05611564fe&oe=5EF4DB26", :link=>"https://www.instagram.com/nena_blady_and_cloe", :number_of_followers=>46},
  {:user_name=>"@rebecamarin02_", :profile_pict=>"https://scontent-lhr8-1.xx.fbcdn.net/v/t51.2885-15/80307183_851592422009196_2996220918570680320_n.jpg?_nc_cat=107&_nc_sid=86c713&_nc_ohc=A9hFbH2c3vsAX-4Ixwa&_nc_ht=scontent-lhr8-1.xx&oh=2bf4b0b95184f22750ca1b0d0c3ca1a1&oe=5EF2B7B9", :link=>"https://www.instagram.com/rebecamarin02_", :number_of_followers=>1126},
  {:user_name=>"@l.noval_", :profile_pict=>"https://scontent-lht6-1.xx.fbcdn.net/v/t51.2885-15/67844871_628361770989423_9053391885707509760_n.jpg?_nc_cat=105&_nc_sid=86c713&_nc_oc=AQmIy0HSX4epdWktO3SzwWUDlW-QLEaVpWKvZPQWcyUgII6D7e3nM_5RIgoX6Pl8FDg&_nc_ht=scontent-lht6-1.xx&oh=30f0010374eab77be80bf15c065ca1a7&oe=5EF33DCA", :link=>"https://www.instagram.com/l.noval_", :number_of_followers=>1300},
  {:user_name=>"@mabelguero", :profile_pict=>"https://scontent-lht6-1.xx.fbcdn.net/v/t51.2885-15/42661439_2173483356254016_821950603222581248_n.jpg?_nc_cat=105&_nc_sid=86c713&_nc_ohc=zMVUsKVXFu4AX-DL0ZL&_nc_ht=scontent-lht6-1.xx&oh=f33df0bd0b7ab08bce612377b79b1150&oe=5EF301D5", :link=>"https://www.instagram.com/mabelguero", :number_of_followers=>145},
  {:user_name=>"@_bionda_ds", :profile_pict=>"https://scontent-frt3-1.xx.fbcdn.net/v/t51.2885-15/94257906_578085619725780_2923735279502098432_n.jpg?_nc_cat=106&_nc_sid=86c713&_nc_ohc=_n2birzXmSIAX9pmUSj&_nc_ht=scontent-frt3-1.xx&oh=0766ce0c6bf83fa7448c16260f7e15f9&oe=5EF4F4D6", :link=>"https://www.instagram.com/_bionda_ds", :number_of_followers=>2017},
  {:user_name=>"@sophie_bldy", :profile_pict=>"https://scontent-lht6-1.xx.fbcdn.net/v/t51.2885-15/44507612_726046071085057_2618587035761377280_n.jpg?_nc_cat=108&_nc_sid=86c713&_nc_oc=AQmApS9oEiVAxR1Wzjm_PMw6ohfHLq2eBp8jOIABzYA-i6zBbCw_K3ufV6iVy5OXKH0&_nc_ht=scontent-lht6-1.xx&oh=afce9d19993f77395cd1ad164d368fae&oe=5EF263A8", :link=>"https://www.instagram.com/sophie_bldy", :number_of_followers=>1220},
    {:user_name=>"@ayano_mangas_fr", :profile_pict=>"https://scontent-lht6-1.xx.fbcdn.net/v/t51.2885-15/95542093_241878077127528_8090941018058260480_n.jpg?_nc_cat=105&_nc_sid=86c713&_nc_ohc=hrHH53SGk-8AX-tlWl3&_nc_ht=scontent-lht6-1.xx&oh=8d3067aaa2f47b1eeb33c11e03bb0468&oe=5EF16759", :link=>"https://www.instagram.com/ayano_mangas_fr", :number_of_followers=>2235},
  {:user_name=>"@_gianlike", :profile_pict=>"https://scontent-lhr8-1.xx.fbcdn.net/v/t51.2885-15/67466067_652684531808767_6346803993708068864_n.jpg?_nc_cat=102&_nc_sid=86c713&_nc_oc=AQmRJ0vrxos5aTrZGY1sD21cooZ-M-2LLTTjesyo9SZbt1XqfDZIx84D6d_aYsmJMKU&_nc_ht=scontent-lhr8-1.xx&oh=660f12030a66e8ec6cd27484bcc4aabf&oe=5EF1AD14", :link=>"https://www.instagram.com/_gianlike", :number_of_followers=>754}
]
identities_params.each { |identity_params| Identity.create!(identity_params.merge({ provider: "instagram" }))}
