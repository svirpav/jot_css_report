require 'spec_helper'

describe "reports/index" do
  before(:each) do
    assign(:reports, [
      stub_model(Report,
        :equipment_id => 1,
        :subject => "Subject",
        :rname => "Rname",
        :location => "Location",
        :cname => "Cname",
        :descript => "MyText",
        :status => "Status"
      ),
      stub_model(Report,
        :equipment_id => 1,
        :subject => "Subject",
        :rname => "Rname",
        :location => "Location",
        :cname => "Cname",
        :descript => "MyText",
        :status => "Status"
      )
    ])
  end

  it "renders a list of reports" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Rname".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Cname".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
