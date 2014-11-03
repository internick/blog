class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :file_name
      t.string :title, :limit => 80
      t.text :caption
      t.string :width
      t.string :height
      t.string :old_id
      t.timestamps
    end
  end
end
