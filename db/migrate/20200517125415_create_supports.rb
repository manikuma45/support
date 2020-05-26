class CreateSupports < ActiveRecord::Migration[5.2]
  def change
    create_table :supports do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.string :price, null: false
      t.string :image

      t.timestamps
    end
  end
end
