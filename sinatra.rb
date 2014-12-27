require 'rubygems'
require 'sinatra'
require 'sinatra/simple_auth'

enable :sessions
set :password, 'asdasd' # set the password
set :home, '/' # where user should be redirected after successful authentication

get '/login/?' do
  erb :login # page with auth form
end

get '/' do
  if authorized? # helper method
    erb :secure
  else
    erb :login
  end
end