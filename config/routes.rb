Attendence::Application.routes.draw do
  root :to => 'home#index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  ActiveAdmin.routes(self)

  get "home/index"
  get "home/attendence"
  post "home/get_students"
  get "home/get_students"
  post "home/submit"
  get "home/show_attendence"
  get "home/all_attendence"
end
