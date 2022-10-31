# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require 'rspec'
require 'rack/test'
require 'tic_tac_toe_api'

RSpec.describe 'Tic Tac Toe Sinatra API' do
  include Rack::Test::Methods

  def app
    TicTacToeAPI
  end

  it 'starts correctly and gets the welcome message' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Welcome to Tic-Tac-Toe!')
  end

  it 'posts from the post controller' do
    post '/post'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Post controller working.')
  end

  it 'loads a new game of tictactoe from the gem and returns json of the player marks and board' do
    get '/loadgame/XY'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('{"player_one_marker":"X","player_two_marker":"Y","board":[1,2,3,4,5,6,7,8,9]}')
  end
end
