# frozen_string_literal: true

require 'sinatra/base'
require './lib/bookmark'

# :nodoc:
class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    p ENV

    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == BookmarkManager
end
