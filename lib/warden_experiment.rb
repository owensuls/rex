# To test this code manually:
#ruby-1.9.3-p551:~$ curl http://owen:pass@localhost:8080/secure
#{"data":"secure content brought to you by Owen"}ruby-1.9.3-p551:~$ curl http://owen2:pass@localhost:8080/secure
#{"data":"secure content brought to you by Owen"}

require 'rubygems'
require 'sinatra' # Framework for REST APIs
require 'rack'    # Middleware framework handling HTTP stuff
require 'warden'  # Authentication framework
require 'json'

class User
  attr_accessor :username, :password
  def initialize(username, password)
    @username = username
    @password = password
  end
end

FAILURE_APP = lambda { |e| [401, {'Content-Type' => 'text/plain'},['You are not authenticated!']]}

module App
  class Main < Sinatra::Base
    get '/' do
      { data: 'hello owen' }.to_json
    end

    get '/secure/?' do
      env['warden'].authenticate!
      { data: 'secure content brought to you by Owen' }.to_json
    end
  end
end

builder = Rack::Builder.new do

  Warden::Strategies.add(:st1) do
    def valid?
      true
    end

    def authenticate!   # This is the only mandatory Warden method we must implement
      u = nil
      puts 'using strategy :st1'
      auth = Rack::Auth::Basic::Request.new(env)
      username, password = auth.credentials
      if username == 'owen'
        u = User.new(username, password)
      end
      u.nil? ? fail('not logged in') : success!(u)
    end
  end

  Warden::Strategies.add(:st2) do
    def valid?
      true
    end

    def authenticate!
      u = nil
      puts 'using strategy :st2'
      auth = Rack::Auth::Basic::Request.new(env)
      username, password = auth.credentials
      if username == 'owen2'
        u = User.new(username, password)
      end
      u.nil? ? fail('not logged in') : success!(u)
    end
  end

  use Rack::MethodOverride
  use Warden::Manager do |config|
    config.scope_defaults :default,
      strategies: [:st1, :st2]
    config.failure_app = FAILURE_APP
  end

  map '/' do
    run App::Main
  end
end

Rack::Handler::WEBrick.run builder
