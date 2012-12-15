require 'spec_helper'

describe "Tasks" do
  context "without authentification" do
    it "should redirect to authentification page" do
      visit tasks_path
      page.should have_text(I18n.t('devise.failure.unauthenticated'))
    end
  end

  context "after authorization" do
    before(:each) do
      login_as(:user)
      FactoryGirl.create(:task, :user => @current_user)
    end

    it "should have buttons" do
      visit tasks_path
      page.should have_selector('a.icon-arrow-up')
      page.should have_selector('a.icon-arrow-down')
      page.should have_selector('a.icon-edit')
      page.should have_selector('a.icon-remove')
    end
  end
end