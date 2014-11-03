class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
   	  t.references :rambling
   	  t.string :author, :limit=>50
   	  t.string :email, :limit=>80
   	  t.text :content
      t.timestamps
    end
    add_index("comments", "rambling_id")
  end
end
