module Cms
  class SettingsGenerator < ::Rails::Generators::Base
    def rake_db
      rake("cms_settings:install:migrations")
      #rake("refinery_settings:install:migrations")
    end

    def append_load_seed_data
      create_file 'db/seeds.rb' unless File.exists?(File.join('db', 'seeds.rb'))
      append_file 'db/seeds.rb', :verbose => true do
        <<-EOH

# Added by CMS Settings engine
Cms::Settings::Engine.load_seed
        EOH
      end
    end

    def add_routes
      route 'mount Cms::Settings::Engine => "/cms/settings"'
    end
  end
end