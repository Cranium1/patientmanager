# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( SlickGrid/slick.core.js )
Rails.application.config.assets.precompile += %w( SlickGrid/slick.grid.js )
Rails.application.config.assets.precompile += %w( SlickGrid/slick.grid.css )
Rails.application.config.assets.precompile += %w( SlickGrid/lib/jquery.event.drag-2.2.js )