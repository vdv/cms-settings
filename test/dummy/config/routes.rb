Rails.application.routes.draw do

  mount CmsSettings::Engine => "/cms-settings"
end
