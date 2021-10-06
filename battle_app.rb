require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  get '/' do
    "Testing infrastructure working!"
  end
end

