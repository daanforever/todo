 require 'spec_helper'

describe "Tasks" do
  describe "GET /tasks" do
    it "redirect to new_user_session_path" do
      get tasks_path
      response.should redirect_to(new_user_session_path)
    end
  end
end
