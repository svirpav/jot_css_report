require 'spec_helper'


describe "Static Pages" do

	subject {page}
		describe "Home Page" do
			before {visit root_path}
			it { should have_content('Home')}
			it { should have_content('Equipments')}
			it { should have_content('Reports')}
			it { should have_content('Sign in')}
			it { should have_content('Help')}
			it { should have_content('Jot News')}
			it { should have_title('Home')}
		end
end
