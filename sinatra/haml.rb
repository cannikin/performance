require 'rubygems'
require 'sinatra'
require 'erb'

get '/' do
  @now = Time.now
  haml :index
end
