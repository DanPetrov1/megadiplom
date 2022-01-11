# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'a@a.a', password: 'aaaaaa', password_confirmation: 'aaaaaa', role: 'admin')
Genre.create!(title: 'aaa', description: 'aaaaaa')
Author.create!(name: 'qwe', birthday: Date.today, birthplace: 'qwe')
Book.create!(title: 'qwe', description: 'qwe', cost: 123, author: Author.first, genre: Genre.first)
Book.create!(title: 'ewq', description: 'ewq', cost: 321, author: Author.first, genre: Genre.first)
