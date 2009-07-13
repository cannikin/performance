require 'rubygems'
require 'sinatra'
require 'builder'

get '/' do
  @now = Time.now
  builder :index
end
