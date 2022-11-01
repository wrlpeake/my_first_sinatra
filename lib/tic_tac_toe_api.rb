# frozen_string_literal: true

require 'sinatra/base'
require_relative 'main_controller'

class TicTacToeAPI < Sinatra::Base
  use MainController
end
