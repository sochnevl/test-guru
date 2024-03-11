# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.find_or_create_by([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.find_or_create_by(name: 'Luke', movie: movies.first)

#  пользователи
alex = User.find_or_create_by!(first_name: 'Алексей', last_name: 'Сочнев', email: 'sochnevl@yandex.ru', type: 'Admin') do |user|
  user.password = '653204Alex.'
  user.password_confirmation = '653204Alex.'
  user.confirmed_at = Time.now
end

admin = User.find_or_create_by!(first_name: 'admin', last_name: 'adminov', email: 'alexiamxsmart@gmail.com', type: 'Admin') do |user|
  user.password = 'admin123123'
  user.password_confirmation = 'admin123123'
  user.confirmed_at = Time.now
end

kate = User.find_or_create_by!(first_name: 'Екатерина', last_name: 'Сочнева', email: 'kate@mail.ru') do |user|
  user.password = '123123'
  user.password_confirmation = '123123'
  user.confirmed_at = Time.now
end

nikita = User.find_or_create_by!(first_name: 'Никас', last_name: 'Никас', email: 'nikas@mail.ru') do |user|
  user.password = '123123'
  user.password_confirmation = '123123'
  user.confirmed_at = Time.now
end

borysik = User.find_or_create_by!(first_name: 'Борис', last_name: 'Парусников', email: 'bestfriend@gmail.com', type: 'Admin') do |user|
  user.password = 'boryapip123'
  user.password_confirmation = 'boryapip123'
  user.confirmed_at = Time.now
end

# alex, admin, kate, nikita =
#   User.find_or_create_by!([
#                  { first_name: 'Алексей', last_name: 'Сочнев', email: 'sochnevl@yandex.ru', password: '653204Alex.', password_confirmation: '653204Alex.', type: 'Admin', confirmed_at: Time.now },
#                  { first_name: 'admin', last_name: 'adminov', email: 'alexiamxsmart@gmail.com', password: 'admin123123', password_confirmation: 'admin123123', type: 'Admin', confirmed_at: Time.now },
#                  { first_name: 'Екатерина', last_name: 'Сочнева', email: 'kate@mail.ru', password: '123123', password_confirmation: '123123', confirmed_at: Time.now },
#                  { first_name: 'Никас', last_name: 'Никас', email: 'nikas@mail.ru', password: '123123', password_confirmation: '123123', confirmed_at: Time.now }
#                ])

# категории
programming = Category.find_or_create_by!(
  title: 'Программирование'
)

movies = Category.find_or_create_by!(
  title: 'Кино'
)

sport = Category.find_or_create_by!(
  title: 'Спорт'
)

# programming, movies, sport =
#   Category.find_or_create_by!([
#                      { title: 'Программирование' },
#                      { title: 'Кино' },
#                      { title: 'Спорт' }
#                    ])

# тесты
# тесты по программированию
test_ruby = programming.tests.find_or_create_by!(
  title: 'Ruby',
  level: 1,
  author: alex
)

test_html = programming.tests.find_or_create_by!(
  title: 'HTML',
  level: 1,
  author: kate
)

# test_ruby, test_html =
#   programming.tests.find_or_create_by!([
#                               # тесты по программированию
#                               { title: 'Ruby', level: 1, author: alex },
#                               { title: 'HTML', level: 1, author: kate }
#                             ])

# тесты по кино
easy_test_movies = movies.tests.find_or_create_by!(
  title: 'Кино',
  level: 1,
  author: nikita
)

easy_test_movies = movies.tests.find_or_create_by!(
  title: 'Гарри Поттер',
  level: 1,
  author: nikita
)

# easy_test_movies, test_harry_potter =
#   movies.tests.find_or_create_by!([
#                          # тесты по кино
#                          { title: 'Кино', level: 1, author: nikita },
#                          { title: 'Гарри Поттер', level: 1, author: nikita }
#                        ])

# вопросы по ruby:
ruby_question1 = test_ruby.questions.find_or_create_by!(
  body: 'Что такое руби?'
)

ruby_question2 = test_ruby.questions.find_or_create_by!(
  body: 'Что сделает команда puts?'
)

ruby_question3 = test_ruby.questions.find_or_create_by!(
  body: 'Какой символ используется для создания коментариев?'
)

ruby_question3 = test_ruby.questions.find_or_create_by!(
  body: 'Кто является создателем Ruby?'
)


# ruby_question1, ruby_question2, ruby_question3, ruby_question4 =
#   test_ruby.questions.find_or_create_by!([
#                                 { body: 'Что такое руби?' },
#                                 { body: 'Что сделает команда puts?' },
#                                 { body: 'Какой символ используется для создания коментариев?' },
#                                 { body: 'Кто является создателем Ruby?' }
#                               ])

# вопросы по html:
html_question1 = test_html.questions.find_or_create_by!(
  body: 'Какой тег используется для создания заголовка в HTML?'
)

html_question2 = test_html.questions.find_or_create_by!(
  body: 'Какой тег используется для создания абзаца текста в HTML?'
)

html_question3 = test_html.questions.find_or_create_by!(
  body: 'Какой тег используется для создания ссылки в HTML?'
)

html_question4 = test_html.questions.find_or_create_by!(
  body: 'Какой тег используется для создания списка с маркерами (ненумерованный список) в HTML?'
)

# html_question1, html_question2, html_question3, html_question4 =
#   test_html.questions.find_or_create_by!([
#                                 { body: 'Какой тег используется для создания заголовка в HTML?' },
#                                 { body: 'Какой тег используется для создания абзаца текста в HTML?' },
#                                 { body: 'Какой тег используется для создания ссылки в HTML?' },
#                                 { body: 'Какой тег используется для создания списка с маркерами (ненумерованный список) в HTML?' }
#                               ])

# вопросы по фильмам:
movies_question1 = easy_test_movies.questions.find_or_create_by!(
  body: 'Какой фильм получил премию Оскар как лучший фильм 1994 года?'
)

movies_question2 = easy_test_movies.questions.find_or_create_by!(
  body: 'В каком фильме робот по имени Валли нашел последнее живое растение на планете Земля?'
)

movies_question3 = easy_test_movies.questions.find_or_create_by!(
  body: "Какой актер сыграл гланую роль в фильме 'Бойцовский клуб'?"
)

movies_question4 = easy_test_movies.questions.find_or_create_by!(
  body: 'Какой фильм является классическим музыкальным мультфильмом Дисней?'
)

# movies_question1, movies_question2, movies_question3, movies_question4 =
#   easy_test_movies.questions.find_or_create_by!([
#                                        { body: 'Какой фильм получил премию Оскар как лучший фильм 1994 года?' },
#                                        { body: 'В каком фильме робот по имени Валли нашел последнее живое растение на планете Земля?' },
#                                        { body: "Какой актер сыграл гланую роль в фильме 'Бойцовский клуб'?" },
#                                        { body: 'Какой фильм является классическим музыкальным мультфильмом Дисней?' }
#                                      ])

# вопросы по гарри поттеру
harry_potter_question1 = test_harry_potter.questions.find_or_create_by!(
  body: 'Как называется первая книга о Гарри Поттере, написанная Джоан Роулинг?'
)

harry_potter_question2 = test_harry_potter.questions.find_or_create_by!(
  body: 'На какой факультет в Хогвартсе поступает Гарри Поттер?'
)

harry_potter_question3 = test_harry_potter.questions.find_or_create_by!(
  body: 'Как звали директора Хогвартса?'
)

harry_potter_question4 = test_harry_potter.questions.find_or_create_by!(
  body: 'Как звали лучшего друга Гарри Поттера?'
)

# harry_potter_question1, harry_potter_question2, harry_potter_question3, harry_potter_question4 =
#   test_harry_potter.questions.find_or_create_by!([
#                                         { body: 'Как называется первая книга о Гарри Поттере, написанная Джоан Роулинг?' },
#                                         { body: 'На какой факультет в Хогвартсе поступает Гарри Поттер?' },
#                                         { body: 'Как звали директора Хогвартса?' },
#                                         { body: 'Как звали лучшего друга Гарри Поттера?' }
#                                       ])

# Ответы к тесту по ruby. 1 вопрос
ruby_question1.answers.find_or_create_by!(
  body: 'Ruby - это язык программирования с удобным синтаксисом для веб-разработки',
  correct: true
)

ruby_question1.answers.find_or_create_by!(
  body: 'Ruby - это драгоценный камень',
  correct: false
)

ruby_question1.answers.find_or_create_by!(
  body: 'Ruby - это музыкальный жанр',
  correct: false
)

ruby_question1.answers.find_or_create_by!(
  body: 'Ruby - это валюта в Индии',
  correct: false
)

# ruby_question1.answers.find_or_create_by!([
#                                  { body: 'Ruby - это язык программирования с удобным синтаксисом для веб-разработки',
#                                    correct: true },
#                                  { body: 'Ruby - это драгоценный камень', correct: false },
#                                  { body: 'Ruby - это музыкальный жанр', correct: false },
#                                  { body: 'Ruby - это валюта в Индии', correct: false }
#                                ])

# Ответы к тесту по ruby. 2 вопрос
ruby_question2.answers.find_or_create_by!(
  body: 'Создаст новую переменную',
  correct: false
)

ruby_question2.answers.find_or_create_by!(
  body: 'Завершит выполнение программы',
  correct: false
)

ruby_question2.answers.find_or_create_by!(
  body: 'Очистит экран консоли',
  correct: false
)

ruby_question2.answers.find_or_create_by!(
  body: 'Выведет информацию на экран и добавит перевод строки',
  correct: true
)

# ruby_question2.answers.find_or_create_by!([
#                                  { body: 'Создаст новую переменную', correct: false },
#                                  { body: 'Завершит выполнение программы', correct: false },
#                                  { body: 'Очистит экран консоли', correct: false },
#                                  { body: 'Выведет информацию на экран и добавит перевод строки', correct: true }
#                                ])

# Ответы к тесту по ruby. 3 вопрос
ruby_question3.answers.find_or_create_by!(
  body: '&',
  correct: false
)

ruby_question3.answers.find_or_create_by!(
  body: '#',
  correct: true
)

ruby_question3.answers.find_or_create_by!(
  body: '!',
  correct: false
)

ruby_question3.answers.find_or_create_by!(
  body: '=',
  correct: false
)

# ruby_question3.answers.find_or_create_by!([
#                                  { body: '&', correct: false },
#                                  { body: '#', correct: true },
#                                  { body: '!', correct: false },
#                                  { body: '=', correct: false }
#                                ])

# Ответы к тесту по ruby. 4 вопрос
ruby_question4.answers.find_or_create_by!(
  body: 'Марк Цукерберг',
  correct: false
)

ruby_question4.answers.find_or_create_by!(
  body: 'Мацумото Юкихиро (Matz)',
  correct: true
)

ruby_question4.answers.find_or_create_by!(
  body: 'Стив Джобс',
  correct: false
)

ruby_question4.answers.find_or_create_by!(
  body: 'Джефф Безос',
  correct: false
)

# ruby_question4.answers.find_or_create_by!([
#                                  { body: 'Марк Цукерберг', correct: false },
#                                  { body: 'Мацумото Юкихиро (Matz)', correct: true },
#                                  { body: 'Стив Джобс', correct: false },
#                                  { body: 'Джефф Безос', correct: false }
#                                ])

# Ответы к тесту по html. 1 вопрос
html_question1.answers.find_or_create_by!(
  body: '<title>',
  correct: false
)

html_question1.answers.find_or_create_by!(
  body: '<header>',
  correct: false
)

html_question1.answers.find_or_create_by!(
  body: '<h1>',
  correct: true
)

html_question1.answers.find_or_create_by!(
  body: '<p>',
  correct: false
)

# html_question1.answers.find_or_create_by!([
#                                  { body: '<title>', correct: false },
#                                  { body: '<header>', correct: false },
#                                  { body: '<h1>', correct: true },
#                                  { body: '<p>', correct: false }
#                                ])

# Ответы к тесту по html. 2 вопрос
html_question2.answers.find_or_create_by!(
  body: '<para>',
  correct: false
)

html_question2.answers.find_or_create_by!(
  body: '<p>',
  correct: true
)

html_question2.answers.find_or_create_by!(
  body: '<text>',
  correct: false
)

html_question2.answers.find_or_create_by!(
  body: '<a>',
  correct: false
)

# html_question2.answers.find_or_create_by!([
#                                  { body: '<para>', correct: false },
#                                  { body: '<p>', correct: true },
#                                  { body: '<text>', correct: false },
#                                  { body: '<a>', correct: false }
#                                ])

# Ответы к тесту по html. 3 вопрос
html_question3.answers.find_or_create_by!(
  body: '<link>',
  correct: false
)

html_question3.answers.find_or_create_by!(
  body: '<a>',
  correct: true
)

html_question3.answers.find_or_create_by!(
  body: '<url>',
  correct: false
)

html_question3.answers.find_or_create_by!(
  body: '<href>',
  correct: false
)

# html_question3.answers.find_or_create_by!([
#                                  { body: '<link>', correct: false },
#                                  { body: '<a>', correct: true },
#                                  { body: '<url>', correct: false },
#                                  { body: '<href>', correct: false }
#                                ])

# Ответы к тесту по html. 4 вопрос
html_question4.answers.find_or_create_by!(
  body: '<list>',
  correct: false
)

html_question4.answers.find_or_create_by!(
  body: '<ol>',
  correct: false
)

html_question4.answers.find_or_create_by!(
  body: '<li>',
  correct: false
)

html_question4.answers.find_or_create_by!(
  body: '<ul>',
  correct: true
)

# html_question4.answers.find_or_create_by!([
#                                  { body: '<list>', correct: false },
#                                  { body: '<ol>', correct: false },
#                                  { body: '<li>', correct: false },
#                                  { body: '<ul>', correct: true }
#                                ])

# Ответы к тесту по фильмам. 1 вопрос
movies_question1.answers.find_or_create_by!(
  body: 'Зеленая миля',
  correct: false
)

movies_question1.answers.find_or_create_by!(
  body: 'Форест Гамп',
  correct: false
)

movies_question1.answers.find_or_create_by!(
  body: 'Список Шиндлера',
  correct: true
)

movies_question1.answers.find_or_create_by!(
  body: 'Лови волну',
  correct: false
)


# movies_question1.answers.find_or_create_by!([
#                                    { body: 'Зеленая миля', correct: false },
#                                    { body: 'Форест Гамп', correct: false },
#                                    { body: 'Список Шиндлера', correct: true },
#                                    { body: 'Лови волну', correct: false }
#                                  ])

# Ответы к тесту по фильмам. 2 вопрос
movies_question2.answers.find_or_create_by!(
  body: 'Человек будущего',
  correct: false
)

movies_question2.answers.find_or_create_by!(
  body: 'Люди в черном',
  correct: false
)

movies_question2.answers.find_or_create_by!(
  body: 'Валли',
  correct: true
)

movies_question2.answers.find_or_create_by!(
  body: 'Ледниковый период',
  correct: false
)

# movies_question2.answers.find_or_create_by!([
#                                    { body: 'Человек будущего', correct: false },
#                                    { body: 'Люди в черном', correct: false },
#                                    { body: 'Валли', correct: true },
#                                    { body: 'Ледниковый период', correct: false }
#                                  ])

# Ответы к тесту по фильмам. 3 вопрос
movies_question3.answers.find_or_create_by!(
  body: 'Джек Николсон',
  correct: false
)

movies_question3.answers.find_or_create_by!(
  body: 'Брэд Питт',
  correct: true
)

movies_question3.answers.find_or_create_by!(
  body: 'Сергей Безруков',
  correct: false
)

movies_question3.answers.find_or_create_by!(
  body: 'Киану Ривз',
  correct: false
)

# movies_question3.answers.find_or_create_by!([
#                                    { body: 'Джек Николсон', correct: false },
#                                    { body: 'Брэд Питт', correct: true },
#                                    { body: 'Сергей Безруков', correct: false },
#                                    { body: 'Киану Ривз', correct: false }
#                                  ])

# Ответы к тесту по фильмам. 4 вопрос
movies_question4.answers.find_or_create_by!(
  body: 'Золушка',
  correct: true
)

movies_question4.answers.find_or_create_by!(
  body: 'Звездные войны',
  correct: false
)

movies_question4.answers.find_or_create_by!(
  body: 'Побег из шоушенка',
  correct: false
)

movies_question4.answers.find_or_create_by!(
  body: 'Поющие под дождем',
  correct: false
)

# movies_question4.answers.find_or_create_by!([
#                                    { body: 'Золушка', correct: true },
#                                    { body: 'Звездные войны', correct: false },
#                                    { body: 'Побег из шоушенка', correct: false },
#                                    { body: 'Поющие под дождем', correct: false }
#                                  ])

# Ответы к тесту по Гарри Поттеру. 1 вопрос
harry_potter_question1.answers.find_or_create_by!(
  body: 'Гарри Поттер и Тайная комната',
  correct: false
)

harry_potter_question1.answers.find_or_create_by!(
  body: 'Гарри Поттер и Узник Азкабана',
  correct: false
)

harry_potter_question1.answers.find_or_create_by!(
  body: 'Гарри Поттер и Философский камень',
  correct: true
)

harry_potter_question1.answers.find_or_create_by!(
  body: 'Гарри Поттер и Орден Феникса',
  correct: false
)

# harry_potter_question1.answers.find_or_create_by!([
#                                          { body: 'Гарри Поттер и Тайная комната', correct: false },
#                                          { body: 'Гарри Поттер и Узник Азкабана', correct: false },
#                                          { body: 'Гарри Поттер и Философский камень', correct: true },
#                                          { body: 'Гарри Поттер и Орден Феникса', correct: false }
#                                        ])

# Ответы к тесту по Гарри Поттеру. 2 вопрос
harry_potter_question2.answers.find_or_create_by!(
  body: 'Гриффиндор',
  correct: true
)

harry_potter_question2.answers.find_or_create_by!(
  body: 'Слизерин',
  correct: false
)

harry_potter_question2.answers.find_or_create_by!(
  body: 'Пуффендуй',
  correct: false
)

harry_potter_question2.answers.find_or_create_by!(
  body: 'Когтевран',
  correct: false
)

# harry_potter_question2.answers.find_or_create_by!([
#                                          { body: 'Гриффиндор', correct: true },
#                                          { body: 'Слизерин', correct: false },
#                                          { body: 'Пуффендуй', correct: false },
#                                          { body: 'Когтевран', correct: false }
#                                        ])

# Ответы к тесту по Гарри Поттеру. 3 вопрос
harry_potter_question3.answers.find_or_create_by!(
  body: 'Дамблдор',
  correct: true
)

harry_potter_question3.answers.find_or_create_by!(
  body: 'Снейп',
  correct: false
)

harry_potter_question3.answers.find_or_create_by!(
  body: 'Малфой',
  correct: false
)

harry_potter_question3.answers.find_or_create_by!(
  body: 'Грюмс',
  correct: false
)

# harry_potter_question3.answers.find_or_create_by!([
#                                          { body: 'Дамблдор', correct: true },
#                                          { body: 'Снейп', correct: false },
#                                          { body: 'Малфой', correct: false },
#                                          { body: 'Грюмс', correct: false }
#                                        ])

# Ответы к тесту по Гарри Поттеру. 4 вопрос
harry_potter_question4.answers.find_or_create_by!(
  body: 'Драко Малфой',
  correct: false
)

harry_potter_question4.answers.find_or_create_by!(
  body: 'Сириус Блэк',
  correct: false
)

harry_potter_question4.answers.find_or_create_by!(
  body: 'Рон Уизли',
  correct: true
)

harry_potter_question4.answers.find_or_create_by!(
  body: 'Том Реддл',
  correct: false
)

# harry_potter_question4.answers.find_or_create_by!([
#                                          { body: 'Драко Малфой', correct: false },
#                                          { body: 'Сириус Блэк', correct: false },
#                                          { body: 'Рон Уизли', correct: true },
#                                          { body: 'Том Реддл', correct: false }
#                                        ])

alex.test_passings.find_or_create_by!(
  status: 'пройден',
  test: test_ruby
)

alex.test_passings.find_or_create_by!(
  status: 'в процессе',
  test: test_harry_potter
)


# alex.test_passings.find_or_create_by!([
#                            { status: 'пройден', test: test_ruby },
#                            { status: 'в процессе', test: test_harry_potter }
#                          ])

kate.test_passings.find_or_create_by!(
  status: 'в процессе',
  test: test_harry_potter
)

kate.test_passings.find_or_create_by!(
  status: 'в процессе',
  test: test_ruby
)

# kate.test_passings.find_or_create_by!([
#                            { status: 'в процессе', test: test_harry_potter },
#                            { status: 'в процессе', test: test_ruby }
#                          ])

nikita.test_passings.find_or_create_by!(
  status: 'в процессе',
  test: test_html
)

nikita.test_passings.find_or_create_by!(
  status: 'пройден',
  test: easy_test_movies
)

# nikita.test_passings.find_or_create_by!([
#                              { status: 'в процессе', test: test_html },
#                              { status: 'пройден', test: easy_test_movies }
#                            ])
