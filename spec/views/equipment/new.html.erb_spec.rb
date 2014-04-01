require 'spec_helper'

describe "equipment/new" do
  before(:each) do
    assign(:equipment, stub_model(Equipment,
      :jcode => "MyString",
      :serial => 1,
      :pnumber => "MyString"
    ).as_new_record)
  end

  it "renders new equipment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", equipment_index_path, "post" do
      assert_select "input#equipment_jcode[name=?]", "equipment[jcode]"
      assert_select "input#equipment_serial[name=?]", "equipment[serial]"
      assert_select "input#equipment_pnumber[name=?]", "equipment[pnumber]"
    end
  end
end
