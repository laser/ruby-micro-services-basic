require 'barrister-sinatra'
require 'pry'

# App
require './implementation.rb'

opts = { mount_path: '/user_service' }
container = Barrister::SinatraContainer.new('./interface.json', UserService.new, opts)
container.start
