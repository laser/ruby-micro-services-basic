require 'barrister-sinatra'
require 'pry'

# App
require './service.rb'

container = Barrister::SinatraContainer.new('./user_service.json', '/user_service', [UserService], 3001)
container.start
