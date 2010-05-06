require 'v8'

class V8::EnvJS < V8::Context
  def initialize(*args)
    super(*args)
    self.load(File.dirname(__FILE__) + '/env.js')
  end
  
  def document
    self['document']
  end
  
  def window
    self['window']
  end
end