require 'spec_helper'

describe "reports/show" do
  before(:each) do
    @report = assign(:report, stub_model(Report,
      :equipment_id => 1,
      :subject => "Subject",
      :rname => "Rname",
      :location => "Location",
      :cname => "Cname",
      :descript => "MyText",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Subject/)
    rendered.should match(/Rname/)
    rendered.should match(/Location/)
    rendered.should match(/Cname/)
    rendered.should match(/MyText/)
    rendered.should match(/Status/)
  end
end
