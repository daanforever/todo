require 'spec_helper'

describe "Tasks" do
  context "without login" do
    describe "GET /tasks" do
      it "should redirect to new_user_session_path" do
        get tasks_path
        response.should redirect_to(new_user_session_path)
      end
    end # describe
  end # context
end # describe
