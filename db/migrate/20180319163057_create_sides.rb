class CreateSides < ActiveRecord::Migration[5.1]
  def change
    create_table :sides do |t|
      t.string :title
      t.text :description
      t.string :size
      t.string :main_image
      t.string :price

      t.timestamps
    end
  end
end
