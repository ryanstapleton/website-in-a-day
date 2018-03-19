class CreateSandwiches < ActiveRecord::Migration[5.1]
  def change
    create_table :sandwiches do |t|
      t.string :title
      t.string :size
      t.text :description
      t.string :main_image
      t.string :price, default: "Priced-per-inch"

      t.timestamps
    end
  end
end
