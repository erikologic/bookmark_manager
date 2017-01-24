require 'sinatra/base'
#require 'rack/showexceptions'
require './app/models/link'

class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  run! if app_file == $0
end
