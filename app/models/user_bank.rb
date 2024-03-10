class UserBank < ApplicationRecord
    belongs_to :type_document_id, class_name: 'TypeDocument'
    belongs_to :type_user_id, class_name: 'TypeUser'
end
