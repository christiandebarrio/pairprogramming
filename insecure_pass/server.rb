require 'pry'
require 'sinatra'
require 'sinatra/reloader'

require_relative './lib/insecure_pass.rb'

get "/" do
  erb(:home)
end

post "/login" do
  email = params[:email]
  password = params[:password]

  valid = PasswordChecker.new(email, password).check_password
  if valid
    redirect "/congratulations"
  else
    redirect "/"
  end
end

get "/congratulations" do
  erb(:congratulations)
end