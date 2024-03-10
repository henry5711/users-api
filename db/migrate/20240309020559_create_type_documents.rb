class CreateTypeDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :type_documents do |t|
      t.string :name,null: false
      t.text :description,null:true

      t.timestamps
    end
  end
end
