require 'sinatra'
require 'sinatra/reloader'

  x = rand(101)
get '/' do
  "THE SECRET NUMBER is #{x}"
end