require 'spec_helper'


describe "Static Pages"do
	
	describe "Home Page" do
		it "Should have content 'Test'" do
			visit '/static_pages/home'
			expect(page).to have_content('Home Page')
		end
	end


	describe "Help Page" do
		it "Should have content 'Test'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help Page')
		end
	end

end
