class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.text :content
      t.integer :phone_number
      t.integer :support_id

      t.timestamps
    end
  end
end
