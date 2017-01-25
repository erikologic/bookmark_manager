ENV["RACK_ENV"] ||= "development"
require 'sinatra/base'
require_relative 'data_mapper_setup'
require 'pry'

class BookmarkManager < Sinatra::Base
  enable :sessions
  set :session_secret, 'secret'

  helpers do
    def current_user
      User.get(session[:user_id])
    end
  end

  get '/' do
    redirect '/links'
  end

  get '/signup' do
    erb :signup
  end

  post '/register' do
    user = User.new(email: params[:email], password: params[:password])
    user.save
    session[:user_id] = user.id
    redirect to('/links')
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    link = Link.new(url: params[:url], title: params[:title])
    t = Tag.first_or_create(name: params[:tag])
    link.tags << t
    link.save
    redirect to('/links')
  end

  get '/tags/:tag' do |tag|
  @links = Tag.all(name: tag).links
  erb :'links/index'
end
  #run! if app_file == $0
  run! if app_file == $0
end
