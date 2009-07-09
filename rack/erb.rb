require 'rubygems'
require 'rack'
require 'erb'

class Go
  def call(env)
    now = Time.now
    [200, {'Content-Type' => 'text/html'}, ERB.new("<h1>Rack - ERB</h1><p>The time is:<%= now %>").result(binding)]
  end
end

Rack::Handler::Thin.run Go.new, :Port => 3000
