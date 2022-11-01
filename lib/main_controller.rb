# frozen_string_literal: true

require 'sinatra/base'
require 'tic_tac_toe_wp'

class MainController < Sinatra::Base
  get '/' do
    'Welcome to Tic-Tac-Toe!'
  end

  get '/loadgame/:marker_one:marker_two' do
    marker_one = params['marker_one']
    marker_two = params['marker_two']
    $tic_tac_toe_wp = TicTacToeWP::GameLogic.new(marker_one, marker_two)
    $player_one = $tic_tac_toe_wp.create_player(marker_one)
    $player_two = $tic_tac_toe_wp.create_player(marker_two)
    $board = $tic_tac_toe_wp.get_game_board

    response = {
      'player_one_marker' => $player_one.marker,
      'player_two_marker' => $player_two.marker,
      'board' => $board
    }
    response.to_json
  end

  post '/loadgame/:marker_one:marker_two/:marker/:position' do
    marker = params['marker']
    position = params['position'].to_i

    $tic_tac_toe_wp.mark_game_board(marker, position)
    $board = $tic_tac_toe_wp.get_game_board

    response = {
      'player_marker' => marker,
      'board' => $board
    }
    response.to_json
  end

  get '/loadgame/:marker_one:marker_two/:marker/:position' do
    response = {
      'board' => $board
    }
    response.to_json
  end
end
