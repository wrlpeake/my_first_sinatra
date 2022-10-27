# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require 'rspec'
require 'rack/test'
require 'my_first_sinatra'

RSpec.describe 'My first Sinatra' do
  include Rack::Test::Methods

  def app
    MyApi
  end

  it 'says hello world!' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello World!')
  end

  it 'says hello from different controller' do
    get '/different/say_hello'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello World from somewhere far!')
  end
end
