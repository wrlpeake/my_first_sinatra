# frozen_string_literal: true

require 'sinatra/base'
require 'tic_tac_toe_wp'

class GetController < Sinatra::Base
  get '/' do
    'Hello World!'
  end

  get '/loadgame' do
    @tic_tac_toe_wp = TicTacToeWP::GameLogic.new('X', 'O')
    "Welcome to Tic-Tac-Toe. Let's play!"
  end

  get '/loadgame/displayboard' do
    @tic_tac_toe_wp = TicTacToeWP::GameLogic.new('X', 'O')
    @tic_tac_toe_wp.get_game_board.to_s
  end
end
