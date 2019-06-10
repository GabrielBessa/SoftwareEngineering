# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

# Rails.application.config.assets.precompile += %w(images/icons/favicon.png)
Rails.application.config.assets.precompile += %w(vendor/bootstrap/css/bootstrap.min.css)
Rails.application.config.assets.precompile += %w(fonts/font-awesome-4.7.0/css/font-awesome.min.css)
Rails.application.config.assets.precompile += %w(fonts/themify/themify-icons.css)
Rails.application.config.assets.precompile += %w(vendor/animate/animate.css)
Rails.application.config.assets.precompile += %w(vendor/css-hamburgers/hamburgers.min.css)
Rails.application.config.assets.precompile += %w(vendor/animsition/css/animsition.min.css)
Rails.application.config.assets.precompile += %w(vendor/select2/select2.min.css)
Rails.application.config.assets.precompile += %w(vendor/daterangepicker/daterangepicker.css)
Rails.application.config.assets.precompile += %w(vendor/slick/slick.css)
Rails.application.config.assets.precompile += %w(vendor/lightbox2/css/lightbox.min.css)
Rails.application.config.assets.precompile += %w(css/util.css)
Rails.application.config.assets.precompile += %w(css/main.css)
Rails.application.config.assets.precompile += %w(vendor/jquery/jquery-3.2.1.min.js)
Rails.application.config.assets.precompile += %w(vendor/animsition/js/animsition.min.js)
Rails.application.config.assets.precompile += %w(vendor/bootstrap/js/popper.js)
Rails.application.config.assets.precompile += %w(vendor/bootstrap/js/bootstrap.min.js)
Rails.application.config.assets.precompile += %w(vendor/select2/select2.min.js)
Rails.application.config.assets.precompile += %w(vendor/daterangepicker/moment.min.js)
Rails.application.config.assets.precompile += %w(vendor/daterangepicker/daterangepicker.js)
Rails.application.config.assets.precompile += %w(vendor/slick/slick.min.js)
Rails.application.config.assets.precompile += %w(js/slick-custom.js)
Rails.application.config.assets.precompile += %w(vendor/parallax100/parallax100.js)
Rails.application.config.assets.precompile += %w(vendor/countdowntime/countdowntime.js)
Rails.application.config.assets.precompile += %w(vendor/lightbox2/js/lightbox.min.js)
Rails.application.config.assets.precompile += %w(js/main.js)
Rails.application.config.assets.precompile += %w(*.jpg *.png)

