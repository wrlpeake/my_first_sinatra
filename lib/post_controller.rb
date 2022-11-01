# frozen_string_literal: true

require 'sinatra/base'

class PostController < Sinatra::Base
  post '/post' do
    'Post controller working.'
  end
end
