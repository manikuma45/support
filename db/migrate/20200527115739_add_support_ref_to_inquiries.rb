class AddSupportRefToInquiries < ActiveRecord::Migration[5.2]
  def change
    add_reference :inquiries, :support, foreign_key: true
  end
end
