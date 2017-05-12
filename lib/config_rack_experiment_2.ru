require_relative 'rack_experiment_2'

@app = MyRackExperiment2.new

use Rack::Reloader, 0

run @app
