require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/' do
    @link = Link.new
    erb :index
  end



  run! if app_file == $0
end
