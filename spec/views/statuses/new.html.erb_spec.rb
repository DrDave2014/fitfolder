require 'spec_helper'

describe "statuses/new" do
  before(:each) do
    assign(:status, stub_model(Status,
      :content => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => statuses_path, :method => "post" do
      assert_select "input#status_content", :name => "status[content]"
      assert_select "input#status_user_id", :name => "status[user_id]"
    end
  end
end
