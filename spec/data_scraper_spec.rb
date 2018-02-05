
require 'spec_helper'

describe 'data_scraper class' do
  url = 'http://www.newsnow.co.uk/h/World+News/Africa/Egypt'
  describe "#get_data" do
    it "it is a class metiod of an array" do
      data = Scraper.get_data(url)
    end
  end
  describe "#get_and_sort_data" do
    it "#get_and_sort_data is a class metiod" do
      sorted_data = Scraper.get_and_sort_data(url)
    end
  end
end
