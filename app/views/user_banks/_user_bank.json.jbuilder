json.extract! user_bank, :id,:number_document, :document_issue_date, :document_expiration_date, :name,:email, :phone, :second_phone,:type_document_id,:type_user_id, :created_at, :updated_at,:type_document,:type_user
json.url user_bank_url(user_bank, format: :json)
