#!/usr/bin/env ruby

require 'rubygems'
require 'thor'

class Student < Thor
  desc 'create NAME', 'Create a new student providing the name'
  def create(name)
    puts "Creating the user with name: #{name}"
  end

  desc 'show NAME', 'Show information for a student'
  def show(name)
    puts "Shwwing information for the user with name: #{name}"
  end
end

class Course < Thor
  option(:year, default: 2016, type: :numeric, desc: "Delete the file after parsing it")
  desc "list", "List all the available subjects"
  def list
    puts "printing info for all the courses for year #{options[:year]}"
  end
end

class Subject < Thor
  desc "list", "List all the available subjects"
  def list
    puts 'printing info for all the subjects'
  end
end

class Client < Thor
  class_option(:user, type: :string, aliases: :u, default: 'example_user',
               desc: 'Providing credentials [default: example_user]')

  desc 'student', 'manage student operations'
  subcommand 'student', Student

  desc 'course', 'manage course operations'
  subcommand 'course', Course

  # desc 'subject', 'manage student operations'
  # subcommand 'subject', Subject
  register(Subject, 'subject', 'subject', 'manage subject operations')
end

Client.start
