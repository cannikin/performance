require 'rubygems'
require 'sinatra'
require 'haml'
require 'erb'

get '/go.haml' do
  @now = Time.now
  haml :index
end

get '/go.erb' do
  @now = Time.now
  erb :index
end

