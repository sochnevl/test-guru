# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#  пользователи
alex, kate, nikita =
  User.create!([
                 { name: 'Алексей', email: 'alexiamxsmart@gmail.com' },
                 { name: 'Екатерина', email: 'kate@gmail.com' },
                 { name: 'Никита', email: 'nikita@gmail.com' }
               ])

# категории
programming, movies =
  Category.create!([
                     { title: 'Программирование' },
                     { title: 'Кино' }
                   ])

# тесты
test_ruby, test_html, easy_test_movies, test_harry_potter =
  Test.create!([
                 # тесты по программированию
                 { title: 'Ruby', level: 1, category_id: programming.id, author_id: alex.id },
                 { title: 'HTML', level: 1, category_id: programming.id, author_id: kate.id },
                 # тесты по кино
                 { title: 'Кино', level: 1, category_id: movies.id, author_id: nikita.id },
                 { title: 'Гарри Поттер', level: 1, category_id: movies.id, author_id: nikita.id }
               ])

# вопросы по ruby:
ruby_question1, ruby_question2, ruby_question3, ruby_question4,
# вопросы по html:
html_question1, html_question2, html_question3, html_question4,
# вопросы по фильмам:
movies_question1, movies_question2, movies_question3, movies_question4,
# вопросы по гарри поттеру
harry_potter_question1, harry_potter_question2, harry_potter_question3, harry_potter_question4 =
  Question.create!([
                     # ruby
                     { body: 'Что такое руби?',
                       test_id: test_ruby.id },
                     { body: 'Что сделает команда puts?',
                       test_id: test_ruby.id },
                     { body: 'Какой символ используется для создания коментариев?',
                       test_id: test_ruby.id },
                     { body: 'Кто является создателем Ruby?',
                       test_id: test_ruby.id },
                     # html
                     { body: 'Какой тег используется для создания заголовка в HTML?',
                       test_id: test_html.id },
                     { body: 'Какой тег используется для создания абзаца текста в HTML?',
                       test_id: test_html.id },
                     { body: 'Какой тег используется для создания ссылки в HTML?',
                       test_id: test_html.id },
                     { body: 'Какой тег используется для создания списка с маркерами (ненумерованный список) в HTML?',
                       test_id: test_html.id },
                     # фильмы
                     { body: 'Какой фильм получил премию Оскар как лучший фильм 1994 года?',
                       test_id: easy_test_movies.id },
                     { body: 'В каком фильме робот по имени Валли нашел последнее живое растение на планете Земля?',
                       test_id: easy_test_movies.id },
                     { body: "Какой актер сыграл гланую роль в фильме 'Бойцовский клуб'?",
                       test_id: easy_test_movies.id },
                     { body: 'Какой фильм является классическим музыкальным мультфильмом Дисней?',
                       test_id: easy_test_movies.id },
                     # гарри поттер
                     { body: 'Как называется первая книга о Гарри Поттере, написанная Джоан Роулинг?',
                       test_id: test_harry_potter.id },
                     { body: 'На какой факультет в Хогвартсе поступает Гарри Поттер?',
                       test_id: test_harry_potter.id },
                     { body: 'Как звали директора Хогвартса?',
                       test_id: test_harry_potter.id },
                     { body: 'Как звали лучшего друга Гарри Поттера?',
                       test_id: test_harry_potter.id }
                   ])

Answer.create!([
                 # Ответы к тесту по ruby
                 # 1 вопрос
                 { body: 'Ruby - это язык программирования с удобным синтаксисом для веб-разработки',
                   correct: true, question_id: ruby_question1.id },
                 { body: 'Ruby - это драгоценный камень',
                   correct: false, question_id: ruby_question1.id },
                 { body: 'Ruby - это музыкальный жанр',
                   correct: false, question_id: ruby_question1.id },
                 { body: 'Ruby - это валюта в Индии',
                   correct: false, question_id: ruby_question1.id },
                 # 2 вопрос
                 { body: 'Создаст новую переменную',
                   correct: false, question_id: ruby_question2.id },
                 { body: 'Завершит выполнение программы',
                   correct: false, question_id: ruby_question2.id },
                 { body: 'Очистит экран консоли',
                   correct: false, question_id: ruby_question2.id },
                 { body: 'Выведет информацию на экран и добавит перевод строки',
                   correct: true, question_id: ruby_question2.id },
                 # 3 вопрос
                 { body: '&', correct: false, question_id: ruby_question3.id },
                 { body: '#', correct: true, question_id: ruby_question3.id },
                 { body: '!', correct: false, question_id: ruby_question3.id },
                 { body: '=', correct: false, question_id: ruby_question3.id },
                 # 4 вопрос
                 { body: 'Марк Цукерберг', correct: false, question_id: ruby_question4.id },
                 { body: 'Мацумото Юкихиро (Matz)', correct: false, question_id: ruby_question4.id },
                 { body: 'Стив Джобс', correct: false, question_id: ruby_question4.id },
                 { body: 'Джефф Безос', correct: true, question_id: ruby_question4.id },

                 # Ответы к тесту по html
                 # 1 вопрос
                 { body: '<title>', correct: false, question_id: html_question1.id },
                 { body: '<header>', correct: false, question_id: html_question1.id },
                 { body: '<h1>', correct: true, question_id: html_question1.id },
                 { body: '<p>', correct: false, question_id: html_question1.id },
                 # 2 вопрос
                 { body: '<para>', correct: false, question_id: html_question2.id },
                 { body: '<p>', correct: true, question_id: html_question2.id },
                 { body: '<text>', correct: false, question_id: html_question2.id },
                 { body: '<a>', correct: false, question_id: html_question2.id },
                 # 3 вопрос
                 { body: '<link>', correct: false, question_id: html_question3.id },
                 { body: '<a>', correct: true, question_id: html_question3.id },
                 { body: '<url>', correct: false, question_id: html_question3.id },
                 { body: '<href>', correct: false, question_id: html_question3.id },
                 # 4 вопрос
                 { body: '<list>', correct: false, question_id: html_question4.id },
                 { body: '<ol>', correct: false, question_id: html_question4.id },
                 { body: '<li>', correct: false, question_id: html_question4.id },
                 { body: '<ul>', correct: true, question_id: html_question4.id },

                 # Ответы к тесту по фильмам
                 # 1 вопрос
                 { body: 'Зеленая миля', correct: false, question_id: movies_question1.id },
                 { body: 'Форест Гамп', correct: false, question_id: movies_question1.id },
                 { body: 'Список Шиндлера', correct: true, question_id: movies_question1.id },
                 { body: 'Лови волну', correct: false, question_id: movies_question1.id },
                 # 2 вопрос
                 { body: 'Человек будущего', correct: false, question_id: movies_question2.id },
                 { body: 'Люди в черном', correct: false, question_id: movies_question2.id },
                 { body: 'Валли', correct: true, question_id: movies_question2.id },
                 { body: 'Ледниковый период', correct: false, question_id: movies_question2.id },
                 # 3 вопрос
                 { body: 'Джек Николсон', correct: false, question_id: movies_question3.id },
                 { body: 'Брэд Питт', correct: true, question_id: movies_question3.id },
                 { body: 'Сергей Безруков', correct: false, question_id: movies_question3.id },
                 { body: 'Киану Ривз', correct: false, question_id: movies_question3.id },
                 # 4 вопрос
                 { body: 'Золушка', correct: true, question_id: movies_question4.id },
                 { body: 'Звездные войны', correct: false, question_id: movies_question4.id },
                 { body: 'Побег из шоушенка', correct: false, question_id: movies_question4.id },
                 { body: 'Поющие под дождем', correct: false, question_id: movies_question4.id },

                 # Ответы к тесту по Гарри Поттеру
                 # 1 вопрос
                 { body: 'Гарри Поттер и Тайная комната', correct: false, question_id: harry_potter_question1.id },
                 { body: 'Гарри Поттер и Узник Азкабана', correct: false, question_id: harry_potter_question1.id },
                 { body: 'Гарри Поттер и Философский камень', correct: true, question_id: harry_potter_question1.id },
                 { body: 'Гарри Поттер и Орден Феникса', correct: false, question_id: harry_potter_question1.id },
                 # 2 вопрос
                 { body: 'Гриффиндор', correct: true, question_id: harry_potter_question2.id },
                 { body: 'Слизерин', correct: false, question_id: harry_potter_question2.id },
                 { body: 'Пуффендуй', correct: false, question_id: harry_potter_question2.id },
                 { body: 'Когтевран', correct: false, question_id: harry_potter_question2.id },
                 # 3 вопрос
                 { body: 'Дамблдор', correct: true, question_id: harry_potter_question3.id },
                 { body: 'Снейп', correct: false, question_id: harry_potter_question3.id },
                 { body: 'Малфой', correct: false, question_id: harry_potter_question3.id },
                 { body: 'Грюмс', correct: false, question_id: harry_potter_question3.id },
                 # 4 вопрос
                 { body: 'Драко Малфой', correct: false, question_id: harry_potter_question4.id },
                 { body: 'Сириус Блэк', correct: false, question_id: harry_potter_question4.id },
                 { body: 'Рон Уизли', correct: true, question_id: harry_potter_question4.id },
                 { body: 'Том Реддл', correct: false, question_id: harry_potter_question4.id }
               ])

TestPassing.create!([ # процесс прохождения тестов:
                      { status: 'в процессе', user_id: kate.id, test_id: test_harry_potter.id },
                      { status: 'пройден', user_id: alex.id, test_id: test_ruby.id },
                      { status: 'пройден', user_id: nikita.id, test_id: test_html.id },
                      { status: 'в процессе', user_id: alex.id, test_id: test_harry_potter.id },
                      { status: 'в процессе', user_id: nikita.id, test_id: easy_test_movies.id }
                    ])
