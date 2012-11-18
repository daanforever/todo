require 'spec_helper'

describe Task do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "create" do
    it "should require :text" do
      task = Task.new(:message => '')
      task.should_not be_valid
    end

    it "should be good" do
      task = Task.new(:message => 'Some text')
      task.should be_valid
    end
  end
end
