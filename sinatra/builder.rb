require 'rubygems'
require 'sinatra'
require 'builder'

get '/' do
  @now = Time.now
  # @builder = Builder::XmlMarkup.new
  # content_type 'application/xml', :charset => 'utf-8'
  builder :index
end
