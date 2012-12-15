require 'spec_helper'

describe Role do
  describe "create()" do
    context "without :name" do
      it "not be valid" do
        role = Role.new()
        role.should_not be_valid
      end
    end
    context "with :name" do
      it "be valid" do
        role = Role.new(:name => 'testrole')
        role.should be_valid
      end
    end
  end
end
