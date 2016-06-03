#!/usr/bin/env ruby

require 'optparse'

class Client
  class NoArgumentsSet < RuntimeError; end

  def initialize()
    @args = {}
  end

  def self.main
    Client.new.run    # Class level method. Create Client class, then call run method.
  end

  def run
    puts 'processing...'
    parse_opt
    puts @args.inspect
  end

  private

  def parse_opt
    option_parser.parse!(ARGV)
    validate_args
  end

  def validate_args
    # Un comment the next line to make user mandatory
    # fail NoArgumentsSet, 'Required arguments not set: --user' if @args[:user].nil?
  end

  def option_parser
    OptionParser.new do | opt |
      opt.banner = 'Client to interact with the University application.'
      opt.separator  ''
      opt.separator  'examples:'
      opt.separator  '    client_2.rb --user Owen'
      opt.separator  '    client_2.rb --user Owen --age 31'
      opt.separator  ''
      opt.separator  'Options'

      opt.on('-u', '--user USER', String, 'Providing credentials') do |user|
        @args[:user] = user
      end

      opt.on('-a', '--age AGE', Integer, 'Providing age') do |age|
        @args[:age] = age
      end

      opt.on('-h', '--help', '--usage', 'this message') do
        puts opt
        exit
      end
    end
  end
end

Client.main if __FILE__ == $PROGRAM_NAME  # If file exists runs this
