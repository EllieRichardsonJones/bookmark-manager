require 'sinatra/base'
require './lib/bookmark'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/add_bookmarks' do
    erb :add_bookmarks
  end

  post '/adding_bookmarks' do
    Bookmark.create(params[:url_field])
    redirect '/success'
  end

  get '/success' do
    erb :success
  end
end
