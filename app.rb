require 'sinatra'
require_relative 'coinchanger.rb'

get '/' do 
	erb :get_name
end

post '/name' do
      name = params[:user_name]
      redirect '/cents?user_name=' + name

  end
  get '/cents' do
  	name = params[:users_name]
  	erb :get_cents, :locals => {:name => name}

  end
  post '/cents' do
  	name = params[:user_name].capitalize
  	cents = params[:cents].to_i
  	coins = coins_in_change(cents)
  	"The least amount of change I can give you for #{cents} cents is: #{coins[:dollar]} dollar(s),#{coins[:quater]} quarter(s), #{coins[:dime]} dime(s), #{coins[:nickel]}nickel(s), #{coins[:penny]}penny(s)."

  end


  # coins each do |key, value|
  #if value == nil
  #value = 0
  #elsif value
 # end
 #end 