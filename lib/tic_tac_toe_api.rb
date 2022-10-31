# frozen_string_literal: true

require 'sinatra/base'
require_relative 'get_controller'
require_relative 'post_controller'

class TicTacToeAPI < Sinatra::Base
  use GetController
  use PostController
end
