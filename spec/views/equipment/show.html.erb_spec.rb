require 'spec_helper'

describe "equipment/show" do
  before(:each) do
    @equipment = assign(:equipment, stub_model(Equipment,
      :jcode => "Jcode",
      :serial => 1,
      :pnumber => "Pnumber"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Jcode/)
    rendered.should match(/1/)
    rendered.should match(/Pnumber/)
  end
end
