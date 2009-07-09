require 'rubygems'
require 'sinatra'
require 'erb'

get '/' do
  @now = Time.now
  erb :index
end
