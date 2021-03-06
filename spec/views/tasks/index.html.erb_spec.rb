require 'spec_helper'

describe "tasks/index" do
  before(:each) do
    assign(:tasks, [
      stub_model(Task,
        :text => "Message",
        :created_at => Time.now()
      ),
      stub_model(Task,
        :text => "Message",
        :created_at => Time.now()
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end

end
