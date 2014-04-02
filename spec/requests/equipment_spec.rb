require 'spec_helper'

describe "Equipment" do

	describe "New Equipment Page" do
		it "Should have All forms"do
		 visit '/equipment/new'
		 expect(page).to have_content('J-Code')
		 expect(page).to have_content('Serial Number')
		end
	end

end
