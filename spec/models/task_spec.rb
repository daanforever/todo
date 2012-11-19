require 'spec_helper'

describe "Task model" do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "create() method" do
    context "should not be valid "  do
      it "with empty :text" do
        task = Task.new(:text => '', :user => FactoryGirl.create(:user))
        task.should_not be_valid
      end

      it "without :user" do
        task = Task.new(:text => 'Text')
        task.should_not be_valid
      end
    end # context

    context "with params" do
      it "should be valid" do
        task = Task.new(:text => 'Some text', :user => FactoryGirl.create(:user))
        task.should be_valid
      end
    end # context
  end # describe create()
end
