Rails.application.config.tap do |config|
config.i18n.load_path += Dir[Rails.root.join('config', 'locales', 'models', '*.{rb,yml}')]
config.i18n.default_locale = :ja
end
