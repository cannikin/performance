class GoController < ApplicationController
  
  caches_page :cache
  
  def erb
    @now = Time.now
  end
  
  def haml
    @now = Time.now
  end
  
  def builder
    @now = Time.now
    render 'builder.xml.builder'
  end
  
  def html
    @now = Time.now
    render 'index.html'
  end
  
  def cache
    @now = Time.now
  end

end
