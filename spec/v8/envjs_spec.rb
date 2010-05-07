
require File.dirname(__FILE__) + '/../spec_helper'
require 'v8/envjs'

describe V8::EnvJS do      
    before  do
      @env = V8::EnvJS.new
    end
        
    it "has a document" do
      @env.document.should_not be_nil      
    end
    
    it "has a window" do
      @env.window.should_not be_nil
    end
    
end