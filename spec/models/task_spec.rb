require 'spec_helper'

describe "Task model" do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "create() method" do
    context "without params"  do
      it "should not be valid" do
        task = Task.new(:text => '')
        task.should_not be_valid
      end
    end # context

    context "with params" do
      it "should be valid" do
        task = Task.new(:text => 'Some text')
        task.should be_valid
      end
    end # context
  end # describe create()
end
