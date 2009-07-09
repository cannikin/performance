require 'rubygems'
require 'sinatra'

get '/' do
  @now = Time.now
  "<h1>Sinatra - HTML</h1><p>The time is now: #{@now}"
end
