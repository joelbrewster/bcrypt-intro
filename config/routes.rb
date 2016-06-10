Rails.application.routes.draw do
  get '/' => 'posts#index'
  get '/posts/:id/comments' => 'posts#showcomments'
  get '/login' => 'users#login'
  post '/login' => 'users#verify'
end
