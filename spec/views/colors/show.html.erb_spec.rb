require 'spec_helper'

describe "colors/show" do
  before(:each) do
    @color = assign(:color, stub_model(Color,
      :text => "Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Text/)
  end
end
