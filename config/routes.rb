Rails.application.routes.draw do

  resources :tests do
    resources :questions, except: :index, shallow: true
  end


  # root to: 'tests#index' # - зменение стартово странички в браузере для нашего приложения (направляем в контроллер тест на метод индекс)

  # resources :tests #- создание 7 стандартных урлов

  # resources :tests do
  #   resources :questions, shallow: true -  # вложенность ресурсов ( один ко многим ) получение вопроса по тесту и тп
  # end

  # resources :tests do - # создание своих собственных урлов для выборки тестов по уровню begginer, и сарта теста(GET /tests/beginner, POST /tests/1/start)
  #   get :beginner, on: :collection # над всей коллекцией (над всеми тестами)

  #   member do # над конкретым тестом (мембер)
  #     post :start
  #   end
  # end

  #  определение вручную урлов :
  # get '/tests', to: 'tests#index'

  # get '/tests/:id', to: 'tests#show', as: :test # as: :test - имя хелпера

  # get '/tests/:id/start', to: 'tests#start'

  #  и тд
end
