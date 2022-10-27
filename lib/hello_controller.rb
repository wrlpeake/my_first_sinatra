# frozen_string_literal: true

require 'sinatra/base'

class HelloController < Sinatra::Base
  get '/' do
    'Hello World!'
  end
end
