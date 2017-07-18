Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'greeter#index'
  get 'greeter/:name' => 'greeter#hello'
end
