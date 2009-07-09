require 'rubygems'
require 'rack'
require 'builder'

class Go
  def call(env)
    now = Time.now
    builder = Builder::XmlMarkup.new
    output = builder.div { |div| div.h1('Rack - Builder'); div.p("The time is: #{now.to_s}") }
    [200, {'Content-Type' => 'text/html'}, output]
  end
end

Rack::Handler::Thin.run Go.new, :Port => 3000
