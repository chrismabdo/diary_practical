require 'sinatra/base'

class Diary < Sinatra::Base

    get '/' do
        erb :index
    end

    post '/add' do
        erb :add
    end
end