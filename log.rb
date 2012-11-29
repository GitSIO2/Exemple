require 'sinatra'
require 'slim'
require 'digest'

enable :sessions


get '/' do
  redirect '/fr/welcome'
end


get '/fr/welcome' do 
   slim :connect
end

post '/connexion' do
  if params[:username] =='bob' && Digest::MD5.hexdigest(params[:password])=="202cb962ac59075b964b07152d234b70"
	slim :'welcome/accueil'
  else
    "login ou mot de passe incorrecte"
  end
end
