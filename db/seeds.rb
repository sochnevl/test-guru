# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.find_or_create_by([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.find_or_create_by(name: 'Luke', movie: movies.first)

#  пользователи
alex, kate, nikita, borysik, admin =
  User.create!([
                 { first_name: 'Алексей', last_name: 'Сочнев', email: 'sochnevl@yandex.ru', password: '653204Alex.', password_confirmation: '653204Alex.', type: 'Admin', confirmed_at: Time.now },
                 { first_name: 'Екатерина', last_name: 'Сочнева', email: 'kate@mail.ru', password: '123123', password_confirmation: '123123', confirmed_at: Time.now },
                 { first_name: 'Никас', last_name: 'Никас', email: 'nikas@mail.ru', password: '123123', password_confirmation: '123123', confirmed_at: Time.now },
                 { first_name: 'Борис', last_name: 'Парусников', email: 'bestfriend@gmail.com', password: 'boryapip123', password_confirmation: 'boryapip123', type: 'Admin', confirmed_at: Time.now },
                 { first_name: 'admin', last_name: 'adminov', email: 'alexiamxsmart@gmail.com', password: 'admin123123', password_confirmation: 'admin123123', type: 'Admin', confirmed_at: Time.now }
               ])

# категории
programming, movies, sport =
  Category.create!([
                     { title: 'Программирование' },
                     { title: 'Кино' },
                     { title: 'Спорт' }
                   ])

# тесты
test_ruby, test_html =
  programming.tests.create!([
                              # тесты по программированию
                              { title: 'Ruby', level: 1, author: alex },
                              { title: 'HTML', level: 1, author: kate }
                            ])

easy_test_movies, test_harry_potter =
  movies.tests.create!([
                         # тесты по кино
                         { title: 'Кино', level: 1, author: nikita },
                         { title: 'Гарри Поттер', level: 1, author: nikita }
                       ])

# вопросы по ruby:
ruby_question1, ruby_question2, ruby_question3, ruby_question4 =
  test_ruby.questions.create!([
                                { body: 'Что такое руби?' },
                                { body: 'Что сделает команда puts?' },
                                { body: 'Какой символ используется для создания коментариев?' },
                                { body: 'Кто является создателем Ruby?' }
                              ])

# вопросы по html:
html_question1, html_question2, html_question3, html_question4 =
  test_html.questions.create!([
                                { body: 'Какой тег используется для создания заголовка в HTML?' },
                                { body: 'Какой тег используется для создания абзаца текста в HTML?' },
                                { body: 'Какой тег используется для создания ссылки в HTML?' },
                                { body: 'Какой тег используется для создания списка с маркерами (ненумерованный список) в HTML?' }
                              ])

# вопросы по фильмам:
movies_question1, movies_question2, movies_question3, movies_question4 =
  easy_test_movies.questions.create!([
                                       { body: 'Какой фильм получил премию Оскар как лучший фильм 1994 года?' },
                                       { body: 'В каком фильме робот по имени Валли нашел последнее живое растение на планете Земля?' },
                                       { body: "Какой актер сыграл гланую роль в фильме 'Бойцовский клуб'?" },
                                       { body: 'Какой фильм является классическим музыкальным мультфильмом Дисней?' }
                                     ])

# вопросы по гарри поттеру
harry_potter_question1, harry_potter_question2, harry_potter_question3, harry_potter_question4 =
  test_harry_potter.questions.create!([
                                        { body: 'Как называется первая книга о Гарри Поттере, написанная Джоан Роулинг?' },
                                        { body: 'На какой факультет в Хогвартсе поступает Гарри Поттер?' },
                                        { body: 'Как звали директора Хогвартса?' },
                                        { body: 'Как звали лучшего друга Гарри Поттера?' }
                                      ])

# Ответы к тесту по ruby. 1 вопрос
ruby_question1.answers.create!([
                                 { body: 'Ruby - это язык программирования с удобным синтаксисом для веб-разработки',
                                   correct: true },
                                 { body: 'Ruby - это драгоценный камень', correct: false },
                                 { body: 'Ruby - это музыкальный жанр', correct: false },
                                 { body: 'Ruby - это валюта в Индии', correct: false }
                               ])

# Ответы к тесту по ruby. 2 вопрос
ruby_question2.answers.create!([
                                 { body: 'Создаст новую переменную', correct: false },
                                 { body: 'Завершит выполнение программы', correct: false },
                                 { body: 'Очистит экран консоли', correct: false },
                                 { body: 'Выведет информацию на экран и добавит перевод строки', correct: true }
                               ])

# Ответы к тесту по ruby. 3 вопрос
ruby_question3.answers.create!([
                                 { body: '&', correct: false },
                                 { body: '#', correct: true },
                                 { body: '!', correct: false },
                                 { body: '=', correct: false }
                               ])

# Ответы к тесту по ruby. 4 вопрос
ruby_question4.answers.create!([
                                 { body: 'Марк Цукерберг', correct: false },
                                 { body: 'Мацумото Юкихиро (Matz)', correct: true },
                                 { body: 'Стив Джобс', correct: false },
                                 { body: 'Джефф Безос', correct: false }
                               ])

# Ответы к тесту по html. 1 вопрос
html_question1.answers.create!([
                                 { body: '<title>', correct: false },
                                 { body: '<header>', correct: false },
                                 { body: '<h1>', correct: true },
                                 { body: '<p>', correct: false }
                               ])

# Ответы к тесту по html. 2 вопрос
html_question2.answers.create!([
                                 { body: '<para>', correct: false },
                                 { body: '<p>', correct: true },
                                 { body: '<text>', correct: false },
                                 { body: '<a>', correct: false }
                               ])

# Ответы к тесту по html. 3 вопрос
html_question3.answers.create!([
                                 { body: '<link>', correct: false },
                                 { body: '<a>', correct: true },
                                 { body: '<url>', correct: false },
                                 { body: '<href>', correct: false }
                               ])

# Ответы к тесту по html. 4 вопрос
html_question4.answers.create!([
                                 { body: '<list>', correct: false },
                                 { body: '<ol>', correct: false },
                                 { body: '<li>', correct: false },
                                 { body: '<ul>', correct: true }
                               ])

# Ответы к тесту по фильмам. 1 вопрос
movies_question1.answers.create!([
                                   { body: 'Зеленая миля', correct: false },
                                   { body: 'Форест Гамп', correct: false },
                                   { body: 'Список Шиндлера', correct: true },
                                   { body: 'Лови волну', correct: false }
                                 ])

# Ответы к тесту по фильмам. 2 вопрос
movies_question2.answers.create!([
                                   { body: 'Человек будущего', correct: false },
                                   { body: 'Люди в черном', correct: false },
                                   { body: 'Валли', correct: true },
                                   { body: 'Ледниковый период', correct: false }
                                 ])

# Ответы к тесту по фильмам. 3 вопрос
movies_question3.answers.create!([
                                   { body: 'Джек Николсон', correct: false },
                                   { body: 'Брэд Питт', correct: true },
                                   { body: 'Сергей Безруков', correct: false },
                                   { body: 'Киану Ривз', correct: false }
                                 ])

# Ответы к тесту по фильмам. 4 вопрос
movies_question4.answers.create!([
                                   { body: 'Золушка', correct: true },
                                   { body: 'Звездные войны', correct: false },
                                   { body: 'Побег из шоушенка', correct: false },
                                   { body: 'Поющие под дождем', correct: false }
                                 ])

# Ответы к тесту по Гарри Поттеру. 1 вопрос
harry_potter_question1.answers.create!([
                                         { body: 'Гарри Поттер и Тайная комната', correct: false },
                                         { body: 'Гарри Поттер и Узник Азкабана', correct: false },
                                         { body: 'Гарри Поттер и Философский камень', correct: true },
                                         { body: 'Гарри Поттер и Орден Феникса', correct: false }
                                       ])

# Ответы к тесту по Гарри Поттеру. 2 вопрос
harry_potter_question2.answers.create!([
                                         { body: 'Гриффиндор', correct: true },
                                         { body: 'Слизерин', correct: false },
                                         { body: 'Пуффендуй', correct: false },
                                         { body: 'Когтевран', correct: false }
                                       ])

# Ответы к тесту по Гарри Поттеру. 3 вопрос
harry_potter_question3.answers.create!([
                                         { body: 'Дамблдор', correct: true },
                                         { body: 'Снейп', correct: false },
                                         { body: 'Малфой', correct: false },
                                         { body: 'Грюмс', correct: false }
                                       ])

# Ответы к тесту по Гарри Поттеру. 4 вопрос
harry_potter_question4.answers.create!([
                                         { body: 'Драко Малфой', correct: false },
                                         { body: 'Сириус Блэк', correct: false },
                                         { body: 'Рон Уизли', correct: true },
                                         { body: 'Том Реддл', correct: false }
                                       ])

alex.test_passings.create!([
                           { status: 'пройден', test: test_ruby },
                           { status: 'в процессе', test: test_harry_potter }
                         ])

kate.test_passings.create!([
                           { status: 'в процессе', test: test_harry_potter },
                           { status: 'в процессе', test: test_ruby }
                         ])

nikita.test_passings.create!([
                             { status: 'в процессе', test: test_html },
                             { status: 'пройден', test: easy_test_movies }
                           ])
