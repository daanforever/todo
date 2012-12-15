require 'spec_helper'

describe UsersController do

  context "without login" do
    it "should redirect to sign in page" do
      get 'index'
      response.should redirect_to(new_user_session_path)
    end
  end # context

  context "after login" do

    login_user

    describe "GET 'index'" do
      it "returns http success" do
        get 'index'
        response.should be_success
      end
    end

    describe "GET 'show'" do
      it "returns http success" do
        user = User.last || FactoryGirl.create(:user)
        get 'show', { :id => user.to_param }
        response.should be_success
      end
    end
  end # context

end
