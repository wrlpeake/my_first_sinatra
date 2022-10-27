# frozen_string_literal: true

require 'sinatra/base'

class DifferentController < Sinatra::Base
  get '/different/say_hello' do
    'Hello World from somewhere far!'
  end
end
