require 'sinatra'
require 'slim'

enable :sessions

get '/' do
  redirect '/fr/welcome'
end

get '/fr/welcome' do 
   slim :'welcome/welcome'
end

get '/login/:name' do
  session[:name] = params[:name]
  slim :login
end

get '/deco' do
  session.clear
  redirect 'fr/welcome'
end