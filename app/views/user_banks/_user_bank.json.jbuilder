json.extract! user_bank, :id, :number_document, :document_issue_date, :document_expiration_date, :name, :phone, :second_phone, :created_at, :updated_at
json.url user_bank_url(user_bank, format: :json)
