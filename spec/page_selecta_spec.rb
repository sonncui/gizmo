require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "PageSelecta" do
  
  it "should provide a method load_mixins!" do
    PageSelecta.should respond_to :load_mixins!
  end
  
  describe ".load_mixins!" do
    it "should attempt to load mixin modules from provided path" do
      Object.send(:remove_const, :PageWithTestMixinStuff) if Object.const_defined?(:PageWithTestMixinStuff)
      PageSelecta.load_mixins! File.join(File.dirname(__FILE__), 'test_mixins')
      Object.const_defined?(:PageWithTestMixinStuff).should be_true
    end
  end

end