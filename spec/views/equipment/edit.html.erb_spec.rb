require 'spec_helper'

describe "equipment/edit" do
  before(:each) do
    @equipment = assign(:equipment, stub_model(Equipment,
      :jcode => "MyString",
      :serial => 1,
      :pnumber => "MyString"
    ))
  end

  it "renders the edit equipment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", equipment_path(@equipment), "post" do
      assert_select "input#equipment_jcode[name=?]", "equipment[jcode]"
      assert_select "input#equipment_serial[name=?]", "equipment[serial]"
      assert_select "input#equipment_pnumber[name=?]", "equipment[pnumber]"
    end
  end
end
