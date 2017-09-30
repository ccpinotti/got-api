class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :bio
      t.string :picture_url
      t.integer :house_id

      t.timestamps
    end
  end
end
