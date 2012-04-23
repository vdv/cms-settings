Cms::Settings::Engine.routes.draw do
  namespace :admin do
    resources :settings, :as => :cms_settings
  end
end
