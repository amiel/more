require 'test/unit'

require 'rubygems'
require 'active_support'

module Rails
  extend self
  
  def env
    "development"
  end
end

begin
  require 'less'
rescue LoadError => e
  e.message << " (You may need to install the less gem)"
  raise e
end

require 'more'