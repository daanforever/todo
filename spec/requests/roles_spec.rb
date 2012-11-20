require 'spec_helper'

describe "Roles" do
  describe "GET /roles" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get roles_path
      response.should redirect_to(new_user_session_path)
    end
  end
end
