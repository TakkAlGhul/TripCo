class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.string :place_name, null: false
      t.string :description, null: true
      t.string :image, null: true
      t.references :plan, null: false,foreign_key: true
      t.integer :price, null: true
      t.string :time, null: true
      t.string :access, null: true
      t.timestamps
    end
  end
end
