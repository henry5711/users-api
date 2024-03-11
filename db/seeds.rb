# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

type_users=TypeUser.create([{ name: "Jurídica"}, { name: "Natural"}])
type_documents=TypeDocument.create([{ name: "CI"},{name: "Pasaporte"},{name:"RIF"}])
users=UserBank.create([{ name: "testing",email:"testing@gmail.com",number_document:"26404237"},document_issue_date:"2024-03-10",document_expiration_date:"2030-03-10",phone:"04126837777",type_document_id:1,type_user_id:1])
