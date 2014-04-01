require 'spec_helper'

describe "reports/edit" do
  before(:each) do
    @report = assign(:report, stub_model(Report,
      :equipment_id => 1,
      :subject => "MyString",
      :rname => "MyString",
      :location => "MyString",
      :cname => "MyString",
      :descript => "MyText",
      :status => "MyString"
    ))
  end

  it "renders the edit report form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", report_path(@report), "post" do
      assert_select "input#report_equipment_id[name=?]", "report[equipment_id]"
      assert_select "input#report_subject[name=?]", "report[subject]"
      assert_select "input#report_rname[name=?]", "report[rname]"
      assert_select "input#report_location[name=?]", "report[location]"
      assert_select "input#report_cname[name=?]", "report[cname]"
      assert_select "textarea#report_descript[name=?]", "report[descript]"
      assert_select "input#report_status[name=?]", "report[status]"
    end
  end
end
