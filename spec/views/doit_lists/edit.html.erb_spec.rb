require 'spec_helper'

describe "doit_lists/edit" do
  before(:each) do
    @doit_list = assign(:doit_list, stub_model(DoitList,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit doit_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", doit_list_path(@doit_list), "post" do
      assert_select "input#doit_list_title[name=?]", "doit_list[title]"
      assert_select "textarea#doit_list_description[name=?]", "doit_list[description]"
    end
  end
end
