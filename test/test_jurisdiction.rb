require 'minitest_helper'

jurisdiction :foo do
  def monkey_say
    "EEEEK!"
  end
end

jurisdiction :bar, using: :capybara do
  def go_there
    visit '/'
  end
end

describe Jurisdiction do

  it "should define a new module under Jurisdiction::" do
    Jurisdiction.constants.must_include :Foo
  end

  it "should define methods on that module" do
    Jurisdiction::Foo.methods.must_include :monkey_say
  end

  it "should be accessible via the helper method" do
    foo.monkey_say.must_equal "EEEEK!"
  end

  describe "using" do
    
    it "should extend functionality" do
      Jurisdiction::Bar.methods.must_include :visit
    end

  end
end
