require 'rubygems'
require 'rack'

class Go
  def call(env)
    now = Time.now
    [200, {'Content-Type' => 'text/html'}, "<h1>Rack - HTML</h1><p>The time is: #{Time.now.to_s}"]
  end
end

Rack::Handler::Thin.run Go.new, :Port => 3000
