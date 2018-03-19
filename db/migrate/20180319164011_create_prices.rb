class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.string :size
      t.float :price

      t.timestamps
    end
  end
end
