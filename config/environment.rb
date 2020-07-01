ENV['SINATRA_ENV'] ||= "development"

require 'thread'
require 'dotenv/load'
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
require_all 'models'