class AddemailToInquiries < ActiveRecord::Migration[5.2]
  def change
  	add_column :inquiries, :email ,:string
  end
end
