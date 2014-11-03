class CreateRamblings < ActiveRecord::Migration
  def change
    create_table :ramblings do |t|
      t.string :title, :limit=>100
      t.text :body_text
      t.string :icon, :limit=>20, :default=>'&#xf0f6;'
      t.string :old_id
      t.timestamps
    end
  end
end
