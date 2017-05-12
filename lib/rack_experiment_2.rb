# This file is used to experiment with Rack Middleware.
require 'rack'

class MyRackExperiment2
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, ['Hi Owen 1856'] ]
  end
end
