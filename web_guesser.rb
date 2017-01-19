require 'sinatra'
require 'sinatra/reloader'

  SECRET_NUMBER = rand(100)

get '/' do
  guess = params["guess"].to_i
  message = check_guess(guess)
  erb :index, :locals => {:number => SECRET_NUMBER,
                          :message => message,
                          :color => @color}
  end

  def check_guess(guess)
    case
    when guess > SECRET_NUMBER + 5
                  @color = 'red'
                 "Way too high!"
    when guess > SECRET_NUMBER
                  @color = 'pink'
                  "Too high!"
    when guess <= SECRET_NUMBER - 5
                  @color = 'red'
                  "Way too low!"
    when guess < SECRET_NUMBER 
                  @color = 'pink'
                  "Too low!"
    else guess == SECRET_NUMBER
                  @color = 'green'
                  "You got it right! THE SECRET NUMBER is #{SECRET_NUMBER}"
  end
end