class RemoveSupportIdFromInquiries < ActiveRecord::Migration[5.2]
  def change
    remove_column :inquiries, :support_id, :integer
  end
end
