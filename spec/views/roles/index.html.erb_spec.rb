require 'spec_helper'

describe "roles/index" do
  before(:each) do
    assign(:roles, [
      stub_model(Role, { :created_at => Time.now() }),
      stub_model(Role, { :created_at => Time.now()})
    ])
  end

  it "renders a list of roles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
