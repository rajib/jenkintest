#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
require 'rubygems'
require File.expand_path('../config/application', __FILE__)

Jenkintest::Application.load_tasks

gem 'ci_reporter'
require 'ci/reporter/rake/test_unit' # use this if you're using Test::Unit

