class CreateCmsSettings < ActiveRecord::Migration
  def change
    create_table :cms_settings do |t|
      t.string :name
      t.string :title
      t.string :value

      t.timestamps
    end
  end
end
