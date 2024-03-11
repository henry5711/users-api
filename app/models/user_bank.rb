class UserBank < ApplicationRecord
    validates_uniqueness_of :number_document, length: { minimum: 1 },presence: true
    validates :name, presence: true,format: { with: /\A[a-zA-Z0-9]+\z/, message: "only allows letters and numbers" }
    validates :phone, presence: true,format: { with: /\A[0-9]+\z/, message: "only allows numbers" }
    #validates :second_phone, presence: false,format: { with:  /\A[0-9]+\z/, message: "only allows numbers" }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP },presence: true
    belongs_to :type_document, class_name: 'TypeDocument'
    belongs_to :type_user, class_name: 'TypeUser'
end
