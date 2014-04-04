require 'spec_helper'

    describe "Report Page" do
    	describe "Index" do
    		it "Should have 'Eqiuipment list'" do
    			visit '/reports'
    			expect(page).to have_content("Equipment list")
    		end

    		it "Should have 'Create New Equipment'" do
    			visit '/reports'
    			expect(page).to have_content('Create New Equipment')
    			
    		end

    		it "Should have 'New Report'" do
    			visit'/reports'
    			expect(page).to have_content('New Report')
    		end
    	end


end
