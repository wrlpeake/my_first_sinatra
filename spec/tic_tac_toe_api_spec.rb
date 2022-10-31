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

  it 'says hello world!' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello World!')
  end

  it 'posts hello from different controller' do
    post '/different/say_hello'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello World from somewhere far!')
  end

  it 'says a welcome message to the user' do
    get '/loadgame'
    expect(last_response).to be_ok
    expect(last_response.body).to eq("Welcome to Tic-Tac-Toe. Let's play!")
  end

  it 'gets the game board array' do
    get '/loadgame/displayboard'
    expect(last_response).to be_ok
    expect(last_response.body).to eq '[1, 2, 3, 4, 5, 6, 7, 8, 9]'
  end
end
