require 'v8'

class V8::EnvJS
  def initialize
    @cxt = V8::Context.new
    @cxt.load(File.dirname(__FILE__) + '/env.js')
    @env = @cxt['Envjs']
  end
  
  def document
    @cxt['document']
  end
  
  def window
    @cxt['window']
  end
  
  def eval(*args)
    @cxt.eval(*args)
  end
  
  def open(url)
    @env.call(url)
  end
end