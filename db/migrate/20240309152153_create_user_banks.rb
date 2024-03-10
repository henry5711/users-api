class CreateUserBanks < ActiveRecord::Migration[7.0]
  def change
    create_table :user_banks do |t|
      t.string :number_document,null: false
      t.date :document_issue_date,null: false
      t.date :document_expiration_date,null: false
      t.string :name,null: false
      t.string :phone,null: false
      t.string :second_phone,null:true
      t.references :type_document, foreign_key: {to_table: :type_documents}
      t.references :type_user, foreign_key: {to_table: :type_users}
      t.timestamps
    end
  end
end
