require 'spec_helper'


describe "Static Pages"

	
	describe "Home Page" do
		it "Should have content 'Test'" do
			visit '/static_pages/home'
			expect(page).to have_content('Home Page')
		end

		it "Should have title 'Jot Serice Report' " do
			visit '/static_pages/home'
			expect(page).to have_title("Jot")
		end
	end


	describe "Help Page" do
		it "Should have content 'Test'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help Page')
		end

		it "Should have title 'Jot Report '" do
			visit '/static_pages/help'
			expect(page).to have_title("Jot Report")
	end

end
