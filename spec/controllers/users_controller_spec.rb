require 'spec_helper'

describe UsersController do

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

end
