Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get takes in parameters as a hash
  get '/' => 'home#index'

  get '/testing/:param1/:param2' => 'home#url_testing'
  post '/testing/post_test' => 'home#post_test'
end

