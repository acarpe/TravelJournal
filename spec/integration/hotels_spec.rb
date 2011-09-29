require 'spec_helper'

describe "hotels" do
  describe "listing hotels" do
    before do
      @hotel1 = Hotel.create(name: "The Lakes")
      @hotel2 = Hotel.create(name: "The St. Clair")
      visit "/hotels"
    end

    it "should list as many hotels as we have" do
      page.all('.hotel').should have(2).hotels
    end

    it "should list all hotel names (xpath)" do
      page.should have_xpath("//td[.='#{@hotel1.description}']")
      page.should have_xpath("//td[.='#{@hotel2.description}']")
    end

    it "should list all hotel names (css)" do
      hotel_names = page.all('.hotel td').map(&:text)
      hotel_names.should include(@hotel1.name)
      hotel_names.should include(@hotel2.name)
    end

    describe "when clicking on a link" do
      before do
        click_link(@hotel1.name)
      end

      it "should show detailed information for our hotel" do
        page.should have_xpath("//h1[.='#{@hotel1.name}']")
      end
    end

  end
end
