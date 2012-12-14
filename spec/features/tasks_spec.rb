require 'spec_helper'

describe "Tasks" do
  context "without authentification" do
    it "should redirect to authentification page" do
      pending
    end
  end

  context "after authorization" do
    before(:each) do
      login_as(:user)
      FactoryGirl.create(:task, :user => @current_user)
    end

    it "should have priority up/down buttons" do
      visit tasks_path
      page.should have_link('up')
      page.should have_link('down')
    end
  end
end