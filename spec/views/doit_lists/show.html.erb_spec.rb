require 'spec_helper'

describe "doit_lists/show" do
  before(:each) do
    @doit_list = assign(:doit_list, stub_model(DoitList,
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
