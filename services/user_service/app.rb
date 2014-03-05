require 'barrister-sinatra'
require 'pry'

# App
require './service.rb'

container = Barrister::SinatraContainer.new('./user_service.json', UserService.new)
container.start
