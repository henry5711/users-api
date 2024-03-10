class UserBank < ApplicationRecord
    validates :number_document, length: { minimum: 1 },presence: true
    validates :name, presence: true, format: { with: /[a-zA-Z0-9_-][\s]+/, message: "Only letters, numbers, underscores, hyphens, and spaces are allowed." }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP },presence: true
    belongs_to :type_document_id, class_name: 'TypeDocument'
    belongs_to :type_user_id, class_name: 'TypeUser'
end
