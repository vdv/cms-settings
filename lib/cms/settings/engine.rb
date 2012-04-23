module Cms
  module Settings
    class Engine < ::Rails::Engine
      isolate_namespace Cms::Settings
      engine_name :cms_settings

      config.generators do |g|
        g.orm             :active_record
        g.template_engine :haml
        g.test_framework  :rspec
      end

    end
  end
end
