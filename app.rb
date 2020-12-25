require 'sinatra/base'
require_relative './lib/entry_log.rb'
require_relative './lib/database_connection.rb'
class Diary < Sinatra::Base

    get '/' do
        @entries = EntryLog.all
        erb :index
    end

    post '/add' do
        EntryLog.add(title: params[:title], body: params[:body])
        erb :add
    end
end