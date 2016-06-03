#!/usr/bin/env ruby

require 'docopt'

class HelpException < RuntimeError; end

SCRIPT = File.basename(__FILE__)

CLIENT_DOC = <<DOCOPT
Client to interact with the University application.

Usage:
  #{SCRIPT} [options] student create NAME SURNAME
  #{SCRIPT} [options] student show NAME
  #{SCRIPT} [options] student list
  #{SCRIPT} [options] student delete NAME
  #{SCRIPT} [options] course
  #{SCRIPT} [options] subject
  #{SCRIPT} -h | --help

Options:
  -h, --help          # Show this screen
  -u, --user USER     # Provide credentials [default: example_user]

Commands:
  #{SCRIPT} [options] student create NAME
    Creates a new student with the name NAME

  #{SCRIPT} [options] student show NAME
    Show the student with the name NAME

  #{SCRIPT} [options] student list
    List all the students

  #{SCRIPT} [options] student delete NAME
    Delete the student with the name NAME

  #{SCRIPT} [options] course
    Get information about courses

  #{SCRIPT} [options] subject
    Get information about subjects
Examples:
  #{SCRIPT} student create Alberto
  #{SCRIPT} student show Alberto
DOCOPT

# Application runner
class Client
  def initialize(usage)
    @opts = Docopt.docopt(usage, help: false)
    fail HelpException if @opts['--help']
  end

  def run
    puts "processing..."
    puts @opts.inspect
  end

  def self.main
    Client.new(CLIENT_DOC).run
    return 0
  rescue HelpException
    puts CLIENT_DOC
    return 0
  rescue Docopt::Exit => e
    puts "#{e.message}" if e.message
    return 1
  end

  private

end

exit Client.main if __FILE__ == $0
