class CreateTitles < ActiveRecord::Migration[5.1]
  def change
    create_table :titles do |t|
      t.string :title
      t.integer :character_id

      t.timestamps
    end
  end
end
