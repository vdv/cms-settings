module Cms
  class Setting < ActiveRecord::Base
    set_table_name :cms_settings
    # attr_accessible :title, :body

    validates :name, :presence => true, :uniqueness => true

    CACHE_KEY = 'Cms::Setting_%s'
    after_save :_clear_cache

    class << self
      def get(name, default = '')
        val = Rails.cache.fetch(CACHE_KEY % name) { Cms::Setting.find_by_name(name).value rescue '' }
        Rails.cache.delete(CACHE_KEY % name) if val.nil?
        val || default
      end
    end

    private

    def _clear_cache
      Rails.cache.delete(CACHE_KEY % self.name) rescue nil
    end
   
  end
end
