import Rails from 'rails-ujs'
import 'config'
import 'pages'
import '../static/background.jpg'
import '../static/post.jpg'
import manageFlash from 'components/flash/flash'
import 'components/banner/banner'
import 'components/button/button'
import 'components/header/header'
import 'components/campaign/campaign'
import 'components/wrapper/wrapper'
import 'components/avatar/avatar'
// END OF IMPORTS (DO NOT DELETE)

Rails.start()
manageFlash()
