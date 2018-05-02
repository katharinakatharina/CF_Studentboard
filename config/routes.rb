Rails.application.routes.draw do
  resources :students_articles
  get 'students_articles/index'
  get 'students_articles/new'
  get 'students_articles/edit'
  root 'layouts#landing_page'
end
