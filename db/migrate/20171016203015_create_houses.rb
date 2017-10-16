class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :place_id
      t.string :name
      t.string :house_saying
      t.string :picture_url

      t.timestamps
    end
  end
end
