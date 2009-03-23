RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem "rspec",                   :lib => false,
                                        :version => ">= 1.2.0"
  config.gem "rspec-rails",             :lib => false,
                                        :version => ">= 1.2.0"
  config.gem "cucumber",                :version => ">= 0.2.0"
  config.gem "webrat"
  config.gem "thoughtbot-factory_girl", :lib => "factory_girl",
                                        :source => "http://gems.github.com"
  # -- Require sqlite3 if you are so inclined; less hassle sometimes -- #
  # config.gem "sqlite3-ruby",            :version => ">= 1.2.4"
  # -- #
  
  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer
  
  config.time_zone = 'UTC'

  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de
end