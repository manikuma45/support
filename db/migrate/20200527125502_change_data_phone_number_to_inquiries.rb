class ChangeDataPhoneNumberToInquiries < ActiveRecord::Migration[5.2]
  def change
  	 change_column :inquiries, :phone_number, :string
  end
end
