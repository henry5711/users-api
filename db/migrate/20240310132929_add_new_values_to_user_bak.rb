class AddNewValuesToUserBak < ActiveRecord::Migration[7.0]
  def change
    add_column :user_banks, :email, :string
  end
end
