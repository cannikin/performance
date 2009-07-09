require 'rubygems'
require 'rack'
require 'haml'
require 'erb'

class HelloWorld
  def call(env)
    now = Time.now
    b = binding
    case env['PATH_INFO']
      when '/go.erb'
        b = binding
        [200, {'Content-Type' => 'text/html'}, ERB.new("<h1>Rack - ERB</h1><p>The time is:<%= now %>").result(b)]
      when '/go.haml'
        [200, {'Content-Type' => 'text/html'}, Haml::Engine.new("%h1 Rack - HAML\n%p\n  The time is:\n  =to_s").render(now)]
      when '/go.html'
        [200, {'Content-Type' => 'text/html'}, "<h1>Rack - HTML</h1><p>The time is: #{Time.now.to_s}"]
      else
        [404, {'Content-Type' => 'text/html'}, 'Page not found, try /go.erb or /go.haml']
    end
    
  end
end

Rack::Handler::Thin.run HelloWorld.new
