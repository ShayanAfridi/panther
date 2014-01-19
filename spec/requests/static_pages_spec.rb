require 'spec_helper'

describe "Static pages" do

	describe "Home page" do

		it "should have the h1 'Panther'" do
			visit '/static_pages/home'
			expect(page).to have_selector('h1', :text => 'Panther')
		end

		it "should have the right title" do
			visit '/static_pages/home'
			expect(page).to have_title('Panther | Home')
		end
	end

	describe "Help page" do

		it "should have the h1 'Help'" do

			visit '/static_pages/help'
			expect(page).to have_selector('h1', :text => 'Help')

		end

		it "should have the right title" do
			visit '/static_pages/help'
			expect(page).to have_title('Panther | Help')
		end
	end

	describe "About page" do

		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_selector('h1', :text => 'About Us')
	end

	it "should have the right title" do
			visit '/static_pages/about'
			expect(page).to have_title('Panther | About Us')
	end
  end

  describe "Contact page" do

		it "should have the h1 'Contact'" do
			visit '/static_pages/contact'
			expect(page).to have_selector('h1', :text => 'Contact')
		end

		it "should have the right title" do
			visit '/static_pages/contact'
			expect(page).to have_title('Panther | Contact')
		end
	end

end
