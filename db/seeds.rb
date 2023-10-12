# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: 'Alex', email: 'alexiamxsmart@gmail.com')
user2 = User.create(name: 'Kate', email: 'kate@gmail.com')

programming = Category.create(title: 'Programming')
history = Category.create(title: 'History')

test_ruby = Test.create(title: 'Ruby basic', level: 1, category_id: programming.id, author_id: user1.id)
test_html = Test.create(title: 'HTML basic', level: 1, category_id: programming.id, author_id: user2.id)

ruby_question = Question.create(body: 'What is Ruby?', test_id: test_ruby.id)
html_question = Question.create(body: 'What is HTML?', test_id: test_html.id)

ruby_answer = Answer.create(body: 'Ruby is a programming language with a convenient syntax for web development', correct: true, question_id: ruby_question.id)
html_answer = Answer.create(body: 'HTML is a markup language for creating web pages', correct: true, question_id: html_question.id)
