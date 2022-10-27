# frozen_string_literal: true

require 'sinatra/base'
require_relative 'hello_controller'
require_relative 'different_controller'

class MyApi < Sinatra::Base
  use HelloController
  use DifferentController
end
