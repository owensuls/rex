# Example of how to document a REST API or Sinatra based routes
require 'sinatra/base'
require 'doc_my_routes'
require 'rack'

DocMyRoutes.configure do |config|
  config.title = "My Application"
  config.description = "My Application description"
  config.destination_dir = '/tmp'
end

class MyApp < Sinatra::Base
  # Add support for documenting routes
  extend DocMyRoutes::Annotatable

  summary 'Example route'
  notes 'Simple route that gets an ID and returns a string'
  produces 'text/plain'
  status_codes [200]
  get '/:id' do |id|
    "Received #{id}"
  end
end

url_map = ::Rack::URLMap.new({ '/app' => MyApp.new })
#url_map = ::Rack::URLMap.new({ '/api' => Api.new, '/app' => App.new })

DocMyRoutes::RouteCollection.log_routes

DocMyRoutes::Documentation.generate

Rack::Handler::WEBrick.run url_map
