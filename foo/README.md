Created with Poulpe Boilerplate 🐙

# Getting started

**Notes**

- The app is working on Rails 6.0.2 with Ruby 2.6.4.
- The app is Sprocket/RailsAssetPipeline free. Assets are managed by Webpack/Webpacker
- A "component" approach is encouraged throug the use of a custom `component` (alias `c`) helper
- The overall setup is gretaly inspired by this [3-parts blog posts serie](https://evilmartians.com/chronicles/evil-front-part-1)

**To get you started**

- Clone the repo
- Make sure you have `master.key` at the root of the `/config` folder (_ask @thomas otherwise_)
- `$ bundle install`
- `$ yarn install`
- `$ rails db:create db:migrate db:seed`
- You can start a `rails s` along `webpack-dev-server` in your term
- Alright 🎉 !
