require 'rubygems'
require 'rack'
require 'haml'

class Go
  def call(env)
    now = Time.now
    [200, {'Content-Type' => 'text/html'}, Haml::Engine.new("%h1 Rack - HAML\n%p\n  The time is:\n  =to_s").render(now)]
  end
end

Rack::Handler::Thin.run Go.new, :Port => 3000
