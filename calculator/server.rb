require 'sinatra'
require_relative './lib/calculator.rb'

get "/" do
  erb :home
end

post "/" do
  first = params[:first_number].to_i
  second = params[:second_number].to_i
  operation = params[:operation]

  if operation == "add"
    @result = Calculator.new.add(first, second)
  elsif operation == "substract"
    @result = Calculator.new.substract(first, second)
  elsif operation == "multiply"
    @result = Calculator.new.multiply(first, second)
  elsif operation == "divide"
    @result = Calculator.new.divide(first, second)
  end
    
    

  erb :home
end