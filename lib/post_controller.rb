# frozen_string_literal: true

require 'sinatra/base'

class PostController < Sinatra::Base
  post '/different/say_hello' do
    'Hello World from somewhere far!'
  end
end
