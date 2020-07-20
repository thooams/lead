Influencer.destroy_all

Campaign.destroy_all
campaigns_params = [
  {:state=>"ongoing", :hashtag=>"#LancomeFrance", :brand_name=>"Lancôme", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/3788/Screenshot_2020-04-08_at_15.31.45.png"},
  {:state=>"ongoing", :hashtag=>"#SmoothieSiesteAndSun", :brand_name=>"Innocent", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1955/IMG_6248.PNG"},
  {:state=>"ongoing", :hashtag=>"#PeopleWhoTechCare", :brand_name=>"Withings", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1420/mg-4e91430a-a156-45e0-a421-w1000h667-sc.jpg"},
  {:state=>"ongoing", :hashtag=>"#KINGDOMFORCEENFAMILLE", :brand_name=>"KingdomForce", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/3746/KingdomForce_1920x1080.jpg"},
  {:state=>"ongoing", :hashtag=>"#Merveilleuse", :brand_name=>"Variance", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1804/VARIANCE_210519__33.jpg"},
  {:state=>"ongoing", :hashtag=>"#PetitBateauxChristophRUMPF", :brand_name=>"PETIT BATEAU", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/3623/Capture_d_e%CC%81cran_2020-03-10_a%CC%80_15.42.38.png"},
  {:state=>"in_definition", :hashtag=>"#HelloFreshFrance", :brand_name=>"HelloFresh", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/3726/Screenshot_2020-03-27_at_12.09.01.png"},
  {:state=>"ongoing", :hashtag=>"#BRAUNGROOMING", :brand_name=>"BRAUN", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/4766/Capture_d_e%CC%81cran_2020-05-05_a%CC%80_16.59.04.png"},
  {:state=>"ongoing", :hashtag=>"#undizfamily", :brand_name=>"UNDIZ", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/3794/Screenshot_2020-04-09_at_15.36.58.png"},
  {:state=>"completed", :hashtag=>"#habitatetmoi", :brand_name=>"Habitat", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/3589/Capture_d_e%CC%81cran_2020-03-03_a%CC%80_16.47.58.png"},
  {:state=>"ongoing", :hashtag=>"#SequoiaMuses", :brand_name=>"SEQUOIA", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/4838/Screenshot_2020-05-13_at_16.38.05.png"},
  {:state=>"ongoing", :hashtag=>"#100ANSDELACULOTTE", :brand_name=>"Petit Bateau", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/692/PETITBATEAU_080_036.jpg"},
  {:state=>"ongoing", :hashtag=>"#NewAdvancedGenifique", :brand_name=>"Lancôme", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/2137/genifique_reno_s2_2019_nm_pack_de_face_dans_microbiome_md.jpg"},
  {:state=>"ongoing", :hashtag=>"#MONJEANCOMPTOIR", :brand_name=>"Comptoir des Cotonniers", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/2009/Capture_d_%C3%A9cran_2019-07-31_%C3%A0_13.35.25.png"},
  {:state=>"ongoing", :hashtag=>"#mademoisellebalm", :brand_name=>"Lancôme", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/3574/Screenshot_2020-02-28_at_20.05.26.png"},
  {:state=>"ongoing", :hashtag=>"#NaturaliaOrigines", :brand_name=>"Naturalia", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/654/ORIGINES.jpg"},
  {:state=>"in_definition", :hashtag=>"#LesEtiquettesComptoir", :brand_name=>"Comptoir Des Cotonniers", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/928/Capture_d_e%CC%81cran_2018-09-27_a%CC%80_14.57.20.png"},
  {:state=>"ongoing", :hashtag=>"#nanoe", :brand_name=>"Panasonic ", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1960/NA65_model_02_170529_small.jpg"},
  {:state=>"ongoing", :hashtag=>"#JeMeDemarque", :brand_name=>"BrandAlley", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/835/iStock-638637230vteA_-_Copie.jpg"},
  {:state=>"ongoing", :hashtag=>"#PacoRabanneHolidays", :brand_name=>"PACO RABANNE", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1128/Capture_d_e%CC%81cran_2018-11-28_a%CC%80_15.55.46.png"},
  {:state=>"ongoing", :hashtag=>"#SwannaParis", :brand_name=>"Swanna Paris", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1348/Capture_d_e%CC%81cran_2019-01-08_a%CC%80_16.58.16.png"},
  {:state=>"ongoing", :hashtag=>"#GUESSWatches", :brand_name=>"GUESS", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/3638/HDO_WEB_GWM_1200x12005.jpg"},
  {:state=>"completed", :hashtag=>"#LivresseDuFruit", :brand_name=>"PAGO", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1034/Capture_d_e%CC%81cran_2018-10-31_a%CC%80_17.39.56.png"},
  {:state=>"completed", :hashtag=>"#UNPOPULARVALENTINE", :brand_name=>"UNDIZ", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1298/Capture_d_e%CC%81cran_2019-01-30_a%CC%80_10.18.46.png"},
  {:state=>"completed", :hashtag=>"#CHALKYDULUXVALENTINE", :brand_name=>"Dulux Valentine", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1489/Capture_d_e%CC%81cran_2019-03-21_a%CC%80_17.41.03.png"},
  {:state=>"completed", :hashtag=>"#ParisEtc", :brand_name=>"Canal+", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/208/benjamin-biolay-1600.gif"},
  {:state=>"ongoing", :hashtag=>"#COUPDECLAT", :brand_name=>"Asepta", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1323/Capture_d_e%CC%81cran_2019-02-08_a%CC%80_16.38.11.png"},
  {:state=>"ongoing", :hashtag=>"#THATSY", :brand_name=>"Yves Saint Laurent Beauté", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/20/Capture_d_e%CC%81cran_2017-08-28_a%CC%80_16.58.51.png"},
  {:state=>"ongoing", :hashtag=>"#YSLBeautyHotel", :brand_name=>"YSL BEAUTÉ", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/292/Capture_d_e%CC%81cran_2018-01-05_a%CC%80_10.41.22.png"},
  {:state=>"ongoing", :hashtag=>"#UNNOSTALGIQUEPRINCESS", :brand_name=>"UNDIZ", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1373/070_190128UNDIZ_1875_R1.jpg"},
  {:state=>"ongoing", :hashtag=>"#BetterWithHoopzi", :brand_name=>"HOOPZI", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1980/Capture_d_e%CC%81cran_2019-07-17_a%CC%80_16.04.16.png"},
  {:state=>"ongoing", :hashtag=>"#BECUPBEYOU", :brand_name=>"Be'cup", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/2523/Capture_d_e%CC%81cran_2019-10-17_a%CC%80_19.11.35.png"},
  {:state=>"ongoing", :hashtag=>"#LivresseDuFruit", :brand_name=>"PAGO", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/419/pago.jpg"},
  {:state=>"ongoing", :hashtag=>"#JAMAISSANSMONBROC", :brand_name=>"RICARD", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1013/Broc.jpg"},
  {:state=>"in_definition", :hashtag=>"#AnniversaireNerf", :brand_name=>"Nerf", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1537/Nerf-Home-YOO.png"},
  {:state=>"ongoing", :hashtag=>"#GOFORTHEEXTRAORDINAIRE", :brand_name=>"Perrier", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/2311/Capture_d_%C3%A9cran_2019-09-26_%C3%A0_18.26.22.png"},
  {:state=>"ongoing", :hashtag=>"#importantissime", :brand_name=>"CANAL+", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/272/importantissime.jpg"},
  {:state=>"ongoing", :hashtag=>"#MyRedEdition", :brand_name=>"KENZO", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/621/Flower-by-Kenzo-Red-Edition-2018-1024x554.jpg"},
  {:state=>"ongoing", :hashtag=>"#KENZOxWILLIAMAMOR", :brand_name=>"Kenzo", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/2932/Capture_d_%C3%A9cran_2019-11-25_%C3%A0_15.04.27.png"},
  {:state=>"ongoing", :hashtag=>"#WORLDEXPERTINFACIALMASKS", :brand_name=>"Jola", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/2540/Capture_d_e%CC%81cran_2019-10-18_a%CC%80_16.24.44.png"},
  {:state=>"ongoing", :hashtag=>"#MyRougeG", :brand_name=>"GUERLAIN", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/427/Capture_d_e%CC%81cran_2018-03-16_a%CC%80_10.28.03.png"},
  {:state=>"ongoing", :hashtag=>"#hypnosemascara", :brand_name=>"Lancôme", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1885/HYPNOSE_NM_5_MERCH_MD__1_.jpg"},
  {:state=>"ongoing", :hashtag=>"#INDIESETMOI", :brand_name=>"INDIES", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/2670/indies9.jpg"},
  {:state=>"ongoing", :hashtag=>"#LovelyBreak", :brand_name=>"Løv Organic", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/106/Capture_d_e%CC%81cran_2017-10-17_a%CC%80_18.41.20.png"},
  {:state=>"ongoing", :hashtag=>"#simplementsiggis", :brand_name=>"siggi's", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1557/Capture_d_e%CC%81cran_2019-04-16_a%CC%80_11.01.29.png"},
  {:state=>"ongoing", :hashtag=>"#petitdejfruite", :brand_name=>"PomPotes", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1725/Capture_d_e%CC%81cran_2019-05-20_a%CC%80_14.28.15.png"},
  {:state=>"ongoing", :hashtag=>"#BRINGKIPLIHOME", :brand_name=>"KIPLI", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1484/Capture_d_e%CC%81cran_2019-03-21_a%CC%80_15.15.35.png"},
  {:state=>"in_definition", :hashtag=>"#MyRepetto", :brand_name=>"Repetto", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1695/ligne-cadence.jpg"},
  {:state=>"in_definition", :hashtag=>"#dogchowfrance", :brand_name=>"Purina", :banner_picture_url=>"https://yoo-prod.s3.amazonaws.com/uploads/image/file/1469/Capture_d_e%CC%81cran_2019-03-20_a%CC%80_11.06.41.png"}
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
