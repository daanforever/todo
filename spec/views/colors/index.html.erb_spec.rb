require 'spec_helper'

describe "colors/index" do
  before(:each) do
    assign(:colors, [
      stub_model(Color,
        :text => "Text"
      ),
      stub_model(Color,
        :text => "Text"
      )
    ])
  end

  it "renders a list of colors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
